//
//  StructureDefinitionTests.swift
//  StructureDefinitionTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class StructureDefinitionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> StructureDefinition {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> StructureDefinition {
		let instance = StructureDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStructureDefinition1() {
		let instance = testStructureDefinition1_impl()
		testStructureDefinition1_impl(json: instance.asJSON())
	}
	
	func testStructureDefinition1_impl(json: JSONDictionary? = nil) -> StructureDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "structuredefinition-example.json")
		
		XCTAssertFalse(inst.abstract!)
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "grahame@healthintersections.com.au")
		XCTAssertEqual(inst.date!.description, "2012-05-12")
		XCTAssertEqual(inst.description_fhir!, "Describes how the lab report is used for a standard Lipid Profile - Cholesterol, Triglyceride and Cholesterol fractions. Uses LOINC codes")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "Example Lipid Profile")
		XCTAssertEqual(inst.publisher!, "Grahame Grieve")
		XCTAssertEqual(inst.snapshot!.element![0].definition!, "The findings and interpretation of a general lipd lab profile.")
		XCTAssertFalse(inst.snapshot!.element![0].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![0].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![0].min!, 1)
		XCTAssertEqual(inst.snapshot!.element![0].name!, "LipidProfile")
		XCTAssertEqual(inst.snapshot!.element![0].path!, "DiagnosticReport")
		XCTAssertEqual(inst.snapshot!.element![0].short!, "Lipid Lab Report")
		XCTAssertEqual(inst.snapshot!.element![0].type![0].code!, "Resource")
		XCTAssertFalse(inst.snapshot!.element![1].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![1].max!, "*")
		XCTAssertEqual(inst.snapshot!.element![1].min!, 0)
		XCTAssertEqual(inst.snapshot!.element![1].path!, "DiagnosticReport.extension")
		XCTAssertEqual(inst.snapshot!.element![1].short!, "Additional Content defined by implementations")
		XCTAssertEqual(inst.snapshot!.element![1].slicing!.discriminator![0], "url")
		XCTAssertFalse(inst.snapshot!.element![1].slicing!.ordered!)
		XCTAssertEqual(inst.snapshot!.element![1].slicing!.rules!, "open")
		XCTAssertEqual(inst.snapshot!.element![1].type![0].code!, "Extension")
		XCTAssertEqual(inst.snapshot!.element![2].comments!, "Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative.")
		XCTAssertFalse(inst.snapshot!.element![2].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![2].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![2].min!, 0)
		XCTAssertEqual(inst.snapshot!.element![2].path!, "DiagnosticReport.text")
		XCTAssertEqual(inst.snapshot!.element![2].short!, "Text summary of the resource, for human interpretation")
		XCTAssertEqual(inst.snapshot!.element![2].synonym![0], "narrative")
		XCTAssertEqual(inst.snapshot!.element![2].synonym![1], "html")
		XCTAssertEqual(inst.snapshot!.element![2].synonym![2], "xhtml")
		XCTAssertEqual(inst.snapshot!.element![2].synonym![3], "display")
		XCTAssertEqual(inst.snapshot!.element![2].type![0].code!, "Narrative")
		XCTAssertEqual(inst.snapshot!.element![3].comments!, "This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again.")
		XCTAssertFalse(inst.snapshot!.element![3].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![3].max!, "*")
		XCTAssertEqual(inst.snapshot!.element![3].min!, 0)
		XCTAssertEqual(inst.snapshot!.element![3].path!, "DiagnosticReport.contained")
		XCTAssertEqual(inst.snapshot!.element![3].short!, "Contained, inline Resources")
		XCTAssertEqual(inst.snapshot!.element![3].synonym![0], "inline resources")
		XCTAssertEqual(inst.snapshot!.element![3].synonym![1], "anonymous resources")
		XCTAssertEqual(inst.snapshot!.element![3].synonym![2], "contained resources")
		XCTAssertEqual(inst.snapshot!.element![3].type![0].code!, "Resource")
		XCTAssertEqual(inst.snapshot!.element![4].binding!.name!, "ObservationStatus")
		XCTAssertEqual(inst.snapshot!.element![4].binding!.referenceReference!.reference!, "http://hl7.org/fhir/vs/observation-status")
		XCTAssertEqual(inst.snapshot!.element![4].binding!.strength!, "required")
		XCTAssertEqual(inst.snapshot!.element![4].comments!, "This is labeled as \"Is Modifier\" because applications need to take appropriate action if a report is withdrawn.")
		XCTAssertEqual(inst.snapshot!.element![4].definition!, "The status of the diagnostic report as a whole.")
		XCTAssertFalse(inst.snapshot!.element![4].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![4].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![4].min!, 1)
		XCTAssertEqual(inst.snapshot!.element![4].path!, "DiagnosticReport.status")
		XCTAssertEqual(inst.snapshot!.element![4].short!, "registered|interim|final|amended|cancelled|withdrawn")
		XCTAssertEqual(inst.snapshot!.element![4].type![0].code!, "code")
		XCTAssertEqual(inst.snapshot!.element![5].comments!, "May be different from the update time of the resource itself, because that is the status of the record (potentially a secondary copy), not the actual release time of the report.")
		XCTAssertEqual(inst.snapshot!.element![5].definition!, "The date and/or time that this version of the report was released from the source diagnostic service.")
		XCTAssertFalse(inst.snapshot!.element![5].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![5].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![5].min!, 1)
		XCTAssertEqual(inst.snapshot!.element![5].path!, "DiagnosticReport.issued")
		XCTAssertEqual(inst.snapshot!.element![5].short!, "Date this version was released")
		XCTAssertEqual(inst.snapshot!.element![5].type![0].code!, "dateTime")
		XCTAssertEqual(inst.snapshot!.element![6].definition!, "The subject of the report. Usually, but not always, this is a patient. However diagnostic services also perform analyses on specimens collected from a variety of other sources.")
		XCTAssertFalse(inst.snapshot!.element![6].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![6].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![6].min!, 1)
		XCTAssertEqual(inst.snapshot!.element![6].path!, "DiagnosticReport.subject")
		XCTAssertEqual(inst.snapshot!.element![6].short!, "The subject of the report")
		XCTAssertEqual(inst.snapshot!.element![6].type![0].code!, "Reference(Patient|Group|Device)")
		XCTAssertEqual(inst.snapshot!.element![7].comments!, "This is not necessarily the source of the atomic data items - it's the entity that takes responsibility for the clinical report.")
		XCTAssertEqual(inst.snapshot!.element![7].definition!, "The diagnostic service that is responsible for issuing the report.")
		XCTAssertFalse(inst.snapshot!.element![7].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![7].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![7].min!, 1)
		XCTAssertEqual(inst.snapshot!.element![7].path!, "DiagnosticReport.performer")
		XCTAssertEqual(inst.snapshot!.element![7].short!, "Responsible Diagnostic Service")
		XCTAssertEqual(inst.snapshot!.element![7].type![0].code!, "Reference(Organization)")
		XCTAssertEqual(inst.snapshot!.element![8].definition!, "The local ID assigned to the report by the order filler, usually by the Information System of the diagnostic service provider.")
		XCTAssertFalse(inst.snapshot!.element![8].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![8].max!, "1")
		XCTAssertEqual(inst.snapshot!.element![8].min!, 0)
		XCTAssertEqual(inst.snapshot!.element![8].path!, "DiagnosticReport.reportId")
		XCTAssertEqual(inst.snapshot!.element![8].short!, "Id for external references to this report")
		XCTAssertEqual(inst.snapshot!.element![8].type![0].code!, "Identifier")
		XCTAssertEqual(inst.snapshot!.element![9].definition!, "Details concerning a single pathology test requested.")
		XCTAssertFalse(inst.snapshot!.element![9].isModifier!)
		XCTAssertEqual(inst.snapshot!.element![9].max!, "*")
		XCTAssertEqual(inst.snapshot!.element![9].min!, 0)
		XCTAssertEqual(inst.snapshot!.element![9].path!, "DiagnosticReport.requestDetail")
		XCTAssertEqual(inst.snapshot!.element![9].short!, "What was requested")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "constraint")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/example")
		
		return inst
	}
}
