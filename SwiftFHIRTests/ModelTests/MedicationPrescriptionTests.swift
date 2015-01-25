//
//  MedicationPrescriptionTests.swift
//  MedicationPrescriptionTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationPrescriptionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MedicationPrescription {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> MedicationPrescription {
		let instance = MedicationPrescription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationPrescription1() {
		let instance = testMedicationPrescription1_impl()
		testMedicationPrescription1_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription1_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f001-combivent.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-05-25T19:32:52+01:00")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.end!.description, "2013-05-30")
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].end!.description, "2013-11-05")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription2() {
		let instance = testMedicationPrescription2_impl()
		testMedicationPrescription2_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription2_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f001-combivent.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-05-25T19:32:52+01:00")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.end!.description, "2013-05-30")
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].end!.description, "2013-11-05")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription3() {
		let instance = testMedicationPrescription3_impl()
		testMedicationPrescription3_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription3_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f001-combivent.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-05-25T19:32:52+01:00")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "40"))
		XCTAssertEqual(inst.dispense!.numberOfRepeatsAllowed!, 20)
		XCTAssertEqual(inst.dispense!.quantity!.code!, "ug")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.8")
		XCTAssertEqual(inst.dispense!.quantity!.units!, "mcg")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.end!.description, "2013-05-30")
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction![0].additionalInstructions!.text!, "for use during pregnancy, contact physician")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].end!.description, "2013-11-05")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "3 tot 4 maal daags 1 flacon")
		XCTAssertEqual(inst.encounter!.display!, "visit who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9837293")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "13645005")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "Chronic obstructive pulmonary disease")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription4() {
		let instance = testMedicationPrescription4_impl()
		testMedicationPrescription4_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription4_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f002-crestor.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-04-08")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9837343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "28036006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High density lipoprotein cholesterol level")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription5() {
		let instance = testMedicationPrescription5_impl()
		testMedicationPrescription5_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription5_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f002-crestor.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-04-08")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2013-04-08")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-08-04")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9837343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "R.A. van den Berk")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "28036006")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High density lipoprotein cholesterol level")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription6() {
		let instance = testMedicationPrescription6_impl()
		testMedicationPrescription6_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription6_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f003-tolbutamide.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2011-05-01")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "500"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "444780001")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High glucose level in blood")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription7() {
		let instance = testMedicationPrescription7_impl()
		testMedicationPrescription7_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription7_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f003-tolbutamide.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2011-05-01")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "500"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "444780001")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High glucose level in blood")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription8() {
		let instance = testMedicationPrescription8_impl()
		testMedicationPrescription8_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription8_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f004-metoprolol.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2011-05-01")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f004")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription9() {
		let instance = testMedicationPrescription9_impl()
		testMedicationPrescription9_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription9_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f004-metoprolol.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2011-05-01")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "50"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9845343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f004")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
	
	func testMedicationPrescription10() {
		let instance = testMedicationPrescription10_impl()
		testMedicationPrescription10_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription10_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f005-enalapril.canonical.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2011-05-01")
		XCTAssertEqual(inst.dispense!.quantity!.code!, "46992007")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "28"))
		XCTAssertEqual(inst.dispense!.validityPeriod!.start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "mg")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "386359008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Administration of drug or medicament via oral route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2011-05-01")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "181220002")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Entire oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "encounter who leads to this priscription")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.id!, "f005")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/portal/prescriptions")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "order9823343")
		XCTAssertEqual(inst.medication!.display!, "prescribed medication")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f005")
		XCTAssertEqual(inst.patient!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.prescriber!.display!, "S.M. Heps")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "38341003")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].display!, "High blood pressure")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
}
