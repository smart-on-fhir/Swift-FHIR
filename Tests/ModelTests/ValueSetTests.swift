//
//  ValueSetTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRValueSet = Models.ValueSet
#else
import SwiftFHIR
typealias SwiftFHIRValueSet = SwiftFHIR.ValueSet
#endif


class ValueSetTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRValueSet {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRValueSet {
		return try SwiftFHIRValueSet(json: json)
	}
	
	func testValueSet1() {
		do {
			let instance = try runValueSet1()
			try runValueSet1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example.json")
		
		XCTAssertEqual(inst.compose?.inactive, true)
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
		XCTAssertEqual(inst.compose?.lockedDate?.description, "2012-06-13")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINC ® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-extensional")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?[0].value, "loinc-cholesterol-int")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.purpose, "This value set was published by ACME Inc in order to make clear which codes are used for Cholesterol by AcmeClinicals (Adult Ambulatory care support in USA)")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.useContext?[0].code?.code, "age")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueQuantity?.code, "a")
		XCTAssertEqual(inst.useContext?[0].valueQuantity?.comparator, QuantityComparator(rawValue: ">")!)
		XCTAssertEqual(inst.useContext?[0].valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.useContext?[0].valueQuantity?.unit, "yrs")
		XCTAssertEqual(inst.useContext?[0].valueQuantity?.value, "18")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet2() {
		do {
			let instance = try runValueSet2()
			try runValueSet2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-hierarchical.json")
		
		XCTAssertEqual(inst.compose?.include?[0].concept?[0].code, "invalid")
		XCTAssertEqual(inst.compose?.include?[0].concept?[1].code, "structure")
		XCTAssertEqual(inst.compose?.include?[0].concept?[2].code, "required")
		XCTAssertEqual(inst.compose?.include?[0].concept?[3].code, "value")
		XCTAssertEqual(inst.compose?.include?[0].concept?[4].code, "processing")
		XCTAssertEqual(inst.compose?.include?[0].concept?[5].code, "duplicate")
		XCTAssertEqual(inst.compose?.include?[0].concept?[6].code, "not-found")
		XCTAssertEqual(inst.compose?.include?[0].concept?[7].code, "conflict")
		XCTAssertEqual(inst.compose?.include?[0].concept?[8].code, "lock")
		XCTAssertEqual(inst.compose?.include?[0].concept?[9].code, "exception")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-rules")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[0].valueCode, "groups-only")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[0].url, "display")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[0].valueString, "(Most common)")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[1].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[1].valueCode, "login")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[2].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].extension_fhir?[2].valueCode, "conflict")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-group")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[0].url, "code")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[0].valueString, "processing")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[1].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[1].valueCode, "duplicate")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[2].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].extension_fhir?[2].valueCode, "not-found")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-group")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[0].url, "code")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[0].valueString, "invalid")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[1].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[1].valueCode, "structure")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[2].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[2].valueCode, "required")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[3].url, "value")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].extension_fhir?[3].valueCode, "required")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[3].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-group")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[0].url, "code")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[0].valueString, "transient")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[1].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[1].valueCode, "lock")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[2].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[2].valueCode, "exception")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[3].url, "value")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].extension_fhir?[3].valueCode, "throttled")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[4].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-group")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[0].url, "code")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[0].valueString, "security")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[1].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[1].valueCode, "login")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[2].url, "member")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].extension_fhir?[2].valueCode, "unknown")
		XCTAssertEqual(inst.compose?.include?[0].extension_fhir?[5].url, "http://hl7.org/fhir/StructureDefinition/valueset-expand-group")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "#hacked")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contained?[0].id, "hacked")
		XCTAssertEqual(inst.date?.description, "2018-07-20")
		XCTAssertEqual(inst.description_fhir, "Demonstration of extensions that build a hierarchical contains")
		XCTAssertEqual(inst.expansion?.contains?[0].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[0].code, "login")
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[0].display, "Login Required")
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[0].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[1].code, "conflict")
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[1].display, "Edit Version Conflict")
		XCTAssertEqual(inst.expansion?.contains?[0].contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "(Most common)")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "processing")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].code, "duplicate")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].display, "Duplicate")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].code, "not-found")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].display, "Not Found")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "Processing Failure")
		XCTAssertEqual(inst.expansion?.contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[2].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[2].code, "invalid")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].code, "structure")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].display, "Structural Issue")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[0].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].code, "required")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].display, "Required element missing")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].code, "value")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].display, "Element value invalid")
		XCTAssertEqual(inst.expansion?.contains?[2].contains?[2].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Invalid Content")
		XCTAssertEqual(inst.expansion?.contains?[2].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[3].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[3].code, "transient")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[0].code, "lock-error")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[0].display, "Lock Error")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[0].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[1].code, "exception")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[1].display, "Exception")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[2].code, "throttled")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[2].display, "Throttled")
		XCTAssertEqual(inst.expansion?.contains?[3].contains?[2].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[3].display, "Transient Issue")
		XCTAssertEqual(inst.expansion?.contains?[3].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[4].abstract, true)
		XCTAssertEqual(inst.expansion?.contains?[4].code, "security")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[0].code, "login")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[0].display, "Login Required")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[0].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[1].code, "unknown")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[1].display, "Unknown User")
		XCTAssertEqual(inst.expansion?.contains?[4].contains?[1].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.contains?[4].display, "Security Problem")
		XCTAssertEqual(inst.expansion?.contains?[4].system?.absoluteString, "http://hl7.org/fhir/hacked")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:42316ff8-2714-4680-9980-f37a6d1a71bc")
		XCTAssertEqual(inst.expansion?.parameter?[0].name, "excludeNotForUI")
		XCTAssertEqual(inst.expansion?.parameter?[0].valueUri?.absoluteString, "false")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2018-07-20T23:14:07+10:00")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-hierarchical")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "Example Hierarchical ValueSet")
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-hierarchical")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet3() {
		do {
			let instance = try runValueSet3()
			try runValueSet3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-expansion.json")
		
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use.")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "14647-2")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Cholesterol [Moles/volume] in Serum or Plasma")
		XCTAssertEqual(inst.expansion?.contains?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.expansion?.contains?[0].version, "2.50")
		XCTAssertEqual(inst.expansion?.contains?[1].abstract, true)
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
		XCTAssertEqual(inst.expansion?.contains?[2].abstract, true)
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
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/valueset-expansionSource")
		XCTAssertEqual(inst.expansion?.extension_fhir?[0].valueUri?.absoluteString, "http://hl7.org/fhir/ValueSet/example-extensional")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:42316ff8-2714-4680-9980-f37a6d1a71bc")
		XCTAssertEqual(inst.expansion?.offset, 0)
		XCTAssertEqual(inst.expansion?.parameter?[0].name, "version")
		XCTAssertEqual(inst.expansion?.parameter?[0].valueString, "2.50")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-06-22T13:56:07Z")
		XCTAssertEqual(inst.expansion?.total, 8)
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-expansion")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-expansion")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
	
	func testValueSet4() {
		do {
			let instance = try runValueSet4()
			try runValueSet4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-inactive.json")
		
		XCTAssertEqual(inst.compose?.inactive, true)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "descendent-of")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "concept")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "_ActMoodPredicate")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.description_fhir, "HL7 v3 ActMood Predicate codes, including inactive codes")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "CRT")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "criterion")
		XCTAssertEqual(inst.expansion?.contains?[0].inactive, true)
		XCTAssertEqual(inst.expansion?.contains?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "EXPEC")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].code, "GOL")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].display, "goal")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].code, "RSK")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].display, "risk")
		XCTAssertEqual(inst.expansion?.contains?[1].contains?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "expectation")
		XCTAssertEqual(inst.expansion?.contains?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.expansion?.contains?[2].code, "OPT")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "option")
		XCTAssertEqual(inst.expansion?.contains?[2].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActMood")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:46c00b3f-003a-4f31-9d4b-ea2de58b2a99")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2017-02-26T10:00:00Z")
		XCTAssertEqual(inst.id, "inactive")
		XCTAssertEqual(inst.name, "Example-inactive")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example with inactive codes")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/inactive")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet5() {
		do {
			let instance = try runValueSet5()
			try runValueSet5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-filter.json")
		
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "acme-plasma")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "true")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://hl7.org/fhir/CodeSystem/example")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2018-11-01")
		XCTAssertEqual(inst.description_fhir, "ACME Codes for Cholesterol: Plasma only - demonstrating the use of a filter defined in a CodeSystem")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-filter")
		XCTAssertEqual(inst.name, "ACMECholCodesPlasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ACME Codes for Cholesterol: Plasma only")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-filter")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet6() {
		do {
			let instance = try runValueSet6()
			try runValueSet6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-yesnodontknow.json")
		
		// Don't know how to create unit test for "compose?.include?[0].valueSet?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.compose?.include?[1].concept?[0].code, "asked-unknown")
		XCTAssertEqual(inst.compose?.include?[1].concept?[0].display, "Don't know")
		XCTAssertEqual(inst.compose?.include?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/data-absent-reason")
		XCTAssertEqual(inst.description_fhir, "For Capturing simple yes-no-don't know answers")
		XCTAssertEqual(inst.expansion?.contains?[0].code, "Y")
		XCTAssertEqual(inst.expansion?.contains?[0].display, "Yes")
		XCTAssertEqual(inst.expansion?.contains?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0136")
		XCTAssertEqual(inst.expansion?.contains?[1].code, "N")
		XCTAssertEqual(inst.expansion?.contains?[1].display, "No")
		XCTAssertEqual(inst.expansion?.contains?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0136")
		XCTAssertEqual(inst.expansion?.contains?[2].code, "asked-unknown")
		XCTAssertEqual(inst.expansion?.contains?[2].display, "Don't know")
		XCTAssertEqual(inst.expansion?.contains?[2].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/data-absent-reason")
		XCTAssertEqual(inst.expansion?.identifier?.absoluteString, "urn:uuid:bf99fe50-2c2b-41ad-bd63-bee6919810b4")
		XCTAssertEqual(inst.expansion?.timestamp?.description, "2015-07-14T10:00:00Z")
		XCTAssertEqual(inst.id, "yesnodontknow")
		XCTAssertEqual(inst.name, "Yes/No/Don't Know")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet7() {
		do {
			let instance = try runValueSet7()
			try runValueSet7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-examplescenario-actor-type.json")
		
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://hl7.org/fhir/examplescenario-actor-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "fhir@lists.hl7.org")
		XCTAssertEqual(inst.date?.description, "2018-12-27T22:37:54+11:00")
		XCTAssertEqual(inst.description_fhir, "The type of actor - system or human.")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg")
		XCTAssertEqual(inst.extension_fhir?[0].valueCode, "fhir")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status")
		XCTAssertEqual(inst.extension_fhir?[1].valueCode, "trial-use")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm")
		XCTAssertEqual(inst.extension_fhir?[2].valueInteger, 0)
		XCTAssertEqual(inst.id, "examplescenario-actor-type")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.840.1.113883.4.642.3.858")
		XCTAssertEqual(inst.immutable, true)
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2018-12-27T22:37:54.724+11:00")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "ExampleScenarioActorType")
		XCTAssertEqual(inst.publisher, "HL7 (FHIR Project)")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ExampleScenarioActorType")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/examplescenario-actor-type")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet8() {
		do {
			let instance = try runValueSet8()
			try runValueSet8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-list-example-codes.json")
		
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/list-example-use-codes")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2018-12-27T22:37:54+11:00")
		XCTAssertEqual(inst.description_fhir, "Example use codes for the List resource - typical kinds of use.")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg")
		XCTAssertEqual(inst.extension_fhir?[0].valueCode, "fhir")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status")
		XCTAssertEqual(inst.extension_fhir?[1].valueCode, "draft")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm")
		XCTAssertEqual(inst.extension_fhir?[2].valueInteger, 1)
		XCTAssertEqual(inst.id, "list-example-codes")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.840.1.113883.4.642.3.316")
		XCTAssertEqual(inst.immutable, true)
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2018-12-27T22:37:54.724+11:00")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "ExampleUseCodesForList")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Use Codes for List")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/list-example-codes")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testValueSet9() {
		do {
			let instance = try runValueSet9()
			try runValueSet9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ValueSet successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runValueSet9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRValueSet {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "valueset-example-intensional.json")
		
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].code, "5932-9")
		XCTAssertEqual(inst.compose?.exclude?[0].concept?[0].display, "Cholesterol [Presence] in Blood by Test strip")
		XCTAssertEqual(inst.compose?.exclude?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].op, FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].property, "parent")
		XCTAssertEqual(inst.compose?.include?[0].filter?[0].value, "LP43571-6")
		XCTAssertEqual(inst.compose?.include?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "This content from LOINCÂ® is copyright Â© 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date?.description, "2015-06-22")
		XCTAssertEqual(inst.description_fhir, "This is an example value set that includes all the LOINC codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-intensional")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/identifiers/valuesets")
		XCTAssertEqual(inst.identifier?[0].value, "loinc-cholesterol-ext")
		// Don't know how to create unit test for "meta?.profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.name, "LOINC Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ValueSet/example-intensional")
		XCTAssertEqual(inst.version, "20150622")
		
		return inst
	}
}
