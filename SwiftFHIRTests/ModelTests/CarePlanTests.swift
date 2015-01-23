//
//  CarePlanTests.swift
//  CarePlanTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CarePlanTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CarePlan {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> CarePlan {
		let instance = CarePlan(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCarePlan1() {
		let instance = testCarePlan1_impl()
		testCarePlan1_impl(json: instance.asJSON())
	}
	
	func testCarePlan1_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f001-heart.canonical.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "64915003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Operation on heart")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "P. Voigt")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f002")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "recovery surgery on heart of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2903")
		XCTAssertEqual(inst.modified!.description, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "P. Voigt")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan2() {
		let instance = testCarePlan2_impl()
		testCarePlan2_impl(json: instance.asJSON())
	}
	
	func testCarePlan2_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f001-heart.canonical.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "64915003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Operation on heart")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "P. Voigt")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f002")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "recovery surgery on heart of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2903")
		XCTAssertEqual(inst.modified!.description, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "P. Voigt")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan3() {
		let instance = testCarePlan3_impl()
		testCarePlan3_impl(json: instance.asJSON())
	}
	
	func testCarePlan3_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f001-heart.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "64915003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Operation on heart")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "P. Voigt")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f002")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "recovery surgery on heart of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2903")
		XCTAssertEqual(inst.modified!.description, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "P. Voigt")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan4() {
		let instance = testCarePlan4_impl()
		testCarePlan4_impl(json: instance.asJSON())
	}
	
	func testCarePlan4_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f002-lung.canonical.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f003")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "succesful surgery on lung of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished with minor complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2934")
		XCTAssertEqual(inst.modified!.description, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-07-07")
		XCTAssertEqual(inst.period!.start!.description, "2011-07-06")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan5() {
		let instance = testCarePlan5_impl()
		testCarePlan5_impl(json: instance.asJSON())
	}
	
	func testCarePlan5_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f002-lung.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f003")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "succesful surgery on lung of patient")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished with minor complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP2934")
		XCTAssertEqual(inst.modified!.description, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-07-07")
		XCTAssertEqual(inst.period!.start!.description, "2011-07-06")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan6() {
		let instance = testCarePlan6_impl()
		testCarePlan6_impl(json: instance.asJSON())
	}
	
	func testCarePlan6_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f003-pharynx.canonical.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "E.M. van den broek")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f001")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "Retropharyngeal abscess removal")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP3953")
		XCTAssertEqual(inst.modified!.description, "2013-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "E.M. van den broek")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan7() {
		let instance = testCarePlan7_impl()
		testCarePlan7_impl(json: instance.asJSON())
	}
	
	func testCarePlan7_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f003-pharynx.json")
		
		XCTAssertTrue(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].display!, "E.M. van den broek")
		XCTAssertEqual(inst.activity![0].simple!.performer![0].reference!, "Practitioner/f001")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].description!, "Retropharyngeal abscess removal")
		XCTAssertEqual(inst.goal![0].notes!, "goal accomplished without complications")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/careplans")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "CP3953")
		XCTAssertEqual(inst.modified!.description, "2013-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.participant![0].member!.display!, "E.M. van den broek")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.status!, "completed")
		
		return inst
	}
	
	func testCarePlan8() {
		let instance = testCarePlan8_impl()
		testCarePlan8_impl(json: instance.asJSON())
	}
	
	func testCarePlan8_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f201-renal.canonical.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "diet")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "284093001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Potassium supplementation")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.code!, "258718000")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.units!, "mmol")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.value!, NSDecimalNumber(string: "80"))
		XCTAssertEqual(inst.activity![0].simple!.product!.display!, "Potassium")
		XCTAssertEqual(inst.activity![0].simple!.product!.reference!, "Substance/f203")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "daily")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "observation")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].code!, "306005")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].display!, "Echography of kidney")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![1].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "Roel's renal insufficiency")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f204")
		XCTAssertEqual(inst.goal![0].description!, "Re-established renal function with at least healthy nutrients.")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.modified!.description, "2013-03-11")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "425268008")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Review of care plan")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant![1].member!.display!, "Nurse Carla Espinosa")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/f204")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "229774002")
		XCTAssertEqual(inst.participant![1].role!.coding![0].display!, "Carer")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-13")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-11")
		XCTAssertEqual(inst.status!, "planned")
		
		return inst
	}
	
	func testCarePlan9() {
		let instance = testCarePlan9_impl()
		testCarePlan9_impl(json: instance.asJSON())
	}
	
	func testCarePlan9_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f201-renal.json")
		
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "diet")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "284093001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Potassium supplementation")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.code!, "258718000")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.units!, "mmol")
		XCTAssertEqual(inst.activity![0].simple!.dailyAmount!.value!, NSDecimalNumber(string: "80"))
		XCTAssertEqual(inst.activity![0].simple!.product!.display!, "Potassium")
		XCTAssertEqual(inst.activity![0].simple!.product!.reference!, "Substance/f203")
		XCTAssertEqual(inst.activity![0].simple!.scheduledString!, "daily")
		XCTAssertEqual(inst.activity![0].status!, "completed")
		XCTAssertFalse(inst.activity![1].prohibited!)
		XCTAssertEqual(inst.activity![1].simple!.category!, "observation")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].code!, "306005")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].display!, "Echography of kidney")
		XCTAssertEqual(inst.activity![1].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![1].status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "Roel's renal insufficiency")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f204")
		XCTAssertEqual(inst.goal![0].description!, "Re-established renal function with at least healthy nutrients.")
		XCTAssertEqual(inst.goal![0].status!, "achieved")
		XCTAssertEqual(inst.modified!.description, "2013-03-11")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "425268008")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Review of care plan")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant![1].member!.display!, "Nurse Carla Espinosa")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/f204")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "229774002")
		XCTAssertEqual(inst.participant![1].role!.coding![0].display!, "Carer")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-13")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-11")
		XCTAssertEqual(inst.status!, "planned")
		
		return inst
	}
	
	func testCarePlan10() {
		let instance = testCarePlan10_impl()
		testCarePlan10_impl(json: instance.asJSON())
	}
	
	func testCarePlan10_impl(json: JSONDictionary? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f202-malignancy.canonical.json")
		
		XCTAssertEqual(inst.activity![0].actionResulting![0].display!, "Roel's Chemotherapy")
		XCTAssertEqual(inst.activity![0].actionResulting![0].reference!, "Procedure/f201")
		XCTAssertFalse(inst.activity![0].prohibited!)
		XCTAssertEqual(inst.activity![0].simple!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].code!, "367336001")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.activity![0].simple!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].simple!.product!.reference!, "#tpf")
		XCTAssertEqual(inst.activity![0].status!, "in progress")
		XCTAssertEqual(inst.concern![0].display!, "Roel's head-neck tumor")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f202")
		XCTAssertEqual(inst.goal![0].description!, "Elimination of the spenoid bone tumor")
		XCTAssertEqual(inst.goal![0].status!, "in progress")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "28995006")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Treated with")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.status!, "active")
		
		return inst
	}
}
