//
//  CanonicalTests.swift
//  SwiftFHIR
//
//  Created by Dave Carlson on 5/16/19.
//  Copyright © 2019 Dave Carlson
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import ModelTests
#else
import SwiftFHIR
#endif


/**
Test serialization and deserialization of FHIR canonical datatype.
*/
class CanonicalTests: XCTestCase {
	
	var tests: [String: FHIRJSON]?
	
	override func setUp() {
		super.setUp()
		tests = (try? readJSONFile("CanonicalTypes.json", directory: testResourcesDirectory)) as? [String: FHIRJSON]
	}
	
	func testCanonicalVersion() {
		guard let json1 = tests?["initCanonicalWithVersion"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		// Deserialization
		var context = FHIRInstantiationContext()
		let canonical = createInstance(type: FHIRCanonical.self, for: "canonical", in: json1, context: &context, owner: nil)
		XCTAssertTrue(context.errors.isEmpty)
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-hypertension", canonical?.url?.absoluteString, "Should find `url` for canonical")
		XCTAssertEqual("1.0.5", canonical?.version, "Should correctly split version from canonical URI")
		
		// Serialization
		var json = FHIRJSON()
		var errors = [FHIRValidationError]()
		canonical?.decorate(json: &json, withKey: "canonical", errors: &errors)
		
		XCTAssertTrue(errors.isEmpty)
		XCTAssertNotNil(json["canonical"])
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-hypertension|1.0.5", (json["canonical"] as? String))
	}
	
	func testCanonicalNoVersion() {
		guard let json1 = tests?["initCanonicalWithoutVersion"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		// Deserialization
		var context = FHIRInstantiationContext()
		let canonical = createInstance(type: FHIRCanonical.self, for: "canonical", in: json1, context: &context, owner: nil)
		XCTAssertTrue(context.errors.isEmpty)
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-diabetes", canonical?.url?.absoluteString, "Should find `url` for canonical")
		XCTAssertNil(canonical?.version, "Should have nil version for canonical URI")
		
		// Serialization
		var json = FHIRJSON()
		var errors = [FHIRValidationError]()
		canonical?.decorate(json: &json, withKey: "canonical", errors: &errors)
		
		XCTAssertTrue(errors.isEmpty)
		XCTAssertNotNil(json["canonical"])
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-diabetes", (json["canonical"] as? String))
	}
	
	func testCanonicalFragment() {
		guard let json1 = tests?["initCanonicalWithFragment"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		// Deserialization
		var context = FHIRInstantiationContext()
		let canonical = createInstance(type: FHIRCanonical.self, for: "canonical", in: json1, context: &context, owner: nil)
		XCTAssertTrue(context.errors.isEmpty)
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-diabetes", canonical?.url?.absoluteString, "Should find `url` for canonical")
		XCTAssertEqual("2.0.0", canonical?.version, "Should correctly split version from canonical URI")
		XCTAssertEqual("ref1", canonical?.fragment, "Should correctly split fragment from canonical URI")
		
		// Serialization
		var json = FHIRJSON()
		var errors = [FHIRValidationError]()
		canonical?.decorate(json: &json, withKey: "canonical", errors: &errors)
		
		XCTAssertTrue(errors.isEmpty)
		XCTAssertNotNil(json["canonical"])
		XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-diabetes|2.0.0#ref1", (json["canonical"] as? String))
	}
	
	func testCanonicalResolutionContained() {
		guard let json = tests?["initCanonicalContained"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		do {
			let planDef = try PlanDefinition(json: json)
			XCTAssertEqual("plan-ref-contained", planDef.id)
			
			let actionCanonical0 = planDef.action?[0].definitionCanonical
			XCTAssertEqual("edu-hypertension", actionCanonical0?.fragment)
			let activityDef0 = actionCanonical0?.resolved(ActivityDefinition.self)
			XCTAssertNotNil(activityDef0)
			
			let actionCanonical1 = planDef.action?[1].definitionCanonical
			XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-hypertension", actionCanonical1?.url?.absoluteString)
			XCTAssertEqual("edu-hypertension", actionCanonical1?.fragment)
			let activityDef1 = actionCanonical1?.resolved(ActivityDefinition.self)
			XCTAssertNotNil(activityDef1)
			
		}
		catch {
			XCTAssertTrue(false, "\(error)")
		}
	}
	
	func testCanonicalResolutionBundled() {
		guard let json = tests?["initCanonicalBundled"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		do {
			let bundle = try Bundle(json: json)
			XCTAssertEqual("Bundle", type(of: bundle).resourceType)
			
			// get resources
			let planDef = bundle.entry?[0].resource as! PlanDefinition
			XCTAssertEqual("PlanDefinition", type(of: planDef).resourceType)
			let activityDef = bundle.entry?[1].resource as! ActivityDefinition
			XCTAssertEqual("ActivityDefinition", type(of: activityDef).resourceType)
			
			// Three canonical references in the PlanDefinition
			let actionCanonicalNoVersion = planDef.action?[0].definitionCanonical
			let actionCanonicalMatching = planDef.action?[1].definitionCanonical
			let actionCanonicalNotMatching = planDef.action?[2].definitionCanonical
			
			// No version in canonical will accept any ActivityDefinition
			XCTAssertEqual("http://example.org/fhir/ActivityDefinition/activity-edu-hypertension", actionCanonicalNoVersion?.url?.absoluteString)
			XCTAssertNil(actionCanonicalNoVersion?.version)
			let activityDef0 = actionCanonicalNoVersion?.resolved(ActivityDefinition.self)
			XCTAssertNotNil(activityDef0)
			
			// Matching version
			XCTAssertEqual("1.0.5", actionCanonicalMatching?.version)
			let activityDef1 = actionCanonicalMatching?.resolved(ActivityDefinition.self)
			XCTAssertNotNil(activityDef1)
			
			// Returns nil, version does not match
			XCTAssertNotEqual("1.0.5", actionCanonicalNotMatching?.version)
			let activityDef2 = actionCanonicalNotMatching?.resolved(ActivityDefinition.self)
			XCTAssertNil(activityDef2)
			
		}
		catch {
			XCTAssertTrue(false, "\(error)")
		}
	}
}

