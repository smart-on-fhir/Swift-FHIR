//
//  StructureDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRStructureDefinition = Models.StructureDefinition
#else
import SwiftFHIR
typealias SwiftFHIRStructureDefinition = SwiftFHIR.StructureDefinition
#endif


class StructureDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRStructureDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRStructureDefinition {
		return try SwiftFHIRStructureDefinition(json: json)
	}
	
	func testStructureDefinition1() {
		do {
			let instance = try runStructureDefinition1()
			try runStructureDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test StructureDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runStructureDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRStructureDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "structuredefinition-example.json")
		
		XCTAssertEqual(inst.abstract, false)
		XCTAssertEqual(inst.baseDefinition?.absoluteString, "http://hl7.org/fhir/StructureDefinition/DiagnosticReport")
		XCTAssertEqual(inst.contact?[0].name, "Grahame Grieve")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "grahame@healthintersections.com.au")
		XCTAssertEqual(inst.copyright, "Creative Commons 0, per FHIR specification")
		XCTAssertEqual(inst.date?.description, "2012-05-12")
		XCTAssertEqual(inst.derivation, TypeDerivationRule(rawValue: "constraint")!)
		XCTAssertEqual(inst.description_fhir, "Describes how the lab report is used for a standard Lipid Profile - Cholesterol, Triglyceride and Cholesterol fractions. Uses LOINC codes")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "1.2.36.90146595217.4.2")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "AU")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.keyword?[0].code, "314079002")
		XCTAssertEqual(inst.keyword?[0].display, "Hyperlipidemia screening test (procedure)")
		XCTAssertEqual(inst.keyword?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.kind, StructureDefinitionKind(rawValue: "resource")!)
		XCTAssertEqual(inst.mapping?[0].comment, "Actual mappings haven't yet been filled out")
		XCTAssertEqual(inst.mapping?[0].identity, "m1")
		XCTAssertEqual(inst.mapping?[0].name, "RCPA Lipid Report recommendations")
		XCTAssertEqual(inst.mapping?[0].uri?.absoluteString, "https://www.rcpa.edu.au/getattachment/0961c6d1-ec80-4500-8dc0-de516500e05b/Lipid-and-lipoprotein-testing.aspx")
		XCTAssertEqual(inst.name, "LipidProfileExample")
		XCTAssertEqual(inst.publisher, "Health Intersections Pty Ltd")
		XCTAssertEqual(inst.purpose, "Provide an example to demonstrate how to use StructureDefinition")
		XCTAssertEqual(inst.snapshot?.element?[0].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[0].base?.min, 1)
		XCTAssertEqual(inst.snapshot?.element?[0].base?.path, "DiagnosticReport")
		XCTAssertEqual(inst.snapshot?.element?[0].definition, "The findings and interpretation of a general lipd lab profile.")
		XCTAssertEqual(inst.snapshot?.element?[0].id, "DiagnosticReport")
		XCTAssertEqual(inst.snapshot?.element?[0].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[0].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[0].min, 1)
		XCTAssertEqual(inst.snapshot?.element?[0].path, "DiagnosticReport")
		XCTAssertEqual(inst.snapshot?.element?[0].short, "Lipid Lab Report")
		XCTAssertEqual(inst.snapshot?.element?[1].base?.max, "*")
		XCTAssertEqual(inst.snapshot?.element?[1].base?.min, 0)
		XCTAssertEqual(inst.snapshot?.element?[1].base?.path, "DiagnosticReport.extension")
		XCTAssertEqual(inst.snapshot?.element?[1].id, "DiagnosticReport.extension")
		XCTAssertEqual(inst.snapshot?.element?[1].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[1].max, "*")
		XCTAssertEqual(inst.snapshot?.element?[1].min, 0)
		XCTAssertEqual(inst.snapshot?.element?[1].path, "DiagnosticReport.extension")
		XCTAssertEqual(inst.snapshot?.element?[1].short, "Additional Content defined by implementations")
		XCTAssertEqual(inst.snapshot?.element?[1].slicing?.discriminator?[0].path, "url")
		XCTAssertEqual(inst.snapshot?.element?[1].slicing?.discriminator?[0].type, DiscriminatorType(rawValue: "value")!)
		XCTAssertEqual(inst.snapshot?.element?[1].slicing?.ordered, false)
		XCTAssertEqual(inst.snapshot?.element?[1].slicing?.rules, SlicingRules(rawValue: "open")!)
		XCTAssertEqual(inst.snapshot?.element?[1].type?[0].code?.absoluteString, "Extension")
		XCTAssertEqual(inst.snapshot?.element?[2].alias?[0], "narrative")
		XCTAssertEqual(inst.snapshot?.element?[2].alias?[1], "html")
		XCTAssertEqual(inst.snapshot?.element?[2].alias?[2], "xhtml")
		XCTAssertEqual(inst.snapshot?.element?[2].alias?[3], "display")
		XCTAssertEqual(inst.snapshot?.element?[2].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[2].base?.min, 0)
		XCTAssertEqual(inst.snapshot?.element?[2].base?.path, "DiagnosticReport.text")
		XCTAssertEqual(inst.snapshot?.element?[2].comment, "Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative.")
		XCTAssertEqual(inst.snapshot?.element?[2].id, "DiagnosticReport.text")
		XCTAssertEqual(inst.snapshot?.element?[2].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[2].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[2].min, 0)
		XCTAssertEqual(inst.snapshot?.element?[2].path, "DiagnosticReport.text")
		XCTAssertEqual(inst.snapshot?.element?[2].short, "Text summary of the resource, for human interpretation")
		XCTAssertEqual(inst.snapshot?.element?[2].type?[0].code?.absoluteString, "Narrative")
		XCTAssertEqual(inst.snapshot?.element?[3].alias?[0], "inline resources")
		XCTAssertEqual(inst.snapshot?.element?[3].alias?[1], "anonymous resources")
		XCTAssertEqual(inst.snapshot?.element?[3].alias?[2], "contained resources")
		XCTAssertEqual(inst.snapshot?.element?[3].base?.max, "*")
		XCTAssertEqual(inst.snapshot?.element?[3].base?.min, 0)
		XCTAssertEqual(inst.snapshot?.element?[3].base?.path, "DiagnosticReport.contained")
		XCTAssertEqual(inst.snapshot?.element?[3].comment, "This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again.")
		XCTAssertEqual(inst.snapshot?.element?[3].id, "DiagnosticReport.contained")
		XCTAssertEqual(inst.snapshot?.element?[3].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[3].max, "*")
		XCTAssertEqual(inst.snapshot?.element?[3].min, 0)
		XCTAssertEqual(inst.snapshot?.element?[3].path, "DiagnosticReport.contained")
		XCTAssertEqual(inst.snapshot?.element?[3].short, "Contained, inline Resources")
		XCTAssertEqual(inst.snapshot?.element?[3].type?[0].code?.absoluteString, "Resource")
		XCTAssertEqual(inst.snapshot?.element?[4].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[4].base?.min, 1)
		XCTAssertEqual(inst.snapshot?.element?[4].base?.path, "DiagnosticReport.status")
		XCTAssertEqual(inst.snapshot?.element?[4].binding?.strength, BindingStrength(rawValue: "required")!)
		XCTAssertEqual(inst.snapshot?.element?[4].binding?.valueSetReference?.reference, "http://hl7.org/fhir/ValueSet/observation-status")
		XCTAssertEqual(inst.snapshot?.element?[4].comment, "This is labeled as \"Is Modifier\" because applications need to take appropriate action if a report is withdrawn.")
		XCTAssertEqual(inst.snapshot?.element?[4].definition, "The status of the diagnostic report as a whole.")
		XCTAssertEqual(inst.snapshot?.element?[4].id, "DiagnosticReport.status")
		XCTAssertEqual(inst.snapshot?.element?[4].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[4].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[4].min, 1)
		XCTAssertEqual(inst.snapshot?.element?[4].path, "DiagnosticReport.status")
		XCTAssertEqual(inst.snapshot?.element?[4].short, "registered|interim|final|amended|cancelled|withdrawn")
		XCTAssertEqual(inst.snapshot?.element?[4].type?[0].code?.absoluteString, "code")
		XCTAssertEqual(inst.snapshot?.element?[5].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[5].base?.min, 1)
		XCTAssertEqual(inst.snapshot?.element?[5].base?.path, "DiagnosticReport.issued")
		XCTAssertEqual(inst.snapshot?.element?[5].comment, "May be different from the update time of the resource itself, because that is the status of the record (potentially a secondary copy), not the actual release time of the report.")
		XCTAssertEqual(inst.snapshot?.element?[5].definition, "The date and/or time that this version of the report was released from the source diagnostic service.")
		XCTAssertEqual(inst.snapshot?.element?[5].id, "DiagnosticReport.issued")
		XCTAssertEqual(inst.snapshot?.element?[5].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[5].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[5].min, 1)
		XCTAssertEqual(inst.snapshot?.element?[5].path, "DiagnosticReport.issued")
		XCTAssertEqual(inst.snapshot?.element?[5].short, "Date this version was released")
		XCTAssertEqual(inst.snapshot?.element?[5].type?[0].code?.absoluteString, "dateTime")
		XCTAssertEqual(inst.snapshot?.element?[6].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[6].base?.min, 1)
		XCTAssertEqual(inst.snapshot?.element?[6].base?.path, "DiagnosticReport.subject")
		XCTAssertEqual(inst.snapshot?.element?[6].definition, "The subject of the report. Usually, but not always, this is a patient. However diagnostic services also perform analyses on specimens collected from a variety of other sources.")
		XCTAssertEqual(inst.snapshot?.element?[6].id, "DiagnosticReport.subject")
		XCTAssertEqual(inst.snapshot?.element?[6].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[6].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[6].min, 1)
		XCTAssertEqual(inst.snapshot?.element?[6].path, "DiagnosticReport.subject")
		XCTAssertEqual(inst.snapshot?.element?[6].short, "The subject of the report")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[0].aggregation?[0], AggregationMode(rawValue: "bundled")!)
		XCTAssertEqual(inst.snapshot?.element?[6].type?[0].code?.absoluteString, "Reference")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[0].targetProfile?.absoluteString, "http://hl7.org/fhir/StructureDefinition/Patient")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[0].versioning, ReferenceVersionRules(rawValue: "either")!)
		XCTAssertEqual(inst.snapshot?.element?[6].type?[1].aggregation?[0], AggregationMode(rawValue: "bundled")!)
		XCTAssertEqual(inst.snapshot?.element?[6].type?[1].code?.absoluteString, "Reference")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[1].targetProfile?.absoluteString, "http://hl7.org/fhir/StructureDefinition/Group")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[2].aggregation?[0], AggregationMode(rawValue: "bundled")!)
		XCTAssertEqual(inst.snapshot?.element?[6].type?[2].code?.absoluteString, "Reference")
		XCTAssertEqual(inst.snapshot?.element?[6].type?[2].targetProfile?.absoluteString, "http://hl7.org/fhir/StructureDefinition/Device")
		XCTAssertEqual(inst.snapshot?.element?[7].base?.max, "1")
		XCTAssertEqual(inst.snapshot?.element?[7].base?.min, 1)
		XCTAssertEqual(inst.snapshot?.element?[7].base?.path, "DiagnosticReport.performer")
		XCTAssertEqual(inst.snapshot?.element?[7].comment, "This is not necessarily the source of the atomic data items - it's the entity that takes responsibility for the clinical report.")
		XCTAssertEqual(inst.snapshot?.element?[7].definition, "The diagnostic service that is responsible for issuing the report.")
		XCTAssertEqual(inst.snapshot?.element?[7].id, "DiagnosticReport.performer")
		XCTAssertEqual(inst.snapshot?.element?[7].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[7].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[7].min, 1)
		XCTAssertEqual(inst.snapshot?.element?[7].path, "DiagnosticReport.performer")
		XCTAssertEqual(inst.snapshot?.element?[7].short, "Responsible Diagnostic Service")
		XCTAssertEqual(inst.snapshot?.element?[7].type?[0].code?.absoluteString, "Reference")
		XCTAssertEqual(inst.snapshot?.element?[7].type?[0].targetProfile?.absoluteString, "http://hl7.org/fhir/StructureDefinition/Organization")
		XCTAssertEqual(inst.snapshot?.element?[8].base?.max, "*")
		XCTAssertEqual(inst.snapshot?.element?[8].base?.min, 0)
		XCTAssertEqual(inst.snapshot?.element?[8].base?.path, "DiagnosticReport.identifier")
		XCTAssertEqual(inst.snapshot?.element?[8].definition, "The local ID assigned to the report by the order filler, usually by the Information System of the diagnostic service provider.")
		XCTAssertEqual(inst.snapshot?.element?[8].id, "DiagnosticReport.identifier")
		XCTAssertEqual(inst.snapshot?.element?[8].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[8].max, "1")
		XCTAssertEqual(inst.snapshot?.element?[8].min, 0)
		XCTAssertEqual(inst.snapshot?.element?[8].path, "DiagnosticReport.identifier")
		XCTAssertEqual(inst.snapshot?.element?[8].short, "Id for external references to this report")
		XCTAssertEqual(inst.snapshot?.element?[8].type?[0].code?.absoluteString, "Identifier")
		XCTAssertEqual(inst.snapshot?.element?[9].base?.max, "*")
		XCTAssertEqual(inst.snapshot?.element?[9].base?.min, 0)
		XCTAssertEqual(inst.snapshot?.element?[9].base?.path, "DiagnosticReport.request")
		XCTAssertEqual(inst.snapshot?.element?[9].definition, "Details concerning a single pathology test requested.")
		XCTAssertEqual(inst.snapshot?.element?[9].id, "DiagnosticReport.request")
		XCTAssertEqual(inst.snapshot?.element?[9].isModifier, false)
		XCTAssertEqual(inst.snapshot?.element?[9].max, "*")
		XCTAssertEqual(inst.snapshot?.element?[9].min, 0)
		XCTAssertEqual(inst.snapshot?.element?[9].path, "DiagnosticReport.request")
		XCTAssertEqual(inst.snapshot?.element?[9].short, "What was requested")
		XCTAssertEqual(inst.snapshot?.element?[9].type?[0].aggregation?[0], AggregationMode(rawValue: "referenced")!)
		XCTAssertEqual(inst.snapshot?.element?[9].type?[0].code?.absoluteString, "Reference")
		XCTAssertEqual(inst.snapshot?.element?[9].type?[0].targetProfile?.absoluteString, "http://hl7.org/fhir/StructureDefinition/ProcedureRequest")
		XCTAssertEqual(inst.snapshot?.element?[9].type?[0].versioning, ReferenceVersionRules(rawValue: "specific")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Lipid Profile")
		XCTAssertEqual(inst.type, "DiagnosticReport")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/example")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].code?.display, "Clinical Focus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "314079002")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Hyperlipidemia screening test (procedure)")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "2")
		
		return inst
	}
}
