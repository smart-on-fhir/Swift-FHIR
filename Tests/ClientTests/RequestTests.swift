//
//  RequestTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 29/04/16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


/**
Test request generation.
*/
class RequestTests: XCTestCase {
	
	func testJSONGETRequest() {
		let handler = FHIRServerJSONRequestHandler(.GET)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
	}
	
	func testJSONPUTRequest() {
		let handler = FHIRServerJSONRequestHandler(.PUT)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.headers[.contentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.contentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.add(headers: FHIRRequestHeaders([.ifNoneMatch: "abcd4567", .contentType: "text/plain"]))
		XCTAssertEqual("text/plain", handler.headers[.contentType])
		XCTAssertEqual("abcd4567", handler.headers[.ifNoneMatch])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		XCTAssertEqual("abcd4567", handler.headers[.ifNoneMatch])
	}
	
	func testJSONPOSTRequest() {
		let handler = FHIRServerJSONRequestHandler(.POST)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.headers[.contentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.contentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
	}
}

