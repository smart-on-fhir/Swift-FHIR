//
//  MedicationOrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MedicationOrderTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.MedicationOrder {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.MedicationOrder {
		let instance = SwiftFHIR.MedicationOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationOrder1() {
		do {
			let instance = try runMedicationOrder1()
			try runMedicationOrder1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f001-combivent.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2013-05-25T19:32:52+01:00")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.code, "d")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.system?.absoluteString, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.unit, "days")
		XCTAssertEqual(inst.dispenseRequest?.expectedSupplyDuration?.value, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst.dispenseRequest?.numberOfRepeatsAllowed, UInt(20))
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "ug")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system?.absoluteString, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.unit, "mcg")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.end?.description, "2013-05-30")
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction?[0].additionalInstructions?.text, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "ml")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "ml")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "394899003")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "181220002")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].text, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.end?.description, "2013-11-05")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.encounter?.display, "visit who leads to this priscription")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "order9837293")
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f001")
		XCTAssertEqual(inst.patient?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.prescriber?.display, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "13645005")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder2() {
		do {
			let instance = try runMedicationOrder2()
			try runMedicationOrder2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f002-crestor.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2013-04-08")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "46992007")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "386359008")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "181220002")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.encounter?.display, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "order9837343")
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f002")
		XCTAssertEqual(inst.patient?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.prescriber?.display, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "28036006")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "High density lipoprotein cholesterol level")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder3() {
		do {
			let instance = try runMedicationOrder3()
			try runMedicationOrder3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f003-tolbutamide.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2011-05-01")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "46992007")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "500"))
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "386359008")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "181220002")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.encounter?.display, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f002")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "order9845343")
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f003")
		XCTAssertEqual(inst.patient?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.prescriber?.display, "S.M. Heps")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "444780001")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "High glucose level in blood")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder4() {
		do {
			let instance = try runMedicationOrder4()
			try runMedicationOrder4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f004-metoprolol.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2011-05-01")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "46992007")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "386359008")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "181220002")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.encounter?.display, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.id, "f004")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "order9845343")
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f004")
		XCTAssertEqual(inst.patient?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.prescriber?.display, "S.M. Heps")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "38341003")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "High blood pressure")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder5() {
		do {
			let instance = try runMedicationOrder5()
			try runMedicationOrder5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f005-enalapril.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2011-05-01")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.code, "46992007")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispenseRequest?.quantity?.value, NSDecimalNumber(string: "28"))
		XCTAssertEqual(inst.dispenseRequest?.validityPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.unit, "mg")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "386359008")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "181220002")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.encounter?.display, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.id, "f005")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "order9823343")
		XCTAssertEqual(inst.medicationReference?.display, "prescribed medication")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f005")
		XCTAssertEqual(inst.patient?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.prescriber?.display, "S.M. Heps")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "38341003")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "High blood pressure")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder6() {
		do {
			let instance = try runMedicationOrder6()
			try runMedicationOrder6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f201-salmeterol.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.code, "PUFF")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.system?.absoluteString, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.dosageInstruction?[0].doseQuantity?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.code, "259032004")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.unit, "daily")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.code, "415215001")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.unit, "puffs")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.value, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].code, "320276009")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].display, "Salmeterol+fluticasone 25/250ug inhaler")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "321667001")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Respiratory tract")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].code, "74262004")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].display, "Oral cavity")
		XCTAssertEqual(inst.dosageInstruction?[0].siteCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].text, "aerosol 25/250ug/do 120do 2x - 1 dose - daily")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.end?.description, "2013-05-11")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.frequency, 2)
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.period, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.periodUnits, "d")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.medicationReference?.display, "25ug Salmeterol + 250ug Fluticasone")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f201")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.prescriber?.display, "Dokter Bonsig")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference?.display, "fever")
		XCTAssertEqual(inst.reasonReference?.reference, "Condition/f201")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder7() {
		do {
			let instance = try runMedicationOrder7()
			try runMedicationOrder7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f202-flucloxacilline.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.code, "258702006")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.unit, "hours")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.value, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.code, "258682000")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.unit, "gram")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.value, NSDecimalNumber(string: "12"))
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].code, "323493005")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].display, "Injected floxacillin")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].code, "47625008")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].display, "Intravenous route")
		XCTAssertEqual(inst.dosageInstruction?[0].route?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].text, "Flucloxacilline 12g/24h")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.end?.description, "2013-03-21")
		XCTAssertEqual(inst.dosageInstruction?[0].timing?.repeat_fhir?.boundsPeriod?.start?.description, "2013-03-11")
		XCTAssertEqual(inst.encounter?.display, "Roel's encounter on March eleventh 2013")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f203")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.medicationReference?.display, "Flucloxacilline")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f202")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference?.display, "sepsis")
		XCTAssertEqual(inst.reasonReference?.reference, "Condition/f203")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testMedicationOrder8() {
		do {
			let instance = try runMedicationOrder8()
			try runMedicationOrder8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test MedicationOrder successfully, but threw")
		}
	}
	
	@discardableResult
	func runMedicationOrder8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MedicationOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationorder-example-f203-paracetamol.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2013-04-04")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.code, "258702006")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.unit, "hours")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.denominator?.value, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.code, "258684004")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.unit, "milligram")
		XCTAssertEqual(inst.dosageInstruction?[0].maxDosePerPeriod?.numerator?.value, NSDecimalNumber(string: "3000"))
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].code, "322236009")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].display, "Paracetamol 500mg tablet")
		XCTAssertEqual(inst.dosageInstruction?[0].method?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction?[0].text, "Paracetamol 3xdaags 1000mg")
		XCTAssertEqual(inst.encounter?.display, "Roel's encounter on April fourth 2013")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f201")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.medicationReference?.display, "Paracetamol")
		XCTAssertEqual(inst.medicationReference?.reference, "Medication/f203")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference?.display, "fever")
		XCTAssertEqual(inst.reasonReference?.reference, "Condition/f201")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
