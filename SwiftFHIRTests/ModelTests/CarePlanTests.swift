//
//  CarePlanTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CarePlanTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CarePlan {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> CarePlan {
		let instance = CarePlan(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCarePlan1() {
		let instance = testCarePlan1_impl()
		testCarePlan1_impl(json: instance.asJSON())
	}
	
	func testCarePlan1_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f001-heart.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "64915003")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "Operation on heart")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "P. Voigt")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "Practitioner/f002")
		XCTAssertTrue(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].detail!.status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f001")
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan2() {
		let instance = testCarePlan2_impl()
		testCarePlan2_impl(json: instance.asJSON())
	}
	
	func testCarePlan2_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f002-lung.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "Practitioner/f003")
		XCTAssertTrue(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledString!, "2011-07-07T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].detail!.status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f002")
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan3() {
		let instance = testCarePlan3_impl()
		testCarePlan3_impl(json: instance.asJSON())
	}
	
	func testCarePlan3_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f003-pharynx.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "E.M. van den broek")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "Practitioner/f001")
		XCTAssertTrue(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledString!, "2011-06-27T09:30:10+01:00")
		XCTAssertEqual(inst.activity![0].detail!.status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "?????")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f201")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f003")
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan4() {
		let instance = testCarePlan4_impl()
		testCarePlan4_impl(json: instance.asJSON())
	}
	
	func testCarePlan4_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f201-renal.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "diet")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "284093001")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "Potassium supplementation")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.dailyAmount!.code!, "258718000")
		XCTAssertEqual(inst.activity![0].detail!.dailyAmount!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.dailyAmount!.units!, "mmol")
		XCTAssertEqual(inst.activity![0].detail!.dailyAmount!.value!, NSDecimalNumber(string: "80"))
		XCTAssertEqual(inst.activity![0].detail!.product!.display!, "Potassium")
		XCTAssertEqual(inst.activity![0].detail!.product!.reference!, "Substance/f203")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledString!, "daily")
		XCTAssertEqual(inst.activity![0].detail!.status!, "completed")
		XCTAssertEqual(inst.activity![1].detail!.category!, "observation")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].code!, "306005")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].display!, "Echography of kidney")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertFalse(inst.activity![1].detail!.prohibited!)
		XCTAssertEqual(inst.activity![1].detail!.status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "Roel's renal insufficiency")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f204")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f201")
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan5() {
		let instance = testCarePlan5_impl()
		testCarePlan5_impl(json: instance.asJSON())
	}
	
	func testCarePlan5_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f202-malignancy.json")
		
		XCTAssertEqual(inst.activity![0].actionResulting![0].display!, "Roel's Chemotherapy")
		XCTAssertEqual(inst.activity![0].actionResulting![0].reference!, "Procedure/f201")
		XCTAssertEqual(inst.activity![0].detail!.category!, "procedure")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "367336001")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.activity![0].detail!.product!.reference!, "#tpf")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.status!, "in-progress")
		XCTAssertEqual(inst.concern![0].display!, "Roel's head-neck tumor")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f202")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "28995006")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Treated with")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan6() {
		let instance = testCarePlan6_impl()
		testCarePlan6_impl(json: instance.asJSON())
	}
	
	func testCarePlan6_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-f203-sepsis.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "observation")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "241541005")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].display!, "High resolution computed tomography of lungs")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.status!, "not-started")
		XCTAssertEqual(inst.concern![0].display!, "Roel's sepsis")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/f203")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.modified!.description, "2013-03-11")
		XCTAssertEqual(inst.participant![0].member!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "425268008")
		XCTAssertEqual(inst.participant![0].role!.coding![0].display!, "Review of care plan")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant![1].member!.display!, "Luigi Maas")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/f202")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "278110001")
		XCTAssertEqual(inst.participant![1].role!.coding![0].display!, "Radiographic imaging")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-04-21")
		XCTAssertEqual(inst.period!.start!.description, "2013-04-14")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan7() {
		let instance = testCarePlan7_impl()
		testCarePlan7_impl(json: instance.asJSON())
	}
	
	func testCarePlan7_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-GPVisit.json")
		
		XCTAssertEqual(inst.activity![0].actionResulting![0].reference!, "Encounter/example")
		XCTAssertEqual(inst.activity![0].detail!.category!, "encounter")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "nursecon")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.activity![0].detail!.code!.text!, "Nurse Consultation")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "Nurse Nancy")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "Practitioner/13")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledPeriod!.end!.description, "2013-01-01T10:50:00+00:00")
		XCTAssertEqual(inst.activity![0].detail!.scheduledPeriod!.start!.description, "2013-01-01T10:38:00+00:00")
		XCTAssertEqual(inst.activity![0].detail!.status!, "completed")
		XCTAssertEqual(inst.activity![1].detail!.category!, "encounter")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].code!, "doccon")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.activity![1].detail!.code!.text!, "Doctor Consultation")
		XCTAssertEqual(inst.activity![1].detail!.performer![0].display!, "Doctor Dave")
		XCTAssertEqual(inst.activity![1].detail!.performer![0].reference!, "Practitioner/14")
		XCTAssertFalse(inst.activity![1].detail!.prohibited!)
		XCTAssertEqual(inst.activity![1].detail!.status!, "scheduled")
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "gpvisit")
		XCTAssertEqual(inst.participant![0].id!, "part1")
		XCTAssertEqual(inst.participant![0].member!.display!, "Nurse Nancy")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Practitioner/13")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "nur")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.participant![0].role!.text!, "nurse")
		XCTAssertEqual(inst.participant![1].id!, "part2")
		XCTAssertEqual(inst.participant![1].member!.display!, "Doctor Dave")
		XCTAssertEqual(inst.participant![1].member!.reference!, "Practitioner/14")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "doc")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.participant![1].role!.text!, "doctor")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst.period!.start!.description, "2013-01-01T10:30:00+00:00")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testCarePlan8() {
		let instance = testCarePlan8_impl()
		testCarePlan8_impl(json: instance.asJSON())
	}
	
	func testCarePlan8_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-integrated.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "other")
		XCTAssertEqual(inst.activity![0].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/StructureDefinition/RevisionDate")
		XCTAssertEqual(inst.activity![0].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![0].detail!.goal![0].reference!, "#g1")
		XCTAssertEqual(inst.activity![0].detail!.note!, "Eve will review photos of high and low density foods and share with her parents")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![0].detail!.status!, "not-started")
		XCTAssertEqual(inst.activity![0].notes!, "9/10/12 Eve eats one meal a day with her parents")
		XCTAssertEqual(inst.activity![1].detail!.category!, "other")
		XCTAssertEqual(inst.activity![1].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![1].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![1].detail!.goal![0].reference!, "#g1")
		XCTAssertEqual(inst.activity![1].detail!.note!, "Eve will ask her dad to asist her to put the head of her bed on blocks")
		XCTAssertFalse(inst.activity![1].detail!.prohibited!)
		XCTAssertEqual(inst.activity![1].detail!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![1].detail!.status!, "not-started")
		XCTAssertEqual(inst.activity![1].notes!, "9/10/12 Eve will sleep in her bed more often than the couch")
		XCTAssertEqual(inst.activity![2].detail!.category!, "other")
		XCTAssertEqual(inst.activity![2].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![2].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![2].detail!.goal![0].reference!, "#g2")
		XCTAssertEqual(inst.activity![2].detail!.note!, "Eve will reduce her intake of coffee and chocolate")
		XCTAssertFalse(inst.activity![2].detail!.prohibited!)
		XCTAssertEqual(inst.activity![2].detail!.scheduledPeriod!.start!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![2].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![3].detail!.category!, "other")
		XCTAssertEqual(inst.activity![3].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![3].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![3].detail!.goal![0].reference!, "#g3")
		XCTAssertEqual(inst.activity![3].detail!.note!, "Eve will walk her friend's dog up and down a big hill 15-30 minutes 3 days a week")
		XCTAssertFalse(inst.activity![3].detail!.prohibited!)
		XCTAssertEqual(inst.activity![3].detail!.scheduledPeriod!.start!.description, "2012-08-27")
		XCTAssertEqual(inst.activity![3].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![3].notes!, "8/27/12 Eve would like to try for 5 days a week.  9/10/12 Eve is still walking the dogs.")
		XCTAssertEqual(inst.activity![4].detail!.category!, "other")
		XCTAssertEqual(inst.activity![4].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![4].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![4].detail!.goal![0].reference!, "#g3")
		XCTAssertEqual(inst.activity![4].detail!.note!, "Eve will walk 3 blocks to her parents house twice a week")
		XCTAssertFalse(inst.activity![4].detail!.prohibited!)
		XCTAssertEqual(inst.activity![4].detail!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![4].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![4].notes!, "8/13/12 Eve walked 4 times the last week.  9/10/12 Eve did not walk to her parents the last week, but has plans to start again")
		XCTAssertEqual(inst.activity![5].detail!.category!, "other")
		XCTAssertEqual(inst.activity![5].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![5].detail!.extension_fhir![0].valueDate!.description, "2012-08-13")
		XCTAssertEqual(inst.activity![5].detail!.goal![0].reference!, "#g4")
		XCTAssertEqual(inst.activity![5].detail!.note!, "Eve will us a calendar to check off after medications are taken")
		XCTAssertFalse(inst.activity![5].detail!.prohibited!)
		XCTAssertEqual(inst.activity![5].detail!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![5].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![6].detail!.category!, "other")
		XCTAssertEqual(inst.activity![6].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![6].detail!.extension_fhir![0].valueDate!.description, "2012-08-27")
		XCTAssertEqual(inst.activity![6].detail!.goal![0].reference!, "#g5")
		XCTAssertEqual(inst.activity![6].detail!.note!, "Eve will use her lights MWF after her shower for 3 minutes")
		XCTAssertFalse(inst.activity![6].detail!.prohibited!)
		XCTAssertEqual(inst.activity![6].detail!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![6].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![7].detail!.category!, "other")
		XCTAssertEqual(inst.activity![7].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![7].detail!.extension_fhir![0].valueDate!.description, "2012-09-10")
		XCTAssertEqual(inst.activity![7].detail!.goal![0].reference!, "#g4")
		XCTAssertEqual(inst.activity![7].detail!.note!, "Eve will use a calendar of a chart to help her remember when to take her medications")
		XCTAssertFalse(inst.activity![7].detail!.prohibited!)
		XCTAssertEqual(inst.activity![7].detail!.scheduledPeriod!.start!.description, "2012-07-10")
		XCTAssertEqual(inst.activity![7].detail!.status!, "in-progress")
		XCTAssertEqual(inst.activity![7].notes!, "7/23/12 Eve created a chart as a reminer to take the medications that do not fit in her pill box")
		XCTAssertEqual(inst.activity![8].detail!.category!, "other")
		XCTAssertEqual(inst.activity![8].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![8].detail!.extension_fhir![0].valueDate!.description, "2012-08-23")
		XCTAssertEqual(inst.activity![8].detail!.goal![0].reference!, "#g3")
		XCTAssertEqual(inst.activity![8].detail!.note!, "Eve will start using stretch bands and one step 2 days a week Mon/Wed 6-7am and maybe Friday afternoon")
		XCTAssertFalse(inst.activity![8].detail!.prohibited!)
		XCTAssertEqual(inst.activity![8].detail!.scheduledPeriod!.start!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![8].detail!.status!, "on-hold")
		XCTAssertEqual(inst.activity![8].notes!, "7/30/12 will be able to esume exercise.  8/13/12 Eve prefers to focus on walking at this time")
		XCTAssertEqual(inst.activity![9].detail!.category!, "other")
		XCTAssertEqual(inst.activity![9].detail!.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/General/RevisionDate")
		XCTAssertEqual(inst.activity![9].detail!.extension_fhir![0].valueDate!.description, "2012-07-23")
		XCTAssertEqual(inst.activity![9].detail!.goal![0].reference!, "#g4")
		XCTAssertEqual(inst.activity![9].detail!.note!, "Eve will match a printed medication worksheet with the medication bottles at home")
		XCTAssertFalse(inst.activity![9].detail!.prohibited!)
		XCTAssertEqual(inst.activity![9].detail!.scheduledPeriod!.start!.description, "2012-07-10")
		XCTAssertEqual(inst.activity![9].detail!.status!, "completed")
		XCTAssertEqual(inst.concern![0].display!, "GERDS")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.concern![1].display!, "Obesity")
		XCTAssertEqual(inst.concern![1].reference!, "#p2")
		XCTAssertEqual(inst.concern![2].display!, "Psoriasis")
		XCTAssertEqual(inst.concern![2].reference!, "#p3")
		XCTAssertEqual(inst.goal![0].reference!, "#g1")
		XCTAssertEqual(inst.goal![1].reference!, "#g2")
		XCTAssertEqual(inst.goal![2].reference!, "#g3")
		XCTAssertEqual(inst.goal![3].reference!, "#g4")
		XCTAssertEqual(inst.goal![4].reference!, "#g5")
		XCTAssertEqual(inst.id!, "integrate")
		XCTAssertEqual(inst.modified!.description, "2012-09-10")
		XCTAssertEqual(inst.notes!, "Patient family is not ready to commit to goal setting at this time.  Goal setting will be addressed in the future")
		XCTAssertEqual(inst.patient!.display!, "Eve Everywoman")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCarePlan9() {
		let instance = testCarePlan9_impl()
		testCarePlan9_impl(json: instance.asJSON())
	}
	
	func testCarePlan9_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example-pregnancy.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "encounter")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].code!, "1an")
		XCTAssertEqual(inst.activity![0].detail!.code!.coding![0].system!.absoluteString!, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity![0].detail!.code!.text!, "First Antenatal encounter")
		XCTAssertEqual(inst.activity![0].detail!.note!, "The first antenatal encounter. This is where a detailed physical examination is performed.             and the pregnanacy discussed with the mother-to-be.")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "#pr1")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledTiming!.repeat!.bounds!.end!.description, "2013-02-28")
		XCTAssertEqual(inst.activity![0].detail!.scheduledTiming!.repeat!.bounds!.start!.description, "2013-02-14")
		XCTAssertEqual(inst.activity![0].detail!.status!, "scheduled")
		XCTAssertEqual(inst.activity![0].extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/careplan#andetails")
		XCTAssertEqual(inst.activity![0].extension_fhir![0].valueUri!.absoluteString!, "http://orionhealth.com/fhir/careplan/1andetails")
		XCTAssertEqual(inst.activity![1].detail!.category!, "encounter")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].code!, "an")
		XCTAssertEqual(inst.activity![1].detail!.code!.coding![0].system!.absoluteString!, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity![1].detail!.code!.text!, "Follow-up Antenatal encounter")
		XCTAssertEqual(inst.activity![1].detail!.note!, "The second antenatal encounter. Discuss any issues that arose from the first antenatal encounter")
		XCTAssertEqual(inst.activity![1].detail!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![1].detail!.performer![0].reference!, "#pr1")
		XCTAssertFalse(inst.activity![1].detail!.prohibited!)
		XCTAssertEqual(inst.activity![1].detail!.scheduledTiming!.repeat!.bounds!.end!.description, "2013-03-14")
		XCTAssertEqual(inst.activity![1].detail!.scheduledTiming!.repeat!.bounds!.start!.description, "2013-03-01")
		XCTAssertEqual(inst.activity![1].detail!.status!, "not-started")
		XCTAssertEqual(inst.activity![2].detail!.category!, "encounter")
		XCTAssertEqual(inst.activity![2].detail!.code!.coding![0].code!, "del")
		XCTAssertEqual(inst.activity![2].detail!.code!.coding![0].system!.absoluteString!, "http://example.org/mySystem")
		XCTAssertEqual(inst.activity![2].detail!.code!.text!, "Delivery")
		XCTAssertEqual(inst.activity![2].detail!.note!, "The delivery.")
		XCTAssertEqual(inst.activity![2].detail!.performer![0].display!, "Mavis Midwife")
		XCTAssertEqual(inst.activity![2].detail!.performer![0].reference!, "#pr1")
		XCTAssertFalse(inst.activity![2].detail!.prohibited!)
		XCTAssertEqual(inst.activity![2].detail!.scheduledTiming!.repeat!.bounds!.end!.description, "2013-09-14")
		XCTAssertEqual(inst.activity![2].detail!.scheduledTiming!.repeat!.bounds!.start!.description, "2013-09-01")
		XCTAssertEqual(inst.activity![2].detail!.status!, "not-started")
		XCTAssertEqual(inst.concern![0].display!, "pregnancy")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/DoNotUse/careplan#lmp")
		XCTAssertEqual(inst.extension_fhir![0].valueDateTime!.description, "2013-01-01")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "preg")
		XCTAssertEqual(inst.participant![0].member!.display!, "Mavis Midwife")
		XCTAssertEqual(inst.participant![0].member!.reference!, "#pr1")
		XCTAssertEqual(inst.participant![0].role!.coding![0].code!, "lmc")
		XCTAssertEqual(inst.participant![0].role!.coding![0].system!.absoluteString!, "http://example.org/mysys")
		XCTAssertEqual(inst.participant![0].role!.text!, "Midwife")
		XCTAssertEqual(inst.participant![1].member!.display!, "Oscar Obstetrician")
		XCTAssertEqual(inst.participant![1].member!.reference!, "#pr2")
		XCTAssertEqual(inst.participant![1].role!.coding![0].code!, "obs")
		XCTAssertEqual(inst.participant![1].role!.coding![0].system!.absoluteString!, "http://example.org/mysys")
		XCTAssertEqual(inst.participant![1].role!.text!, "Obstretitian")
		XCTAssertEqual(inst.patient!.display!, "Eve Everywoman")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.period!.end!.description, "2013-10-01")
		XCTAssertEqual(inst.period!.start!.description, "2013-01-01")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testCarePlan10() {
		let instance = testCarePlan10_impl()
		testCarePlan10_impl(json: instance.asJSON())
	}
	
	func testCarePlan10_impl(json: FHIRJSON? = nil) -> CarePlan {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan-example.json")
		
		XCTAssertEqual(inst.activity![0].detail!.category!, "observation")
		XCTAssertEqual(inst.activity![0].detail!.code!.text!, "a code for weight measurement")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst.activity![0].detail!.performer![0].reference!, "Patient/example")
		XCTAssertFalse(inst.activity![0].detail!.prohibited!)
		XCTAssertEqual(inst.activity![0].detail!.scheduledTiming!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.activity![0].detail!.scheduledTiming!.repeat!.period!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.activity![0].detail!.scheduledTiming!.repeat!.periodUnits!, "d")
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.goal![0].reference!, "#goal")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst.participant![1].member!.display!, "Dorothy Dietition")
		XCTAssertEqual(inst.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.end!.description, "2013-01-01")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
