//
//  MedicationDispenseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MedicationDispenseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MedicationDispense {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> MedicationDispense {
		let instance = MedicationDispense(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationDispense1() {
		let instance = testMedicationDispense1_impl()
		testMedicationDispense1_impl(json: instance.asJSON())
	}
	
	func testMedicationDispense1_impl(json: FHIRJSON? = nil) -> MedicationDispense {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationdispense-qicore-example.json")
		
		XCTAssertEqual(inst.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].doseQuantity!.value!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/pharmacy-core-doseType")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "440231000124106")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Maintenance dose")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/pharmacy-core-infuseOver")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![1].valueQuantity!.code!, "m")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![1].valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![1].valueQuantity!.units!, "min")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![1].valueQuantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/pharmacy-core-minDosePerPeriod")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.denominator!.code!, "day")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.denominator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.denominator!.units!, "day")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.numerator!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.numerator!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![2].valueRatio!.numerator!.value!, NSDecimalNumber(string: "15"))
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![3].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/pharmacy-core-maxDeliveryVolume")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![3].valueQuantity!.code!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![3].valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![3].valueQuantity!.units!, "ml")
		XCTAssertEqual(inst.dosageInstruction![0].extension_fhir![3].valueQuantity!.value!, NSDecimalNumber(string: "15"))
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosageInstruction![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosageInstruction![0].scheduleTiming!.repeat!.frequency!, 3)
		XCTAssertEqual(inst.dosageInstruction![0].scheduleTiming!.repeat!.period!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosageInstruction![0].scheduleTiming!.repeat!.periodUnits!, "d")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/pharmacy-core-refillsRemaining")
		XCTAssertEqual(inst.extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/medicationdispense-validityPeriod")
		XCTAssertEqual(inst.extension_fhir![1].valuePeriod!.end!.description, "2012-06-10")
		XCTAssertEqual(inst.extension_fhir![1].valuePeriod!.start!.description, "2012-05-30")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.quantity!.code!, "ml")
		XCTAssertEqual(inst.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.quantity!.units!, "ml")
		XCTAssertEqual(inst.quantity!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst.substitution!.type!.coding![0].system!.absoluteString!, "http://example.org/MedDispSubType")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst.whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		
		return inst
	}
}
