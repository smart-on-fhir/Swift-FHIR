//
//  ExtensionDefinitionTests.swift
//  ExtensionDefinitionTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ExtensionDefinitionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ExtensionDefinition? {
		let json = readJSONFile(filename)
		let instance = ExtensionDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testExtensionDefinition1() {
		let inst = instantiateFrom("extensiondefinition-example-translation.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExtensionDefinition instance")
	
		XCTAssertEqual(inst!.context![0], "string")
		XCTAssertEqual(inst!.contextType!, "datatype")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-04")!)
		XCTAssertEqual(inst!.description!, "This is the standard extension for translating content from one language to another within a resource")
		XCTAssertEqual(inst!.display!, "Alternate language")
		XCTAssertEqual(inst!.element![0].formal!, "A translation to an alternative language")
		XCTAssertFalse(inst!.element![0].isModifier!)
		XCTAssertEqual(inst!.element![0].max!, "*")
		XCTAssertEqual(inst!.element![0].min!, 0)
		XCTAssertEqual(inst!.element![0].path!, "Extension")
		XCTAssertEqual(inst!.element![0].short!, "Alternate Language")
		XCTAssertEqual(inst!.element![1].binding!.conformance!, "required")
		XCTAssertEqual(inst!.element![1].binding!.description!, "xml:lang (BCP-47)")
		XCTAssertFalse(inst!.element![1].binding!.isExtensible!)
		XCTAssertEqual(inst!.element![1].binding!.name!, "Language")
		XCTAssertEqual(inst!.element![1].binding!.referenceUri!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.element![1].formal!, "The language that the translation is for")
		XCTAssertFalse(inst!.element![1].isModifier!)
		XCTAssertEqual(inst!.element![1].max!, "1")
		XCTAssertEqual(inst!.element![1].min!, 1)
		XCTAssertEqual(inst!.element![1].path!, "Extension.lang")
		XCTAssertEqual(inst!.element![1].short!, "Language of Translation")
		XCTAssertEqual(inst!.element![2].formal!, "The content of the translation")
		XCTAssertFalse(inst!.element![2].isModifier!)
		XCTAssertEqual(inst!.element![2].max!, "1")
		XCTAssertEqual(inst!.element![2].min!, 1)
		XCTAssertEqual(inst!.element![2].path!, "Extension.content")
		XCTAssertEqual(inst!.element![2].short!, "Value of Translation")
		XCTAssertEqual(inst!.name!, "Standard FHIR Language Translation Extension")
		XCTAssertEqual(inst!.publisher!, "FHIR Project")
		XCTAssertEqual(inst!.requirements!, "There are many ways to manage multi-language requirements when using FHIR, but some use cases mean that there is no choice but to include translations directly in the resource. In aa few places, there is specific support for this in FHIR. Otherwise, implementers can use this extension to carry additional language translations")
		XCTAssertEqual(inst!.status!, "draft")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7,org/fhir")
		XCTAssertEqual(inst!.url!, NSURL(string: "http://hl7.org/fhir/ExtensionDefinition/translation")!)
	}
	
	func testExtensionDefinition2() {
		let inst = instantiateFrom("extensiondefinition-example-translation.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExtensionDefinition instance")
	
		XCTAssertEqual(inst!.context![0], "string")
		XCTAssertEqual(inst!.contextType!, "datatype")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-04")!)
		XCTAssertEqual(inst!.description!, "This is the standard extension for translating content from one language to another within a resource")
		XCTAssertEqual(inst!.display!, "Alternate language")
		XCTAssertEqual(inst!.element![0].formal!, "A translation to an alternative language")
		XCTAssertFalse(inst!.element![0].isModifier!)
		XCTAssertEqual(inst!.element![0].max!, "*")
		XCTAssertEqual(inst!.element![0].min!, 0)
		XCTAssertEqual(inst!.element![0].path!, "Extension")
		XCTAssertEqual(inst!.element![0].short!, "Alternate Language")
		XCTAssertEqual(inst!.element![1].binding!.conformance!, "required")
		XCTAssertEqual(inst!.element![1].binding!.description!, "xml:lang (BCP-47)")
		XCTAssertFalse(inst!.element![1].binding!.isExtensible!)
		XCTAssertEqual(inst!.element![1].binding!.name!, "Language")
		XCTAssertEqual(inst!.element![1].binding!.referenceUri!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.element![1].formal!, "The language that the translation is for")
		XCTAssertFalse(inst!.element![1].isModifier!)
		XCTAssertEqual(inst!.element![1].max!, "1")
		XCTAssertEqual(inst!.element![1].min!, 1)
		XCTAssertEqual(inst!.element![1].path!, "Extension.lang")
		XCTAssertEqual(inst!.element![1].short!, "Language of Translation")
		XCTAssertEqual(inst!.element![2].formal!, "The content of the translation")
		XCTAssertFalse(inst!.element![2].isModifier!)
		XCTAssertEqual(inst!.element![2].max!, "1")
		XCTAssertEqual(inst!.element![2].min!, 1)
		XCTAssertEqual(inst!.element![2].path!, "Extension.content")
		XCTAssertEqual(inst!.element![2].short!, "Value of Translation")
		XCTAssertEqual(inst!.name!, "Standard FHIR Language Translation Extension")
		XCTAssertEqual(inst!.publisher!, "FHIR Project")
		XCTAssertEqual(inst!.requirements!, "There are many ways to manage multi-language requirements when using FHIR, but some use cases mean that there is no choice but to include translations directly in the resource. In aa few places, there is specific support for this in FHIR. Otherwise, implementers can use this extension to carry additional language translations")
		XCTAssertEqual(inst!.status!, "draft")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7,org/fhir")
		XCTAssertEqual(inst!.url!, NSURL(string: "http://hl7.org/fhir/ExtensionDefinition/translation")!)
	}
	
	func testExtensionDefinition3() {
		let inst = instantiateFrom("extensiondefinition-example-translation.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExtensionDefinition instance")
	
		XCTAssertEqual(inst!.context![0], "string")
		XCTAssertEqual(inst!.contextType!, "datatype")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-04")!)
		XCTAssertEqual(inst!.description!, "This is the standard extension for translating content from one language to another within a resource")
		XCTAssertEqual(inst!.display!, "Alternate language")
		XCTAssertEqual(inst!.element![0].formal!, "A translation to an alternative language")
		XCTAssertFalse(inst!.element![0].isModifier!)
		XCTAssertEqual(inst!.element![0].max!, "*")
		XCTAssertEqual(inst!.element![0].min!, 0)
		XCTAssertEqual(inst!.element![0].path!, "Extension")
		XCTAssertEqual(inst!.element![0].short!, "Alternate Language")
		XCTAssertEqual(inst!.element![1].binding!.conformance!, "required")
		XCTAssertEqual(inst!.element![1].binding!.description!, "xml:lang (BCP-47)")
		XCTAssertFalse(inst!.element![1].binding!.isExtensible!)
		XCTAssertEqual(inst!.element![1].binding!.name!, "Language")
		XCTAssertEqual(inst!.element![1].binding!.referenceUri!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.element![1].formal!, "The language that the translation is for")
		XCTAssertFalse(inst!.element![1].isModifier!)
		XCTAssertEqual(inst!.element![1].max!, "1")
		XCTAssertEqual(inst!.element![1].min!, 1)
		XCTAssertEqual(inst!.element![1].path!, "Extension.lang")
		XCTAssertEqual(inst!.element![1].short!, "Language of Translation")
		XCTAssertEqual(inst!.element![2].formal!, "The content of the translation")
		XCTAssertFalse(inst!.element![2].isModifier!)
		XCTAssertEqual(inst!.element![2].max!, "1")
		XCTAssertEqual(inst!.element![2].min!, 1)
		XCTAssertEqual(inst!.element![2].path!, "Extension.content")
		XCTAssertEqual(inst!.element![2].short!, "Value of Translation")
		XCTAssertEqual(inst!.name!, "Standard FHIR Language Translation Extension")
		XCTAssertEqual(inst!.publisher!, "FHIR Project")
		XCTAssertEqual(inst!.requirements!, "There are many ways to manage multi-language requirements when using FHIR, but some use cases mean that there is no choice but to include translations directly in the resource. In aa few places, there is specific support for this in FHIR. Otherwise, implementers can use this extension to carry additional language translations")
		XCTAssertEqual(inst!.status!, "draft")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7,org/fhir")
		XCTAssertEqual(inst!.url!, NSURL(string: "http://hl7.org/fhir/ExtensionDefinition/translation")!)
	}
	
	func testExtensionDefinition4() {
		let inst = instantiateFrom("extensiondefinition-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExtensionDefinition instance")
	
		XCTAssertEqual(inst!.context![0], "Observation.name")
		XCTAssertEqual(inst!.contextType!, "resource")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-05-12")!)
		XCTAssertEqual(inst!.description!, "An example extension definition, for the lipid profile")
		XCTAssertEqual(inst!.display!, "LDL is Calculated")
		XCTAssertEqual(inst!.element![0].comments!, "It's definitely better that whether the LDL was calculated or not comes from the LOINC code. But this is defined to exercise the extension machinery in the publication tooling, and to make this comment. Actually, the location is odd too - it would probably be on the root observation, but this is for testing purposes.")
		XCTAssertEqual(inst!.element![0].formal!, "True if the LDL value is calculated from Chol, Trig, and HDLC.")
		XCTAssertFalse(inst!.element![0].isModifier!)
		XCTAssertEqual(inst!.element![0].max!, "1")
		XCTAssertEqual(inst!.element![0].min!, 0)
		XCTAssertFalse(inst!.element![0].mustSupport!)
		XCTAssertEqual(inst!.element![0].path!, "Extension")
		XCTAssertEqual(inst!.element![0].short!, "LDL is Calculated")
		XCTAssertEqual(inst!.element![0].type![0].code!, "boolean")
		XCTAssertEqual(inst!.name!, "extensiondefinition-example")
		XCTAssertEqual(inst!.publisher!, "Grahame Grieve")
		XCTAssertEqual(inst!.status!, "draft")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "grahame@healthintersections.com.au")
		XCTAssertEqual(inst!.url!, NSURL(string: "http://hl7.org/fhir/ExtensionDefinition/ldl-calculated")!)
	}
	
	func testExtensionDefinition5() {
		let inst = instantiateFrom("extensiondefinition-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExtensionDefinition instance")
	
		XCTAssertEqual(inst!.context![0], "Observation.name")
		XCTAssertEqual(inst!.contextType!, "resource")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-05-12")!)
		XCTAssertEqual(inst!.description!, "An example extension definition, for the lipid profile")
		XCTAssertEqual(inst!.display!, "LDL is Calculated")
		XCTAssertEqual(inst!.element![0].comments!, "It's definitely better that whether the LDL was calculated or not comes from the LOINC code. But this is defined to exercise the extension machinery in the publication tooling, and to make this comment. Actually, the location is odd too - it would probably be on the root observation, but this is for testing purposes.")
		XCTAssertEqual(inst!.element![0].formal!, "True if the LDL value is calculated from Chol, Trig, and HDLC.")
		XCTAssertFalse(inst!.element![0].isModifier!)
		XCTAssertEqual(inst!.element![0].max!, "1")
		XCTAssertEqual(inst!.element![0].min!, 0)
		XCTAssertFalse(inst!.element![0].mustSupport!)
		XCTAssertEqual(inst!.element![0].path!, "Extension")
		XCTAssertEqual(inst!.element![0].short!, "LDL is Calculated")
		XCTAssertEqual(inst!.element![0].type![0].code!, "boolean")
		XCTAssertEqual(inst!.name!, "extensiondefinition-example")
		XCTAssertEqual(inst!.publisher!, "Grahame Grieve")
		XCTAssertEqual(inst!.status!, "draft")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "grahame@healthintersections.com.au")
		XCTAssertEqual(inst!.url!, NSURL(string: "http://hl7.org/fhir/ExtensionDefinition/ldl-calculated")!)
	}
}
