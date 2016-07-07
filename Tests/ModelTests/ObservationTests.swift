//
//  ObservationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-07-07.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bloodpressure.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "368209003")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?.coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f001-glucose.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "15074-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Glucose [Moles/volume] in Blood")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T09:30:10+01:00")
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f002-excess.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "11555-0")
		XCTAssertEqual(inst.code?.coding?[0].display, "Base excess in Blood by calculation")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T10:30:10+01:00")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T10:30:10+01:00")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6324")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "High")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "11.2"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "mmol/L")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "mmol/l")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "7.1"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "mmol/L")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "mmol/l")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "12.6"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f003-co2.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "11557-6")
		XCTAssertEqual(inst.code?.coding?[0].display, "Carbon dioxide in blood")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T10:30:10+01:00")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T10:30:10+01:00")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6325")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "High")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "kPa")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "kPa")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "6.0"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "kPa")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "kPa")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "4.8"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "kPa")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "kPa")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "6.2"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f004-erythrocyte.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "789-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Erythrocytes [#/volume] in Blood by Automated count")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T10:30:10+01:00")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T10:30:10+01:00")
		XCTAssertEqual(inst.id, "f004")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6326")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "L")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Low")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "10*12/L")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "10^12/L")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "5.8"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "10*12/L")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "10^12/L")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "4.4"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "10*12/L")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "10 trillion/L")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "4.12"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f005-hemoglobin.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "718-7")
		XCTAssertEqual(inst.code?.coding?[0].display, "Hemoglobin [Mass/volume] in Blood")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2013-04-05T10:30:10+01:00")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2013-04-02T10:30:10+01:00")
		XCTAssertEqual(inst.id, "f005")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/observations")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "6327")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "L")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Low")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f005")
		XCTAssertEqual(inst.referenceRange?[0].high?.code, "g/dL")
		XCTAssertEqual(inst.referenceRange?[0].high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "g/dl")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.referenceRange?[0].low?.code, "g/dL")
		XCTAssertEqual(inst.referenceRange?[0].low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange?[0].low?.unit, "g/dl")
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "7.5"))
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "g/dL")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "g/dl")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "7.2"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f202-temperature.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "74262004")
		XCTAssertEqual(inst.bodySite?.coding?[0].display, "Oral cavity")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?.coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/observation-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "BT")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body temperature")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.lab")
		XCTAssertEqual(inst.code?.coding?[1].code, "8310-5")
		XCTAssertEqual(inst.code?.coding?[1].display, "Body temperature")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[2].code, "8331-1")
		XCTAssertEqual(inst.code?.coding?[2].display, "Oral temperature")
		XCTAssertEqual(inst.code?.coding?[2].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[3].code, "56342008")
		XCTAssertEqual(inst.code?.coding?[3].display, "Temperature taking")
		XCTAssertEqual(inst.code?.coding?[3].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Temperature")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-04T13:27:00+01:00")
		XCTAssertEqual(inst.method?.coding?[0].code, "89003005")
		XCTAssertEqual(inst.method?.coding?[0].display, "Oral temperature taking")
		XCTAssertEqual(inst.method?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f201")
		XCTAssertEqual(inst.referenceRange?[0].high?.unit, "degrees C")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "38.2"))
		XCTAssertEqual(inst.status, "entered-in-error")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "Cel")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "degrees C")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "39"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f203-bicarbonate.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "1963-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bicarbonate [Moles/?volume] in Serum")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "365722008")
		XCTAssertEqual(inst.code?.coding?[1].display, "Bicarbonate level")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "https://intranet.aumc.nl/labvalues")
		XCTAssertEqual(inst.identifier?[0].value, "1304-03720-Bicarbonate")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "166698001")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Serum bicarbonate level normal")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.interpretation?.coding?[1].code, "N")
		XCTAssertEqual(inst.interpretation?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-04T14:34:00+01:00")
		XCTAssertEqual(inst.method?.text, "enzymatic method")
		XCTAssertEqual(inst.performer?[0].display, "Luigi Maas")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f202")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "29"))
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "22"))
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].code, "normal")
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].display, "Normal Range")
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/referencerange-meaning")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "258813002")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueQuantity?.unit, "mmol/L")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "28"))
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-f204-creatinine.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "20005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Creatinine(Serum)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "https://intranet.aumc.nl/labtestcodes")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "https://intranet.aumc.nl/labvalues")
		XCTAssertEqual(inst.identifier?[0].value, "1304-03720-Creatinine")
		XCTAssertEqual(inst.interpretation?.coding?[0].code, "166717003")
		XCTAssertEqual(inst.interpretation?.coding?[0].display, "Serum creatinine raised")
		XCTAssertEqual(inst.interpretation?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.interpretation?.coding?[1].code, "H")
		XCTAssertEqual(inst.interpretation?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued?.description, "2013-04-04T14:34:00+01:00")
		XCTAssertEqual(inst.performer?[0].display, "Luigi Maas")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f202")
		XCTAssertEqual(inst.referenceRange?[0].high?.value, NSDecimalNumber(string: "104"))
		XCTAssertEqual(inst.referenceRange?[0].low?.value, NSDecimalNumber(string: "64"))
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].code, "normal")
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].display, "Normal Range")
		XCTAssertEqual(inst.referenceRange?[0].meaning?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/referencerange-meaning")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.valueQuantity?.code, "258814008")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueQuantity?.unit, "umol/L")
		XCTAssertEqual(inst.valueQuantity?.value, NSDecimalNumber(string: "122"))
		
		return inst
	}
}
