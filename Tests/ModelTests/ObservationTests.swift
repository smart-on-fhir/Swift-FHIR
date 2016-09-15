//
//  ObservationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ObservationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Observation {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Observation {
		let instance = SwiftFHIR.Observation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testObservation1() {
		do {
			let instance = try runObservation1()
			try runObservation1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-10minute-apgar-score.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "survey")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Survey")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Survey")
		XCTAssertEqual(inst.code?.coding?[0].code, "9271-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "10 minute Apgar Score")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "169922007")
		XCTAssertEqual(inst.code?.coding?[1].display, "Apgar at 10 minutes")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "10 minute Apgar Score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "32401-2")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "10 minute Apgar Color")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "249227004")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Apgar color score")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.text, "Apgar color score")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6724-4")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Good color all over")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarcolor")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.text, "2. Good color all over")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "32402-0")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "10 minute Apgar Heart Rate")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].code, "249223000")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].display, "Apgar heart rate score")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[1].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].code, "LA6718-6")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].display, "At least 100 beats per minute")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarheartrate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.text, "2. At least 100 beats per minute")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].code, "32404-6")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].display, "10 minute Apgar Reflex Irritability")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].code, "249226008")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].display, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[2].code?.text, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].code, "LA6721-0")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].display, "Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarreflexirritability")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.text, "2. Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].code, "32403-8")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].display, "10 minute Apgar Muscle Tone")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].code, "249225007")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].display, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[3].code?.text, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].code, "LA6715-2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].display, "Active motion ")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarmuscletone")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.text, "2. Active motion")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].code, "32405-3")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].display, "10 minute Apgar Respiratory effort")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].code, "249224006")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].display, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[4].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].code, "LA6727-7")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].display, "Good, strong cry; normal rate and effort of breathing    ")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarrespiratoryeffort")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.text, "2. Good, strong cry; normal rate and effort of breathing")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18T22:33:22Z")
		XCTAssertEqual(inst.id, "10minute-apgar-score")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/infant")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "10"))
		
		return inst
	}
	
	func testObservation2() {
		do {
			let instance = try runObservation2()
			try runObservation2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-1minute-apgar-score.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "survey")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Survey")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Survey")
		XCTAssertEqual(inst.code?.coding?[0].code, "9272-6")
		XCTAssertEqual(inst.code?.coding?[0].display, "1 minute Apgar Score")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "169895004")
		XCTAssertEqual(inst.code?.coding?[1].display, "Apgar at 1 minute")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "1 minute Apgar Score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "32406-1")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "1 minute Apgar Color")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "249227004")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Apgar color score")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.text, "Apgar color score")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6722-8")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "The baby's whole body is completely bluish-gray or pale")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].code, "0")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarcolor")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.text, "0. The baby's whole body is completely bluish-gray or pale")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "32407-9")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "1 minute Apgar Heart Rate")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].code, "249223000")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].display, "Apgar heart rate score")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[1].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].code, "LA6716-0")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].display, "No heart rate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].code, "0")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarheartrate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.text, "0. No heart rate")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].code, "32409-5")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].display, "1 minute Apgar Reflex Irritability")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].code, "249226008")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].display, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[2].code?.text, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].code, "LA6719-4")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].display, "No response to airways being suctioned")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].code, "0")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarreflexirritability")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.text, "0. No response to airways being suctioned")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].code, "32408-7")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].display, "1 minute Apgar Muscle Tone")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].code, "249225007")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].display, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[3].code?.text, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].code, "LA6713-7")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].display, "Limp; no movement")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].code, "0")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarmuscletone")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.text, "0. Limp; no movement")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].code, "32410-3")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].display, "1 minute Apgar Respiratory effort")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].code, "249224006")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].display, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[4].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].code, "LA6725-1")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].display, "Not breathing")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].code, "0")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarrespiratoryeffort")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.text, "0. Not breathing")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18T22:33:22Z")
		XCTAssertEqual(inst.id, "1minute-apgar-score")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/infant")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "0"))
		
		return inst
	}
	
	func testObservation3() {
		do {
			let instance = try runObservation3()
			try runObservation3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-20minute-apgar-score.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "survey")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Survey")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Survey")
		XCTAssertEqual(inst.code?.coding?[0].code, "443849008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Apgar score at 20 minutes")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "20 minute Apgar Score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "249227004")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Apgar color score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.text, "Apgar color score")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6724-4")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Good color all over")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarcolor")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.text, "2. Good color all over")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "249223000")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "Apgar heart rate score")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[1].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].code, "LA6718-6")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].display, "At least 100 beats per minute")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarheartrate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.text, "2. At least 100 beats per minute")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].code, "249226008")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].display, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[2].code?.text, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].code, "LA6721-0")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].display, "Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarreflexirritability")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.text, "2. Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].code, "249225007")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].display, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[3].code?.text, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].code, "LA6715-2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].display, "Active motion ")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarmuscletone")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.text, "2. Active motion")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].code, "249224006")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].display, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[4].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].code, "LA6727-7")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].display, "Good, strong cry; normal rate and effort of breathing    ")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarrespiratoryeffort")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.text, "2. Good, strong cry; normal rate and effort of breathing")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18T22:33:22Z")
		XCTAssertEqual(inst.id, "20minute-apgar-score")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/infant")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "10"))
		
		return inst
	}
	
	func testObservation4() {
		do {
			let instance = try runObservation4()
			try runObservation4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-2minute-apgar-score.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "survey")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Survey")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Survey")
		XCTAssertEqual(inst.code?.coding?[0].code, "9273-4")
		XCTAssertEqual(inst.code?.coding?[0].display, "2 minute Apgar Score")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "2 minute Apgar Score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "249227004")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Apgar color score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.text, "Apgar color score")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6723-6")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Good color in body with bluish hands or feet")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].code, "1")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarcolor")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.text, "1. Good color in body with bluish hands or feet")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "249223000")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "Apgar heart rate score")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[1].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].code, "LA6720-2")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].display, "Fewer than 100 beats per minute")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].code, "1")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarheartrate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.text, "1. Fewer than 100 beats per minute")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].code, "249226008")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].display, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[2].code?.text, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].code, "LA6721-0")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].display, "Grimace during suctioning")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].code, "1")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarreflexirritability")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.text, "1. Grimace during suctioning")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].code, "249225007")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].display, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[3].code?.text, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].code, "LA6714-5")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].display, "Some flexion of arms and legs")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].code, "1")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarmuscletone")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.text, "1. Some flexion of arms and legs")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].code, "249224006")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].display, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[4].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].code, "LA6726-9")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].display, "Weak cry; may sound like whimpering, slow or irregular breathing")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].code, "1")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarrespiratoryeffort")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.text, "1. Weak cry; may sound like whimpering, slow or irregular breathing")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18T22:33:22Z")
		XCTAssertEqual(inst.id, "2minute-apgar-score")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/infant")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "5"))
		
		return inst
	}
	
	func testObservation5() {
		do {
			let instance = try runObservation5()
			try runObservation5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-5minute-apgar-score.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "survey")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Survey")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Survey")
		XCTAssertEqual(inst.code?.coding?[0].code, "9274-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "5 minute Apgar Score")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "169909004")
		XCTAssertEqual(inst.code?.coding?[1].display, "Apgar at 5 minutes")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "5 minute Apgar Score")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "32411-1")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "5 minute Apgar Color")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "249227004")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Apgar color score")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.text, "Apgar color score")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].code, "LA6724-4")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].display, "Good color all over")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarcolor")
		XCTAssertEqual(inst.component?[0].valueCodeableConcept?.text, "2. Good color all over")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "32412-9")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "5 minute Apgar Heart Rate")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].code, "249223000")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].display, "Apgar heart rate score")
		XCTAssertEqual(inst.component?[1].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[1].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].code, "LA6718-6")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].display, "At least 100 beats per minute")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarheartrate")
		XCTAssertEqual(inst.component?[1].valueCodeableConcept?.text, "2. At least 100 beats per minute")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].code, "32414-5")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].display, "5 minute Apgar Reflex Irritability")
		XCTAssertEqual(inst.component?[2].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].code, "249226008")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].display, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[2].code?.text, "Apgar response to stimulus score")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].code, "LA6721-0")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].display, "Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarreflexirritability")
		XCTAssertEqual(inst.component?[2].valueCodeableConcept?.text, "2. Grimace and pulling away, cough, or sneeze during suctioning")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].code, "32413-7")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].display, "5 minute Apgar Muscle Tone")
		XCTAssertEqual(inst.component?[3].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].code, "249225007")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].display, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[3].code?.text, "Apgar muscle tone score")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].code, "LA6715-2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].display, "Active motion ")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarmuscletone")
		XCTAssertEqual(inst.component?[3].valueCodeableConcept?.text, "2. Active motion")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].code, "32415-2")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].display, "5 minute Apgar Respiratory effort")
		XCTAssertEqual(inst.component?[4].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].code, "249224006")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].display, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[4].code?.text, "Apgar respiratory effort score")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].code, "LA6727-7")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].display, "Good, strong cry; normal rate and effort of breathing    ")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org/la")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].code, "2")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.coding?[1].system?.absoluteString, "http:/acme.ped/apgarrespiratoryeffort")
		XCTAssertEqual(inst.component?[4].valueCodeableConcept?.text, "2. Good, strong cry; normal rate and effort of breathing")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18T22:33:22Z")
		XCTAssertEqual(inst.id, "5minute-apgar-score")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/infant")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "{score}")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "10"))
		
		return inst
	}
	
	func testObservation6() {
		do {
			let instance = try runObservation6()
			try runObservation6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bloodpressure-cancel.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "368209003")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "55284-4")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood pressure systolic & diastolic")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.comment, "In this example, the blood pressure measurements are not available due to cancellation of the order.  Data absent reason is present for each component")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "8480-6")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "271649006")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].code, "bp-s")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].display, "Systolic Blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].system?.absoluteString, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].code, "not-asked")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].display, "Not Asked")
		XCTAssertEqual(inst.component?[0].dataAbsentReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "8462-4")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "Diastolic blood pressure")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].code, "not-asked")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].display, "Not Asked")
		XCTAssertEqual(inst.component?[1].dataAbsentReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/data-absent-reason")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-09-17")
		XCTAssertEqual(inst.id, "blood-pressure-cancel")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "L")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "low")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.interpretation?.text, "Below low normal")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "cancelled")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation7() {
		do {
			let instance = try runObservation7()
			try runObservation7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bloodpressure.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "368209003")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "55284-4")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood pressure systolic & diastolic")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].code, "8480-6")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].code, "271649006")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].display, "Systolic blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].code, "bp-s")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].display, "Systolic Blood pressure")
		XCTAssertEqual(inst.component?[0].code?.coding?[2].system?.absoluteString, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.component?[0].valueQuantity?.code, "mm[Hg]")
		XCTAssertEqual(inst.component?[0].valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.component?[0].valueQuantity?.unit, "mmHg")
		XCTAssertEqual(inst.component?[0].valueQuantity?.value, NSDecimalNumber(string: "107"))
		XCTAssertEqual(inst.component?[1].code?.coding?[0].code, "8462-4")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].display, "Diastolic blood pressure")
		XCTAssertEqual(inst.component?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.component?[1].valueQuantity?.code, "mm[Hg]")
		XCTAssertEqual(inst.component?[1].valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.component?[1].valueQuantity?.unit, "mmHg")
		XCTAssertEqual(inst.component?[1].valueQuantity?.value, NSDecimalNumber(string: "60"))
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-09-17")
		XCTAssertEqual(inst.id, "blood-pressure")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "L")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "low")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.interpretation?.text, "Below low normal")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testObservation8() {
		do {
			let instance = try runObservation8()
			try runObservation8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bmd.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "71341001:272741003=7771000")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?.text, "Left Femur")
		XCTAssertEqual(inst.code?.coding?[0].code, "24701-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Femur DXA Bone density")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "BMD - Left Femur")
		XCTAssertEqual(inst.id, "bmd")
		XCTAssertEqual(inst.performer?[0].display, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "g/cm-2")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "g/cm²")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "0.887"))
		
		return inst
	}
	
	func testObservation9() {
		do {
			let instance = try runObservation9()
			try runObservation9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-eye-color.json")
		
		XCTAssertEqual(inst.code?.text, "eye color")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18")
		XCTAssertEqual(inst.id, "eye-color")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueString, "blue")
		
		return inst
	}
	
	func testObservation10() {
		do {
			let instance = try runObservation10()
			try runObservation10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw")
		}
	}
	
	@discardableResult
	func runObservation10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f001-glucose.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "15074-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Glucose [Moles/volume] in Blood")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T09:30:10+01:00")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6323")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "High")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "6.2"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "3.1"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "mmol/L")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "mmol/l")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "6.3"))
		
		return inst
	}
}
