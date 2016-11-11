//
//  ResourceTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 27/01/16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


/**
Test resource containment and `create` calls.
*/
class ResourceTests: XCTestCase {
	
	func testContaining() {
		let order = Order(json: ["id": "order", "date": "2016-01-27"])
		let patient = Patient(json: ["id": "subject"])
		do {
			order.subject = try order.contain(resource: patient)
		}
		catch let error {
			XCTAssertTrue(false, "Should not raise exception \(error) when containing perfectly fine patient into order")
		}
	}
	
	func testContainingNoId() {
		let order = Order(json: ["id": "order", "date": "2016-01-27"])
		let patient = Patient(json: ["active": true])
		do {
			order.subject = try order.contain(resource: patient)
			XCTAssertTrue(false, "Should have raised exception when attempting to contain resource without id")
		}
		catch {
		}
	}
	
	func testContainingItself() {
		let order = Order(json: ["id": "order"])
		do {
			order.subject = try order.contain(resource: order)
			XCTAssertTrue(false, "Should have raised exception when attempting to contain itself")
		}
		catch {
		}
	}
	
	
	// MARK: - Testing `create`
	
	func testCreate() {
		let base = URL(string: "https://api.io")!
		let server = LocalPatientServer(baseURL: base)
		
		// normal `create`
		let patient = Patient(json: ["gender": "female"])
		patient.create(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNil(patient.name)								// server adds POST on POST but we don't receive body data
			XCTAssertEqual("1337", patient.meta?.versionId)
			XCTAssertEqual(2016, patient.meta?.lastUpdated?.date.year)
		}
		
		// cannot do another `create` since resource has an id
		patient.create(server) { error in
			if let error = error {
				switch error {
				case FHIRError.resourceAlreadyHasId:
					break
				default:
					XCTAssertTrue(false, "Expecting `FHIRError.resourceAlreadyHasId` but got \(error)")
				}
			}
			else {
				XCTAssertTrue(false, "Expecting `FHIRError.resourceAlreadyHasId` but got nothing")
			}
		}
		
		// reset id, do another `create`
		let id = patient.id
		patient.id = nil
		patient.create(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNotEqual(id, patient.id)
			XCTAssertNil(patient.name)								// server adds POST on POST but we don't receive body data
			XCTAssertEqual("1338", patient.meta?.versionId)
			XCTAssertEqual(2016, patient.meta?.lastUpdated?.date.year)
		}
		
		// configure server to do the opposite of the "Prefer" header, reset and see that the method does not care about the returned data
		server.negatePreferHeader = true
		patient.id = nil
		patient.name = nil
		patient.create(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNil(patient.name)								// server adds POST on POST but we should not care
			XCTAssertEqual("1339", patient.meta?.versionId)
			XCTAssertEqual(2016, patient.meta?.lastUpdated?.date.year)
		}
	}
	
	func testCreateAndReturn() {
		let base = URL(string: "https://api.io")!
		let server = LocalPatientServer(baseURL: base)
		
		// normal `createAndReturn`
		let patient = Patient(json: ["gender": "female"])
		patient.createAndReturn(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNotNil(patient.name)
			XCTAssertEqual("POST", patient.name?[0].family?[0])		// server adds this on POST and receiver must update itself
			XCTAssertEqual("1337", patient.meta?.versionId)
			XCTAssertEqual(2016, patient.meta?.lastUpdated?.date.year)
		}
		
		// cannot do another `createAndReturn` since resource has an id
		patient.createAndReturn(server) { error in
			if let error = error {
				switch error {
				case FHIRError.resourceAlreadyHasId:
					break
				default:
					XCTAssertTrue(false, "Expecting `FHIRError.resourceAlreadyHasId` but got \(error)")
				}
			}
			else {
				XCTAssertTrue(false, "Expecting `FHIRError.resourceAlreadyHasId` but got nothing")
			}
		}
		
		// reset id, do another `createAndReturn`
		let id = patient.id
		patient.id = nil
		patient.name = nil
		patient.createAndReturn(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNotEqual(id, patient.id)
			XCTAssertNotNil(patient.name)
			XCTAssertEqual("POST", patient.name?[0].family?[0])		// server adds this on POST and receiver must update itself
			XCTAssertEqual("1338", patient.meta?.versionId)
			XCTAssertEqual(2016, patient.meta?.lastUpdated?.date.year)
		}
		
		// configure server to do the opposite of the "Prefer" header, reset and see that the method accounts for the missing return
		server.negatePreferHeader = true
		patient.id = nil
		patient.name = nil
		patient.createAndReturn(server) { error in
			XCTAssertNil(error)
			XCTAssertNotNil(patient.id)
			XCTAssertNotNil(patient.name)
			XCTAssertEqual("GET", patient.name?[0].family?[0])		// server adds this on GET after POST and receiver must update itself
			XCTAssertEqual("1339", patient.meta?.versionId)
			XCTAssertEqual(2015, patient.meta?.lastUpdated?.date.year)
		}
	}
}


