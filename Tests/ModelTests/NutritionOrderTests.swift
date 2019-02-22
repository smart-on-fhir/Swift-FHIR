//
//  NutritionOrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRNutritionOrder = Models.NutritionOrder
#else
import SwiftFHIR
typealias SwiftFHIRNutritionOrder = SwiftFHIR.NutritionOrder
#endif


class NutritionOrderTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRNutritionOrder {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRNutritionOrder {
		return try SwiftFHIRNutritionOrder(json: json)
	}
	
	func testNutritionOrder1() {
		do {
			let instance = try runNutritionOrder1()
			try runNutritionOrder1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-diabeticsupplement.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "kosher")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "diabeticsupplement")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplement?[0].productName, "Glucerna")
		XCTAssertEqual(inst.supplement?[0].quantity?.unit, "8 oz bottle")
		XCTAssertEqual(inst.supplement?[0].quantity?.value, "1")
		XCTAssertEqual(inst.supplement?[0].schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10T15:00:00Z")
		XCTAssertEqual(inst.supplement?[0].schedule?[0].repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.supplement?[0].schedule?[0].repeat_fhir?.period, "24")
		XCTAssertEqual(inst.supplement?[0].schedule?[0].repeat_fhir?.periodUnit, "h")
		XCTAssertEqual(inst.supplement?[0].schedule?[1].repeat_fhir?.duration, "1")
		XCTAssertEqual(inst.supplement?[0].schedule?[1].repeat_fhir?.durationUnit, "h")
		XCTAssertEqual(inst.supplement?[0].schedule?[1].repeat_fhir?.when?[0], "HS")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].code, "443051000124104")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].display, "Adult diabetes specialty formula")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].code, "1010")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].display, "Adult diabetic formula")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].system?.absoluteString, "http://goodhealthhospital.org/supplement-type-codes")
		XCTAssertEqual(inst.supplement?[0].type?.text, "Adult diabetic formula")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder2() {
		do {
			let instance = try runNutritionOrder2()
			try runNutritionOrder2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-enteralbolus.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.enteralFormula?.additiveProductName, "Acme Lipid Additive")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].code, "lipid")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].display, "Lipid")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/entformula-additive")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.code, "mL")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.unit, "milliliters")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.value, "240")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.boundsPeriod?.start?.description, "2014-09-17T16:00:00Z")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.period, "4")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.periodUnit, "h")
		XCTAssertEqual(inst.enteralFormula?.administrationInstruction, "240 mls every 4hrs ")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaProductName, "Acme High Protein Formula")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].code, "442991000124104")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].display, "Adult high protein formula")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.code, "cal/mL")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.unit, "calories per milliliter")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.value, "1.5")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.code, "mL/d")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.unit, "milliliter/day")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.value, "1440")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].code, "GT")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].display, "Instillation, gastrostomy tube")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "dairy-free")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "enteralbolus")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/nutritionorders")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder3() {
		do {
			let instance = try runNutritionOrder3()
			try runNutritionOrder3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-fiberrestricteddiet.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "dairy-free")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "fiberrestricteddiet")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.code, "g")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.unit, "grams")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.value, "50")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].code, "256674009")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].display, "Fat")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.period, "1")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "15108003")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Restricted fiber diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1000")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "Fiber restricted")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "Fiber restricted diet")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].code, "16208003")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].display, "Low fat diet")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].code, "1100")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].display, "Low Fat")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[1].text, "Low fat diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder4() {
		do {
			let instance = try runNutritionOrder4()
			try runNutritionOrder4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-texture-modified.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.id, "texturemodified")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.period, "1")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.oralDiet?.texture?[0].foodType?.coding?[0].code, "28647000")
		XCTAssertEqual(inst.oralDiet?.texture?[0].foodType?.coding?[0].display, "Meat")
		XCTAssertEqual(inst.oralDiet?.texture?[0].foodType?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.texture?[0].foodType?.text, "Regular, Chopped Meat")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].code, "228049004")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].display, "Chopped food")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.text, "Regular, Chopped Meat")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "435801000124108")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Texture modified diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1010")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "Texture modified diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "Texture modified diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder5() {
		do {
			let instance = try runNutritionOrder5()
			try runNutritionOrder5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-pureeddiet-simple.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.id, "pureeddiet-simple")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].code, "439021000124105")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].display, "Dietary liquid consistency - nectar thick liquid")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].text, "Nectar thick liquids")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.period, "1")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].code, "228055009")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].display, "Liquidized food")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.text, "Pureed")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "226211001")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Pureed diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1010")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "Pureed diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "Pureed diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplement?[0].instruction, "Ensure Pudding at breakfast, lunch, supper")
		XCTAssertEqual(inst.supplement?[0].productName, "Ensure Pudding 4 oz container")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].code, "442971000124100")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].display, "Adult high energy formula")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].code, "1040")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].display, "Adult high energy pudding")
		XCTAssertEqual(inst.supplement?[0].type?.coding?[1].system?.absoluteString, "http://goodhealthhospital.org/supplement-type-codes")
		XCTAssertEqual(inst.supplement?[0].type?.text, "Adult high energy pudding")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder6() {
		do {
			let instance = try runNutritionOrder6()
			try runNutritionOrder6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-infantenteral.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.enteralFormula?.additiveProductName, "Acme High Carbohydrate Additive")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].code, "carbohydrate")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].display, "Carbohydrate")
		XCTAssertEqual(inst.enteralFormula?.additiveType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/entformula-additive")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.code, "[foz_us]")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.unit, "ounces")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].quantity?.value, "4")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.boundsPeriod?.start?.description, "2014-09-17")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.period, "3")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.periodUnit, "h")
		XCTAssertEqual(inst.enteralFormula?.administrationInstruction, "Add high calorie high carbohydrate additive to increase cal/oz from 24 cal/oz to 27 cal/oz.")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaProductName, "Acme Infant Formula + Iron")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].code, "412414007")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].display, "infant formula + iron")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.code, "cal/[foz_us]")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.unit, "calories per ounce")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.value, "20")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.code, "[foz_us]")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.unit, "ounces")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.value, "32")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].code, "PO")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].display, "Swallow, oral")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].userSelected, true)
		XCTAssertEqual(inst.id, "infantenteral")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/nutritionorders")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder7() {
		do {
			let instance = try runNutritionOrder7()
			try runNutritionOrder7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-enteralcontinuous.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].rateQuantity?.code, "mL/h")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].rateQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].rateQuantity?.unit, "ml/hr")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].rateQuantity?.value, "60")
		XCTAssertEqual(inst.enteralFormula?.administration?[0].schedule?.repeat_fhir?.boundsPeriod?.start?.description, "2014-09-17T07:00:00Z")
		XCTAssertEqual(inst.enteralFormula?.administration?[1].rateQuantity?.code, "mL/h")
		XCTAssertEqual(inst.enteralFormula?.administration?[1].rateQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.administration?[1].rateQuantity?.unit, "ml/hr")
		XCTAssertEqual(inst.enteralFormula?.administration?[1].rateQuantity?.value, "80")
		XCTAssertEqual(inst.enteralFormula?.administration?[1].schedule?.repeat_fhir?.boundsPeriod?.start?.description, "2014-09-17T11:00:00Z")
		XCTAssertEqual(inst.enteralFormula?.administration?[2].rateQuantity?.code, "mL/h")
		XCTAssertEqual(inst.enteralFormula?.administration?[2].rateQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.administration?[2].rateQuantity?.unit, "ml/hr")
		XCTAssertEqual(inst.enteralFormula?.administration?[2].rateQuantity?.value, "100")
		XCTAssertEqual(inst.enteralFormula?.administration?[2].schedule?.repeat_fhir?.boundsPeriod?.start?.description, "2014-09-17T15:00:00Z")
		XCTAssertEqual(inst.enteralFormula?.administrationInstruction, "Hold feedings from 7 pm to 7 am. Add MCT oil to increase calories from 1.0 cal/mL to 1.5 cal/mL")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaProductName, " Acme Diabetes Formula")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].code, "6547210000124112")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].display, "Diabetic specialty enteral formula")
		XCTAssertEqual(inst.enteralFormula?.baseFormulaType?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.code, "cal/mL")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.unit, "calories per milliliter")
		XCTAssertEqual(inst.enteralFormula?.caloricDensity?.value, "1")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.code, "mL/d")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.unit, "milliliter/day")
		XCTAssertEqual(inst.enteralFormula?.maxVolumeToDeliver?.value, "880")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].code, "NGT")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].display, "Instillation, nasogastric tube")
		XCTAssertEqual(inst.enteralFormula?.routeofAdministration?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration")
		XCTAssertEqual(inst.id, "enteralcontinuous")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/nutritionorders")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder8() {
		do {
			let instance = try runNutritionOrder8()
			try runNutritionOrder8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-cardiacdiet.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "dairy-free")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "cardiacdiet")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.instruction, "Starting on 2/10 breakfast, maximum 400 ml fluids per meal")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.code, "g")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.unit, "grams")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.value, "2")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].code, "39972003")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].display, "Sodium")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].amount?.code, "mL")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].amount?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].amount?.unit, "milliliter")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].amount?.value, "1500")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].modifier?.coding?[0].code, "33463005")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].modifier?.coding?[0].display, "Fluid")
		XCTAssertEqual(inst.oralDiet?.nutrient?[1].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "386619000")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Low sodium diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1040")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "Low Sodium Diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "Low sodium diet")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].code, "226208002")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].display, "Fluid restricted diet")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].code, "1040")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].display, "Fluid restricted diet")
		XCTAssertEqual(inst.oralDiet?.type?[1].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[1].text, "Fluid restricted diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder9() {
		do {
			let instance = try runNutritionOrder9()
			try runNutritionOrder9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-pureeddiet.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "dairy-free")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "pureeddiet")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].code, "439021000124105")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].display, "Dietary liquid consistency - nectar thick liquid")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.fluidConsistencyType?[0].text, "Nectar thick liquids")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.period, "1")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].code, "228055009")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].display, "Liquidized food")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.texture?[0].modifier?.text, "Pureed")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "226211001")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Pureed diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1010")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "Pureed diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "Pureed diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testNutritionOrder10() {
		do {
			let instance = try runNutritionOrder10()
			try runNutritionOrder10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NutritionOrder successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNutritionOrder10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNutritionOrder {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "nutritionorder-example-diabeticdiet.json")
		
		XCTAssertEqual(inst.allergyIntolerance?[0].display, "Cashew Nuts")
		XCTAssertEqual(inst.allergyIntolerance?[0].reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.dateTime?.description, "2014-09-17")
		XCTAssertEqual(inst.encounter?.display, "Inpatient")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].code, "227493005")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].display, "Cashew Nut")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.excludeFoodModifier?[0].coding?[0].version, "20140730")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].code, "dairy-free")
		XCTAssertEqual(inst.foodPreferenceModifier?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diet")
		XCTAssertEqual(inst.id, "diabeticdiet")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealthhospital.org/nutrition-requests")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.code, "g")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.unit, "grams")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].amount?.value, "75")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].code, "2331003")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].display, "Carbohydrate")
		XCTAssertEqual(inst.oralDiet?.nutrient?[0].modifier?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.boundsPeriod?.start?.description, "2015-02-10")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.period, "1")
		XCTAssertEqual(inst.oralDiet?.schedule?[0].repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].code, "160670007")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].display, "Diabetic diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].code, "1030")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].display, "DD - Diabetic diet")
		XCTAssertEqual(inst.oralDiet?.type?[0].coding?[1].system?.absoluteString, "http://goodhealthhospital.org/diet-type-codes")
		XCTAssertEqual(inst.oralDiet?.type?[0].text, "DD - Diabetic diet")
		XCTAssertEqual(inst.orderer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.orderer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.patient?.display, "Peter Chalmers")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
