//
//  ValueSetTests.swift
//  ValueSetTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class ValueSetTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ValueSet? {
		let json = readJSONFile(filename)
		let instance = ValueSet(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testValueSet1() {
		let inst = instantiateFrom("valueset-list-example-codes.json")
		XCTAssertNotNil(inst, "Must have instantiated a ValueSet instance")
		
		XCTAssertEqual(inst!.define!.concept![0].code!, "alerts")	
		XCTAssertEqual(inst!.define!.concept![0].definition!, "A list of alerts for the patient")	
		XCTAssertEqual(inst!.define!.concept![0].display!, "Alerts")	
		XCTAssertEqual(inst!.define!.concept![1].code!, "adverserxns")	
		XCTAssertEqual(inst!.define!.concept![1].definition!, "A list of part adverse reactions")	
		XCTAssertEqual(inst!.define!.concept![1].display!, "Adverse Reactions")	
		XCTAssertEqual(inst!.define!.concept![2].code!, "allergies")	
		XCTAssertEqual(inst!.define!.concept![2].definition!, "A list of Allergies for the patient")	
		XCTAssertEqual(inst!.define!.concept![2].display!, "Allergies")	
		XCTAssertEqual(inst!.define!.concept![3].code!, "medications")	
		XCTAssertEqual(inst!.define!.concept![3].definition!, "A list of medication statements for the patient")	
		XCTAssertEqual(inst!.define!.concept![3].display!, "Medication List")	
		XCTAssertEqual(inst!.define!.concept![4].code!, "problems")	
		XCTAssertEqual(inst!.define!.concept![4].definition!, "A list of problems that the patient is known of have (or have had in the past)")	
		XCTAssertEqual(inst!.define!.concept![4].display!, "Problem List")	
		XCTAssertEqual(inst!.define!.concept![5].code!, "worklist")	
		XCTAssertEqual(inst!.define!.concept![5].definition!, "A list of items that constitute a set of work to be performed (typically this code would be specialised for more specific uses, such as a ward round list)")	
		XCTAssertEqual(inst!.define!.concept![5].display!, "Worklist")	
		XCTAssertEqual(inst!.define!.concept![6].code!, "waiting")	
		XCTAssertEqual(inst!.define!.concept![6].definition!, "A list of items waiting for an event (perhaps a surgical patient waiting list)")	
		XCTAssertEqual(inst!.define!.concept![6].display!, "Waiting List")	
		XCTAssertEqual(inst!.define!.concept![7].code!, "protocols")	
		XCTAssertEqual(inst!.define!.concept![7].definition!, "A set of protocols to be followed")	
		XCTAssertEqual(inst!.define!.concept![7].display!, "Protocols")	
		XCTAssertEqual(inst!.define!.concept![8].code!, "plans")	
		XCTAssertEqual(inst!.define!.concept![8].definition!, "A set of care plans that apply in a particular context of care")	
		XCTAssertEqual(inst!.define!.concept![8].display!, "Care Plans")
		XCTAssertEqual(inst!.define!.system!, NSURL(string: "http://hl7.org/fhir/list-example-use-codes"))	
		XCTAssertEqual(inst!.description!, "Example use codes for the List resource - typical kinds of use. TODO: Does LOINC define useful codes?")	
		XCTAssertEqual(inst!.identifier!, "http://hl7.org/fhir/vs/list-example-codes")	
		XCTAssertEqual(inst!.name!, "Example Use Codes for List")	
		XCTAssertEqual(inst!.publisher!, "FHIR Project")	
		XCTAssertEqual(inst!.status!, "draft")	
		XCTAssertEqual(inst!.telecom![0].system!, "url")	
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")	
		XCTAssertEqual(inst!.text!.div!, "<div><h2>Example Use Codes for List</h2><p>Example use codes for the List resource - typical kinds of use. TODO: Does LOINC define useful codes?</p><p>This value set defines its own terms in the system http://hl7.org/fhir/list-example-use-codes</p><table><tr><td><b>Code</b></td><td><b>Display</b></td><td><b>Definition</b></td></tr><tr><td>alerts<a name=\"alerts\"> </a></td><td>Alerts</td><td>A list of alerts for the patient</td></tr><tr><td>adverserxns<a name=\"adverserxns\"> </a></td><td>Adverse Reactions</td><td>A list of part adverse reactions</td></tr><tr><td>allergies<a name=\"allergies\"> </a></td><td>Allergies</td><td>A list of Allergies for the patient</td></tr><tr><td>medications<a name=\"medications\"> </a></td><td>Medication List</td><td>A list of medication statements for the patient</td></tr><tr><td>problems<a name=\"problems\"> </a></td><td>Problem List</td><td>A list of problems that the patient is known of have (or have had in the past)</td></tr><tr><td>worklist<a name=\"worklist\"> </a></td><td>Worklist</td><td>A list of items that constitute a set of work to be performed (typically this code would be specialised for more specific uses, such as a ward round list)</td></tr><tr><td>waiting<a name=\"waiting\"> </a></td><td>Waiting List</td><td>A list of items waiting for an event (perhaps a surgical patient waiting list)</td></tr><tr><td>protocols<a name=\"protocols\"> </a></td><td>Protocols</td><td>A set of protocols to be followed</td></tr><tr><td>plans<a name=\"plans\"> </a></td><td>Care Plans</td><td>A set of care plans that apply in a particular context of care</td></tr></table></div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
