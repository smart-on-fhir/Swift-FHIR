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
		XCTAssertEqual("application/json+fhir", handler.headers[.Accept])
	}
	
	func testJSONPUTRequest() {
		let handler = FHIRServerJSONRequestHandler(.PUT)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.Accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.ContentType])
		
		handler.headers[.ContentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.ContentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.ContentType])
		
		handler.add(headers: FHIRRequestHeaders([.IfNoneMatch: "abcd4567", .ContentType: "text/plain"]))
		XCTAssertEqual("text/plain", handler.headers[.ContentType])
		XCTAssertEqual("abcd4567", handler.headers[.IfNoneMatch])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.ContentType])
		XCTAssertEqual("abcd4567", handler.headers[.IfNoneMatch])
	}
	
	func testJSONPOSTRequest() {
		let handler = FHIRServerJSONRequestHandler(.POST)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.Accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.ContentType])
		
		handler.headers[.ContentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.ContentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.ContentType])
	}
}

