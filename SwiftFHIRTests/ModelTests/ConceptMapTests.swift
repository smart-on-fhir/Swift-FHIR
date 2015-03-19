//
//  ConceptMapTests.swift
//  ConceptMapTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ConceptMapTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ConceptMap {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ConceptMap {
		let instance = ConceptMap(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testConceptMap1() {
		let instance = testConceptMap1_impl()
		testConceptMap1_impl(json: instance.asJSON())
	}
	
	func testConceptMap1_impl(json: JSONDictionary? = nil) -> ConceptMap {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "conceptmap-example-specimen-type.json")
		
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contact![1].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![1].telecom![0].value!, "http://www.phconnect.org/group/laboratorymessagingcommunityofpractice/forum/attachment/download?id=3649725%3AUploadedFile%3A145786")
		XCTAssertEqual(inst.date!.description, "2013-07-25")
		XCTAssertEqual(inst.element![0].code!, "ACNE")
		XCTAssertEqual(inst.element![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![0].map![0].code!, "309068002")
		XCTAssertEqual(inst.element![0].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![0].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![1].code!, "ACNFLD")
		XCTAssertEqual(inst.element![1].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![1].map![0].code!, "119323008")
		XCTAssertEqual(inst.element![1].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![1].map![0].comments!, "HL7 term is a historical term. mapped to Pus")
		XCTAssertEqual(inst.element![1].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![2].code!, "AIRS")
		XCTAssertEqual(inst.element![2].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![2].map![0].code!, "446302006")
		XCTAssertEqual(inst.element![2].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![2].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![3].code!, "ALL")
		XCTAssertEqual(inst.element![3].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![3].map![0].code!, "119376003")
		XCTAssertEqual(inst.element![3].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![3].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![4].code!, "AMP")
		XCTAssertEqual(inst.element![4].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![4].map![0].code!, "408654003")
		XCTAssertEqual(inst.element![4].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![4].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![5].code!, "ANGI")
		XCTAssertEqual(inst.element![5].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![5].map![0].code!, "119312009")
		XCTAssertEqual(inst.element![5].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![5].map![0].comments!, "TBD in detail")
		XCTAssertEqual(inst.element![5].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![6].code!, "ARTC")
		XCTAssertEqual(inst.element![6].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![6].map![0].code!, "119312009")
		XCTAssertEqual(inst.element![6].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![6].map![0].comments!, "TBD in detail")
		XCTAssertEqual(inst.element![6].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![7].code!, "ASERU")
		XCTAssertEqual(inst.element![7].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![7].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![7].map![0].comments!, "pending")
		XCTAssertEqual(inst.element![7].map![0].equivalence!, "unmatched")
		XCTAssertEqual(inst.element![8].code!, "ASP")
		XCTAssertEqual(inst.element![8].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![8].map![0].code!, "119295008")
		XCTAssertEqual(inst.element![8].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![8].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![9].code!, "ATTE")
		XCTAssertEqual(inst.element![9].codeSystem!.absoluteString!, "http://hl7.org/fhir/v2/0487")
		XCTAssertEqual(inst.element![9].map![0].codeSystem!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![9].map![0].comments!, "TBD")
		XCTAssertEqual(inst.element![9].map![0].equivalence!, "unmatched")
		XCTAssertFalse(inst.experimental!)
		XCTAssertEqual(inst.id!, "102")
		XCTAssertEqual(inst.name!, "Specimen mapping from v2 table 0487 to SNOMED CT")
		XCTAssertEqual(inst.publisher!, "FHIR project team (original source: LabMCoP)")
		XCTAssertEqual(inst.sourceReference!.reference!, "http://hl7.org/fhir/v2/vs/0487")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.targetReference!.reference!, "http://snomed.info/id")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/conceptmap-example-specimen-type.html")
		XCTAssertEqual(inst.version!, "20130725")
		
		return inst
	}
	
	func testConceptMap2() {
		let instance = testConceptMap2_impl()
		testConceptMap2_impl(json: instance.asJSON())
	}
	
	func testConceptMap2_impl(json: JSONDictionary? = nil) -> ConceptMap {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "conceptmap-example.json")
		
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date!.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir!, "A mapping between the FHIR and V3 AddressUse Code systems")
		XCTAssertEqual(inst.element![0].code!, "home")
		XCTAssertEqual(inst.element![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element![0].map![0].code!, "H")
		XCTAssertEqual(inst.element![0].map![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element![0].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![1].code!, "home")
		XCTAssertEqual(inst.element![1].codeSystem!.absoluteString!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element![1].map![0].code!, "H")
		XCTAssertEqual(inst.element![1].map![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element![1].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![2].code!, "work")
		XCTAssertEqual(inst.element![2].codeSystem!.absoluteString!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element![2].map![0].code!, "WP")
		XCTAssertEqual(inst.element![2].map![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element![2].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![3].code!, "temp")
		XCTAssertEqual(inst.element![3].codeSystem!.absoluteString!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element![3].map![0].code!, "TMP")
		XCTAssertEqual(inst.element![3].map![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element![3].map![0].equivalence!, "equivalent")
		XCTAssertEqual(inst.element![4].code!, "old")
		XCTAssertEqual(inst.element![4].codeSystem!.absoluteString!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.element![4].map![0].code!, "BAD")
		XCTAssertEqual(inst.element![4].map![0].codeSystem!.absoluteString!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.element![4].map![0].comments!, "In the V3 AD, old is handled by the usablePeriod element, but you have to provide a time, there's no simple equivalent of flagging an address as old")
		XCTAssertEqual(inst.element![4].map![0].equivalence!, "disjoint")
		XCTAssertTrue(inst.experimental!)
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.name!, "FHIR/v3 Address Use Mapping")
		XCTAssertEqual(inst.publisher!, "FHIR project team (example)")
		XCTAssertEqual(inst.sourceReference!.reference!, "http://hl7.org/fhir/address-use")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.targetReference!.reference!, "http://hl7.org/fhir/v3/AddressUse")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.url!.absoluteString!, "256a5231-a2bb-49bd-9fea-f349d428b70d")
		XCTAssertEqual(inst.version!, "20120613")
		
		return inst
	}
}
