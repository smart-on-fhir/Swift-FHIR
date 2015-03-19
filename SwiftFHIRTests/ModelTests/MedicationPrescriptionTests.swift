//
//  MedicationPrescriptionTests.swift
//  MedicationPrescriptionTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription2() {
		let instance = testMedicationPrescription2_impl()
		testMedicationPrescription2_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription2_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription3() {
		let instance = testMedicationPrescription3_impl()
		testMedicationPrescription3_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription3_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription4() {
		let instance = testMedicationPrescription4_impl()
		testMedicationPrescription4_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription4_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription5() {
		let instance = testMedicationPrescription5_impl()
		testMedicationPrescription5_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription5_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f005-enalapril.json")
		
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription6() {
		let instance = testMedicationPrescription6_impl()
		testMedicationPrescription6_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription6_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f201-salmeterol.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "PUFF")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.code!, "259032004")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.units!, "daily")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.code!, "415215001")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.units!, "puffs")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.value!, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].code!, "320276009")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].display!, "Salmeterol+fluticasone 25/250ug inhaler")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "321667001")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Respiratory tract")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].end!.description, "2013-05-11")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 2)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].code!, "74262004")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].display!, "Oral cavity")
		XCTAssertEqual(inst.dosageInstruction![0].site!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "aerosol 25/250ug/do 120do 2x - 1 dose - daily")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.medication!.display!, "25ug Salmeterol + 250ug Fluticasone")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f201")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.prescriber!.display!, "Dokter Bonsig")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference!.display!, "fever")
		XCTAssertEqual(inst.reasonReference!.reference!, "Condition/f201")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription7() {
		let instance = testMedicationPrescription7_impl()
		testMedicationPrescription7_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription7_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f202-flucloxacilline.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.code!, "258702006")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.units!, "hours")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.value!, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.code!, "258682000")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.units!, "gram")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.value!, NSDecimalNumber(string: "12"))
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].code!, "323493005")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].display!, "Injected floxacillin")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "47625008")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "Intravenous route")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].end!.description, "2013-03-21")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.event![0].start!.description, "2013-03-11")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "Flucloxacilline 12g/24h")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on March eleventh 2013")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f203")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.medication!.display!, "Flucloxacilline")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f202")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference!.display!, "sepsis")
		XCTAssertEqual(inst.reasonReference!.reference!, "Condition/f203")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription8() {
		let instance = testMedicationPrescription8_impl()
		testMedicationPrescription8_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription8_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-f203-paracetamol.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2013-04-04")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.code!, "258702006")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.units!, "hours")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.denominator!.value!, NSDecimalNumber(string: "24"))
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.code!, "258684004")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.units!, "milligram")
		XCTAssertEqual(inst.dosageInstruction![0].maxDosePerPeriod!.numerator!.value!, NSDecimalNumber(string: "3000"))
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].code!, "322236009")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].display!, "Paracetamol 500mg tablet")
		XCTAssertEqual(inst.dosageInstruction![0].method!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].text!, "Paracetamol 3xdaags 1000mg")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on April fourth 2013")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.medication!.display!, "Paracetamol")
		XCTAssertEqual(inst.medication!.reference!, "Medication/f203")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.reasonReference!.display!, "fever")
		XCTAssertEqual(inst.reasonReference!.reference!, "Condition/f201")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription9() {
		let instance = testMedicationPrescription9_impl()
		testMedicationPrescription9_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription9_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example-warfarin.json")
		
		XCTAssertEqual(inst.dateWritten!.description, "2014-01-05")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.code!, "d")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.units!, "days")
		XCTAssertEqual(inst.dispense!.expectedSupplyDuration!.value!, NSDecimalNumber(string: "60"))
		XCTAssertEqual(inst.dispense!.numberOfRepeatsAllowed!, 2)
		XCTAssertEqual(inst.dispense!.quantity!.code!, "TAB")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.dispense!.quantity!.units!, "tablets")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dosageInstruction![0].additionalInstructions!.text!, "Take as directed")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "warfarin")
		XCTAssertEqual(inst.medication!.reference!, "#1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.prescriber!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].code!, "49436004")
		XCTAssertEqual(inst.reasonCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationPrescription10() {
		let instance = testMedicationPrescription10_impl()
		testMedicationPrescription10_impl(json: instance.asJSON())
	}
	
	func testMedicationPrescription10_impl(json: JSONDictionary? = nil) -> MedicationPrescription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationprescription-example.json")
		
		XCTAssertEqual(inst.dispense!.quantity!.code!, "ml")
		XCTAssertEqual(inst.dispense!.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dispense!.quantity!.units!, "ml")
		XCTAssertEqual(inst.dispense!.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduledTiming!.repeat!.units!, "d")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.prescriber!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