/**
Stupid simple mock server that accepts POST and GET for Patient resources. Some tricks:

- sets a UUID as the resource's id on POST
- increases version on POST (starting at 1337 if there is none)
- sets the HTTP method as the first family name on the resources it returns
- sets the ETag header on GET
- sets the Last-Modified headers to "Tue, 3 May 2016 14:45:31 GMT" on POST and "Friday, 06-May-15 17:49:37 GMT" on GET
*/
class LocalPatientServer: FHIROpenServer {
	
	var negatePreferHeader = false
	
	var lastPostedResource: Resource?
	
	override func performPreparedRequest<R : FHIRServerRequestHandler>(_ request: URLRequest, withSession session: URLSession, handler: R, callback: @escaping ((_ response: FHIRServerResponse) -> Void)) {
		guard let path = request.url?.path, "/Patient" == path || path.hasPrefix("/Patient/") else {
			let res = handler.notSent("Only supports Patient resources, trying to access «\(request.url?.path ?? "nil")»")
			callback(res)
			return
		}
		
		switch request.httpMethod ?? "GET" {
		
		case "POST":
			let version = Int(handler.resource?.meta?.versionId ?? "1336")!
			let location = "\(self.baseURL.absoluteString)Patient/\(UUID().uuidString)/_history/\(version+1)"
			let headers = ["Location": location, "Last-mODified": "Tue, 3 May 2016 14:45:31 GMT"]
			let http = HTTPURLResponse(url: request.url!, statusCode: 201, httpVersion: "1.1", headerFields: headers)
			
			let prefer = request.allHTTPHeaderFields?["Prefer"] ?? "minimal"
			if prefer.hasSuffix("representation") != negatePreferHeader {
				let pat = Patient(json: handler.resource?.asJSON())			// to not manipulate handler.resource
				pat.meta?.versionId = "\(version+1)"
				pat.name = [HumanName(json: ["family": ["POST"]])]
				
				let req = FHIRServerJSONRequestHandler(.POST)
				req.resource = pat
				try! req.prepareData()
				
				callback(req.response(with: http, data: req.data))
			}
			else {
				callback(handler.response(with: http))
			}
			lastPostedResource = handler.resource
		
		case "GET":
			if let last = lastPostedResource as? Patient {
				let version = last.meta?.versionId ?? "1339"
				let headers = ["ETag": "W/\"\(version)\"", "Last-Modified": "Friday, 06-May-15 17:49:37 GMT"]
				let http = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: "1.1", headerFields: headers)
				
				last.name = [HumanName(json: ["family": ["GET"]])]
				last.meta = nil
				handler.resource = last
				try! handler.prepareData()
				
				callback(handler.response(with: http, data: handler.data))
			}
			else {
				callback(handler.notSent("\(request.httpMethod) without preceding “POST” is not supported"))
			}
		
		default:
			callback(handler.notSent("\(request.httpMethod) is not yet supported"))
		}
	}
}

