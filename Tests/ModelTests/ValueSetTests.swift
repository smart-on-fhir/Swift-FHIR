//
//  ValueSetTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ValueSetTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ValueSet {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ValueSet {
		let instance = SwiftFHIR.ValueSet(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testValueSet1() {
		do {
			let instance = try runValueSet1()
			try runValueSet1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-expansion.json")
		
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, "=")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "14647-2")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Cholesterol [Moles/volume] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[0].version, "2.50")
		XCTAssertTrue(inst.expansion?.contains?[1].abstract ?? false)
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].code, "2093-3")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].display, "Cholesterol [Mass/volume] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].code, "48620-9")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].display, "Cholesterol [Mass/volume] in Serum or Plasma ultracentrifugate")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].code, "9342-7")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].display, "Cholesterol [Percentile]")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[2].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "Cholesterol codes")
		XCTAssertTrue(inst.expansion?.contains?[2].abstract ?? false)
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].code, "2096-6")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].display, "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].code, "35200-5")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].display, "Cholesterol/Triglyceride [Mass Ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].code, "48089-7")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].display, "Cholesterol/Apolipoprotein B [Molar ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].code, "55838-7")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].display, "Cholesterol/Phospholipid [Molar ratio] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[3].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Cholesterol Ratios")
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-expansionSource")
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].valueUri?.absoluteString, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:42316ff8-2714-4680-9980-f37a6d1a71bc")
		XCTAssertEqual(inst.expansion?.offset, 0)
		XCTAssertEqual(inst.expansion?.parameter?[0].name, "version")
		XCTAssertEqual(inst.expansion?.parameter?[0].valueString, "2.50")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-06-22T13:56:07Z")
		XCTAssertEqual(inst.expansion?.total, 8)
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example-expansion")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-expansion")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet2() {
		do {
			let instance = try runValueSet2()
			try runValueSet2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-inline.json")
		
		XCTAssertTrue(inst.codeSystem?.caseSensitive ?? false)
		XCTAssertEqual(inst.codeSystem?.concept?[0].code, "chol-mmol")
		XCTAssertEqual(inst.codeSystem?.concept?[0].definition, "Serum Cholesterol, in mmol/L")
		XCTAssertEqual(inst.codeSystem?.concept?[0].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.codeSystem?.concept?[0].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.codeSystem?.concept?[0].designation?[0].value, "From ACME POC Testing")
		XCTAssertEqual(inst.codeSystem?.concept?[0].display, "SChol (mmol/L)")
		XCTAssertEqual(inst.codeSystem?.concept?[1].code, "chol-mass")
		XCTAssertEqual(inst.codeSystem?.concept?[1].definition, "Serum Cholesterol, in mg/L")
		XCTAssertEqual(inst.codeSystem?.concept?[1].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.codeSystem?.concept?[1].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.codeSystem?.concept?[1].designation?[0].value, "From Paragon Labs")
		XCTAssertEqual(inst.codeSystem?.concept?[1].display, "SChol (mg/L)")
		XCTAssertEqual(inst.codeSystem?.concept?[2].code, "chol")
		XCTAssertEqual(inst.codeSystem?.concept?[2].definition, "Serum Cholesterol")
		XCTAssertEqual(inst.codeSystem?.concept?[2].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.codeSystem?.concept?[2].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.codeSystem?.concept?[2].designation?[0].value, "Obdurate Labs uses this with both kinds of units...")
		XCTAssertEqual(inst.codeSystem?.concept?[2].display, "SChol")
		XCTAssertEqual(inst.codeSystem?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/cholesterol")
		XCTAssertEqual(inst.codeSystem?.version, "4.2.3")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the ACME codes for serum/plasma cholesterol from v2.36.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example-inline")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?.value, "loinc-cholesterol-inl")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "ACME Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-inline")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet3() {
		do {
			let instance = try runValueSet3()
			try runValueSet3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-intensional.json")
		
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].code, "5932-9")
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].display, "Cholesterol [Presence] in Blood by Test strip")
		XCTAssertEqual(inst.compose?.exclude?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, "=")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINCÂ® is copyright Â© 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example-intensional")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?.value, "loinc-cholesterol-ext")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-intensional")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet4() {
		do {
			let instance = try runValueSet4()
			try runValueSet4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-yesnodontknow.json")
		
		XCTAssertEqual(inst.compose?.import_fhir?[0].absoluteString, "http://hl7.org/fhir/ValueSet/v2-0136")
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].code, "asked")
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].display, "Don't know")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.description_fhir, "For Capturing simple yes-no-don't know answers")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "Y")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Yes")
		XCTAssertEqual(inst.expansion?.contains?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "N")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "No")
		XCTAssertEqual(inst.expansion?.contains?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.expansion?.contains?[2].code, "asked")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Don't know")
		XCTAssertEqual(inst.expansion?.contains?[2].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:bf99fe50-2c2b-41ad-bd63-bee6919810b4")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-07-14T10:00:00Z")
		XCTAssertEqual(inst.id, "yesnodontknow")
		XCTAssertEqual(inst.name, "Yes/No/Don't Know")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		
		return inst
	}
	
	func testValueSet5() {
		do {
			let instance = try runValueSet5()
			try runValueSet5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example.json")
		
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].code, "14647-2")
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].display, "Cholesterol [Moles/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[1].code, "2093-3")
		XCTAssertEqual(inst.compose?.include?[0].concept?[1].display, "Cholesterol [Mass/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[2].code, "35200-5")
		XCTAssertEqual(inst.compose?.include?[0].concept?[2].display, "Cholesterol [Mass Or Moles/Volume]")
		XCTAssertEqual(inst.compose?.include?[0].concept?[3].code, "9342-7")
		XCTAssertEqual(inst.compose?.include?[0].concept?[3].display, "Cholesterol [Percentile]")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.compose?.include?[0].version, "2.36")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINCÂ® is copyright Â© 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example-extensional")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?.value, "loinc-cholesterol-int")
		XCTAssertEqual(inst.lockedDate?.description, "2012-06-13")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet6() {
		do {
			let instance = try runValueSet6()
			try runValueSet6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw")
		}
	}
	
	@discardableResult
	func runValueSet6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-list-example-codes.json")
		
		XCTAssertTrue(inst.codeSystem?.caseSensitive ?? false)
		XCTAssertEqual(inst.codeSystem?.concept?[0].code, "alerts")
		XCTAssertEqual(inst.codeSystem?.concept?[0].definition, "A list of alerts for the patient.")
		XCTAssertEqual(inst.codeSystem?.concept?[0].display, "Alerts")
		XCTAssertEqual(inst.codeSystem?.concept?[1].code, "adverserxns")
		XCTAssertEqual(inst.codeSystem?.concept?[1].definition, "A list of part adverse reactions.")
		XCTAssertEqual(inst.codeSystem?.concept?[1].display, "Adverse Reactions")
		XCTAssertEqual(inst.codeSystem?.concept?[2].code, "allergies")
		XCTAssertEqual(inst.codeSystem?.concept?[2].definition, "A list of Allergies for the patient.")
		XCTAssertEqual(inst.codeSystem?.concept?[2].display, "Allergies")
		XCTAssertEqual(inst.codeSystem?.concept?[3].code, "medications")
		XCTAssertEqual(inst.codeSystem?.concept?[3].definition, "A list of medication statements for the patient.")
		XCTAssertEqual(inst.codeSystem?.concept?[3].display, "Medication List")
		XCTAssertEqual(inst.codeSystem?.concept?[4].code, "problems")
		XCTAssertEqual(inst.codeSystem?.concept?[4].definition, "A list of problems that the patient is known of have (or have had in the past).")
		XCTAssertEqual(inst.codeSystem?.concept?[4].display, "Problem List")
		XCTAssertEqual(inst.codeSystem?.concept?[5].code, "worklist")
		XCTAssertEqual(inst.codeSystem?.concept?[5].definition, "A list of items that constitute a set of work to be performed (typically this code would be specialized for more specific uses, such as a ward round list).")
		XCTAssertEqual(inst.codeSystem?.concept?[5].display, "Worklist")
		XCTAssertEqual(inst.codeSystem?.concept?[6].code, "waiting")
		XCTAssertEqual(inst.codeSystem?.concept?[6].definition, "A list of items waiting for an event (perhaps a surgical patient waiting list).")
		XCTAssertEqual(inst.codeSystem?.concept?[6].display, "Waiting List")
		XCTAssertEqual(inst.codeSystem?.concept?[7].code, "protocols")
		XCTAssertEqual(inst.codeSystem?.concept?[7].definition, "A set of protocols to be followed.")
		XCTAssertEqual(inst.codeSystem?.concept?[7].display, "Protocols")
		XCTAssertEqual(inst.codeSystem?.concept?[8].code, "plans")
		XCTAssertEqual(inst.codeSystem?.concept?[8].definition, "A set of care plans that apply in a particular context of care.")
		XCTAssertEqual(inst.codeSystem?.concept?[8].display, "Care Plans")
		XCTAssertEqual(inst.codeSystem?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-oid")
		XCTAssertEqual(inst.codeSystem?.extension_fhir?[0].valueUri?.absoluteString, "urn:oid:2.16.840.1.113883.4.642.1.173")
		XCTAssertEqual(inst.codeSystem?.system?.absoluteString, "http://hl7.org/fhir/list-example-use-codes")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2015-10-24T07:41:03+11:00")
		XCTAssertEqual(inst.description_fhir, "Example use codes for the List resource - typical kinds of use.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-oid")
		XCTAssertEqual(inst.extension_fhir?[0].valueUri?.absoluteString, "urn:oid:2.16.840.1.113883.4.642.2.173")
		XCTAssertEqual(inst.id, "list-example-codes")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2015-10-24T07:41:03.495+11:00")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "Example Use Codes for List")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/list-example-codes")
		XCTAssertEqual(inst.version, "1.0.2")
		
		return inst
	}
}
