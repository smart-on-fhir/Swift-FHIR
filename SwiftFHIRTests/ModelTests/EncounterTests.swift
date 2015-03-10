//
//  EncounterTests.swift
//  EncounterTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EncounterTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Encounter {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Encounter {
		let instance = Encounter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEncounter1() {
		let instance = testEncounter1_impl()
		testEncounter1_impl(json: instance.asJSON())
	}
	
	func testEncounter1_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f001-heart.json")
		
		XCTAssertEqual(inst.class_fhir!, "outpatient")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].code!, "305956004")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].display!, "Referral by physician")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.system!.absoluteString!, "http://www.amc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.use!, "official")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.value!, "93042")
		XCTAssertFalse(inst.hospitalization!.reAdmission!)
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.amc.nl/zorgportal/identifiers/visits")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "v1451")
		XCTAssertEqual(inst.length!.code!, "min")
		XCTAssertEqual(inst.length!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length!.units!, "min")
		XCTAssertEqual(inst.length!.value!, NSDecimalNumber(string: "140"))
		XCTAssertEqual(inst.participant![0].individual!.display!, "P. Voigt")
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.priority!.coding![0].code!, "310361003")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Non-urgent cardiological admission")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.coding![0].code!, "34068001")
		XCTAssertEqual(inst.reason!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst.reason!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider!.display!, "Burgers University Medical Center")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f001")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "270427003")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter2() {
		let instance = testEncounter2_impl()
		testEncounter2_impl(json: instance.asJSON())
	}
	
	func testEncounter2_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f002-lung.json")
		
		XCTAssertEqual(inst.class_fhir!, "outpatient")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].code!, "305997006")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].display!, "Referral by radiologist")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.use!, "official")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.value!, "98682")
		XCTAssertFalse(inst.hospitalization!.reAdmission!)
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/encounters")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "v3251")
		XCTAssertEqual(inst.length!.code!, "min")
		XCTAssertEqual(inst.length!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length!.units!, "min")
		XCTAssertEqual(inst.length!.value!, NSDecimalNumber(string: "140"))
		XCTAssertEqual(inst.participant![0].individual!.display!, "M.I.M Versteegh")
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.priority!.coding![0].code!, "103391001")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Urgent")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.coding![0].code!, "34068001")
		XCTAssertEqual(inst.reason!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.reason!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider!.display!, "BMC")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f001")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "270427003")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter3() {
		let instance = testEncounter3_impl()
		testEncounter3_impl(json: instance.asJSON())
	}
	
	func testEncounter3_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f003-abscess.json")
		
		XCTAssertEqual(inst.class_fhir!, "outpatient")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].code!, "305956004")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].display!, "Referral by physician")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst.hospitalization!.dischargeDisposition!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.use!, "official")
		XCTAssertEqual(inst.hospitalization!.preAdmissionIdentifier!.value!, "93042")
		XCTAssertFalse(inst.hospitalization!.reAdmission!)
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/encounters")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "v6751")
		XCTAssertEqual(inst.length!.code!, "min")
		XCTAssertEqual(inst.length!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length!.units!, "min")
		XCTAssertEqual(inst.length!.value!, NSDecimalNumber(string: "90"))
		XCTAssertEqual(inst.participant![0].individual!.display!, "E.M. van den Broek")
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.priority!.coding![0].code!, "103391001")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Non-urgent ear, nose and throat admission")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.coding![0].code!, "18099001")
		XCTAssertEqual(inst.reason!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst.reason!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f001")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "270427003")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter4() {
		let instance = testEncounter4_impl()
		testEncounter4_impl(json: instance.asJSON())
	}
	
	func testEncounter4_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f201-20130404.json")
		
		XCTAssertEqual(inst.class_fhir!, "outpatient")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.identifier![0].label!, "Roel's encounter on April fourth 2013")
		XCTAssertEqual(inst.identifier![0].use!, "temp")
		XCTAssertEqual(inst.identifier![0].value!, "Encounter_Roel_20130404")
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.priority!.coding![0].code!, "17621005")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Normal")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.text!, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f201")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "11429006")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Consultation")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter5() {
		let instance = testEncounter5_impl()
		testEncounter5_impl(json: instance.asJSON())
	}
	
	func testEncounter5_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f202-20130128.json")
		
		XCTAssertEqual(inst.class_fhir!, "outpatient")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.identifier![0].label!, "Roel's encounter on January 28th, 2013")
		XCTAssertEqual(inst.identifier![0].use!, "temp")
		XCTAssertEqual(inst.identifier![0].value!, "Encounter_Roel_20130128")
		XCTAssertEqual(inst.indication![0].display!, "Roel's TPF chemotherapy on January 28th, 2013")
		XCTAssertEqual(inst.indication![0].reference!, "Procedure/f201")
		XCTAssertEqual(inst.length!.code!, "258701004")
		XCTAssertEqual(inst.length!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.length!.units!, "minutes")
		XCTAssertEqual(inst.length!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.priority!.coding![0].code!, "103391001")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Urgent")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.text!, "The patient is treated for a tumor.")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f201")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "367336001")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter6() {
		let instance = testEncounter6_impl()
		testEncounter6_impl(json: instance.asJSON())
	}
	
	func testEncounter6_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example-f203-20130311.json")
		
		XCTAssertEqual(inst.class_fhir!, "inpatient")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].code!, "309902002")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].display!, "Clinical Oncology Department")
		XCTAssertEqual(inst.hospitalization!.admitSource!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization!.diet!.coding![0].code!, "276026009")
		XCTAssertEqual(inst.hospitalization!.diet!.coding![0].display!, "Fluid balance regulation")
		XCTAssertEqual(inst.hospitalization!.diet!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertFalse(inst.hospitalization!.reAdmission!)
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.identifier![0].label!, "Roel's encounter on March eleventh 2013")
		XCTAssertEqual(inst.identifier![0].use!, "temp")
		XCTAssertEqual(inst.identifier![0].value!, "Encounter_Roel_20130311")
		XCTAssertEqual(inst.participant![0].individual!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.period!.end!.description, "2013-03-20")
		XCTAssertEqual(inst.period!.start!.description, "2013-03-11")
		XCTAssertEqual(inst.priority!.coding![0].code!, "394849002")
		XCTAssertEqual(inst.priority!.coding![0].display!, "High priority")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.text!, "The patient seems to suffer from bilateral pneumonia and renal insufficiency, most likely due to chemotherapy.")
		XCTAssertEqual(inst.serviceProvider!.reference!, "Organization/f201")
		XCTAssertEqual(inst.status!, "finished")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "183807002")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Inpatient stay for nine days")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter7() {
		let instance = testEncounter7_impl()
		testEncounter7_impl(json: instance.asJSON())
	}
	
	func testEncounter7_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-example.json")
		
		XCTAssertEqual(inst.class_fhir!, "inpatient")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in-progress")
		XCTAssertEqual(inst.text!.div!, "<div>Encounter with patient @example</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testEncounter8() {
		let instance = testEncounter8_impl()
		testEncounter8_impl(json: instance.asJSON())
	}
	
	func testEncounter8_impl(json: JSONDictionary? = nil) -> Encounter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "encounter-qicore-example.json")
		
		XCTAssertEqual(inst.class_fhir!, "inpatient")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in-progress")
		XCTAssertEqual(inst.text!.div!, "<div>Encounter with patient @example</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
