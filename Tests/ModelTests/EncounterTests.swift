//
//  EncounterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREncounter = Models.Encounter
#else
import SwiftFHIR
typealias SwiftFHIREncounter = SwiftFHIR.Encounter
#endif


class EncounterTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREncounter {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREncounter {
		return try SwiftFHIREncounter(json: json)
	}
	
	func testEncounter1() {
		do {
			let instance = try runEncounter1()
			try runEncounter1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-home.json")
		
		XCTAssertEqual(inst.`class`?.code, "HH")
		XCTAssertEqual(inst.`class`?.display, "home health")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.contained?[0].id, "home")
		XCTAssertEqual(inst.id, "home")
		XCTAssertEqual(inst.location?[0].location?.display, "Client's home")
		XCTAssertEqual(inst.location?[0].location?.reference, "#home")
		XCTAssertEqual(inst.location?[0].period?.end?.description, "2015-01-17T16:30:00+10:00")
		XCTAssertEqual(inst.location?[0].period?.start?.description, "2015-01-17T16:00:00+10:00")
		XCTAssertEqual(inst.location?[0].status, EncounterLocationStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[0].period?.end?.description, "2015-01-17T16:30:00+10:00")
		XCTAssertEqual(inst.participant?[0].period?.start?.description, "2015-01-17T16:00:00+10:00")
		XCTAssertEqual(inst.period?.end?.description, "2015-01-17T16:30:00+10:00")
		XCTAssertEqual(inst.period?.start?.description, "2015-01-17T16:00:00+10:00")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Encounter with patient @example who is at home</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEncounter2() {
		do {
			let instance = try runEncounter2()
			try runEncounter2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter2(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f201-20130404.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "temp")!)
		XCTAssertEqual(inst.identifier?[0].value, "Encounter_Roel_20130404")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.priority?.coding?[0].code, "17621005")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Normal")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].text, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/f201")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "11429006")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Consultation")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter3() {
		do {
			let instance = try runEncounter3()
			try runEncounter3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter3(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f003-abscess.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].code, "305956004")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].display, "Referral by physician")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].code, "306689006")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].display, "Discharge to home")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.value, "93042")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/encounters")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "v6751")
		XCTAssertEqual(inst.length?.code, "min")
		XCTAssertEqual(inst.length?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length?.unit, "min")
		XCTAssertEqual(inst.length?.value, "90")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.display, "E.M. van den Broek")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f001")
		XCTAssertEqual(inst.priority?.coding?[0].code, "103391001")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Non-urgent ear, nose and throat admission")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "18099001")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Retropharyngeal abscess")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/f001")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "270427003")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Patient-initiated encounter")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter4() {
		do {
			let instance = try runEncounter4()
			try runEncounter4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter4(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example.json")
		
		XCTAssertEqual(inst.`class`?.code, "IMP")
		XCTAssertEqual(inst.`class`?.display, "inpatient encounter")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Encounter with patient @example</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEncounter5() {
		do {
			let instance = try runEncounter5()
			try runEncounter5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter5(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f002-lung.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].code, "305997006")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].display, "Referral by radiologist")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].code, "306689006")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].display, "Discharge to home")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.value, "98682")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/encounters")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "v3251")
		XCTAssertEqual(inst.length?.code, "min")
		XCTAssertEqual(inst.length?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length?.unit, "min")
		XCTAssertEqual(inst.length?.value, "140")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.display, "M.I.M Versteegh")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f003")
		XCTAssertEqual(inst.priority?.coding?[0].code, "103391001")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Urgent")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "34068001")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Partial lobectomy of lung")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider?.display, "BMC")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/f001")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "270427003")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Patient-initiated encounter")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter6() {
		do {
			let instance = try runEncounter6()
			try runEncounter6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter6(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f203-20130311.json")
		
		XCTAssertEqual(inst.`class`?.code, "IMP")
		XCTAssertEqual(inst.`class`?.display, "inpatient encounter")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.account?[0].reference, "Account/example")
		XCTAssertEqual(inst.appointment?[0].reference, "Appointment/example")
		XCTAssertEqual(inst.basedOn?[0].reference, "ServiceRequest/myringotomy")
		XCTAssertEqual(inst.diagnosis?[0].condition?.reference, "Condition/stroke")
		XCTAssertEqual(inst.diagnosis?[0].rank, 1)
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].code, "AD")
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].display, "Admission diagnosis")
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diagnosis-role")
		XCTAssertEqual(inst.diagnosis?[1].condition?.reference, "Condition/f201")
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].code, "DD")
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].display, "Discharge diagnosis")
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diagnosis-role")
		XCTAssertEqual(inst.episodeOfCare?[0].reference, "EpisodeOfCare/example")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].code, "309902002")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].display, "Clinical Oncology Department")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.destination?.reference, "Location/2")
		XCTAssertEqual(inst.hospitalization?.dietPreference?[0].coding?[0].code, "276026009")
		XCTAssertEqual(inst.hospitalization?.dietPreference?[0].coding?[0].display, "Fluid balance regulation")
		XCTAssertEqual(inst.hospitalization?.dietPreference?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.origin?.reference, "Location/2")
		XCTAssertEqual(inst.hospitalization?.reAdmission?.coding?[0].display, "readmitted")
		XCTAssertEqual(inst.hospitalization?.specialArrangement?[0].coding?[0].code, "wheel")
		XCTAssertEqual(inst.hospitalization?.specialArrangement?[0].coding?[0].display, "Wheelchair")
		XCTAssertEqual(inst.hospitalization?.specialArrangement?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/encounter-special-arrangements")
		XCTAssertEqual(inst.hospitalization?.specialCourtesy?[0].coding?[0].code, "NRM")
		XCTAssertEqual(inst.hospitalization?.specialCourtesy?[0].coding?[0].display, "normal courtesy")
		XCTAssertEqual(inst.hospitalization?.specialCourtesy?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-EncounterSpecialCourtesy")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "temp")!)
		XCTAssertEqual(inst.identifier?[0].value, "Encounter_Roel_20130311")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.partOf?.reference, "Encounter/f203")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.participant?[0].type?[0].coding?[0].code, "PART")
		XCTAssertEqual(inst.participant?[0].type?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.period?.end?.description, "2013-03-20")
		XCTAssertEqual(inst.period?.start?.description, "2013-03-11")
		XCTAssertEqual(inst.priority?.coding?[0].code, "394849002")
		XCTAssertEqual(inst.priority?.coding?[0].display, "High priority")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].text, "The patient seems to suffer from bilateral pneumonia and renal insufficiency, most likely due to chemotherapy.")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/2")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.statusHistory?[0].period?.start?.description, "2013-03-08")
		XCTAssertEqual(inst.statusHistory?[0].status, EncounterStatus(rawValue: "arrived")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "183807002")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Inpatient stay for nine days")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter7() {
		do {
			let instance = try runEncounter7()
			try runEncounter7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter7(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-xcda.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.id, "xcda")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://healthcare.example.org/identifiers/enocunter")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "1234213.52345873")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/xcda1")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "T-D8200")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Arm")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEncounter8() {
		do {
			let instance = try runEncounter8()
			try runEncounter8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter8(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f202-20130128.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.diagnosis?[0].condition?.display, "Complications from Roel's TPF chemotherapy on January 28th, 2013")
		XCTAssertEqual(inst.diagnosis?[0].rank, 2)
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].code, "AD")
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].display, "Admission diagnosis")
		XCTAssertEqual(inst.diagnosis?[0].use?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diagnosis-role")
		XCTAssertEqual(inst.diagnosis?[1].condition?.display, "The patient is treated for a tumor")
		XCTAssertEqual(inst.diagnosis?[1].rank, 1)
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].code, "CC")
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].display, "Chief complaint")
		XCTAssertEqual(inst.diagnosis?[1].use?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diagnosis-role")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "temp")!)
		XCTAssertEqual(inst.identifier?[0].value, "Encounter_Roel_20130128")
		XCTAssertEqual(inst.length?.code, "min")
		XCTAssertEqual(inst.length?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length?.unit, "minutes")
		XCTAssertEqual(inst.length?.value, "56")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.priority?.coding?[0].code, "103391001")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Urgent")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].text, "The patient is treated for a tumor.")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/f201")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "367336001")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Chemotherapy")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testEncounter9() {
		do {
			let instance = try runEncounter9()
			try runEncounter9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter9(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-emerg.json")
		
		XCTAssertEqual(inst.`class`?.code, "IMP")
		XCTAssertEqual(inst.`class`?.display, "inpatient encounter")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.classHistory?[0].`class`?.code, "EMER")
		XCTAssertEqual(inst.classHistory?[0].`class`?.display, "emergency")
		XCTAssertEqual(inst.classHistory?[0].`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.classHistory?[0].period?.end?.description, "2017-02-01T09:27:00+10:00")
		XCTAssertEqual(inst.classHistory?[0].period?.start?.description, "2017-02-01T07:15:00+10:00")
		XCTAssertEqual(inst.classHistory?[1].`class`?.code, "IMP")
		XCTAssertEqual(inst.classHistory?[1].`class`?.display, "inpatient encounter")
		XCTAssertEqual(inst.classHistory?[1].`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.classHistory?[1].period?.start?.description, "2017-02-01T09:27:00+10:00")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].code, "emd")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].display, "From accident/emergency department")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/admit-source")
		XCTAssertEqual(inst.id, "emerg")
		XCTAssertEqual(inst.location?[0].location?.display, "Emergency Waiting Room")
		XCTAssertEqual(inst.location?[0].period?.end?.description, "2017-02-01T08:45:00+10:00")
		XCTAssertEqual(inst.location?[0].period?.start?.description, "2017-02-01T07:15:00+10:00")
		XCTAssertEqual(inst.location?[0].status, EncounterLocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.location?[1].location?.display, "Emergency")
		XCTAssertEqual(inst.location?[1].period?.end?.description, "2017-02-01T09:27:00+10:00")
		XCTAssertEqual(inst.location?[1].period?.start?.description, "2017-02-01T08:45:00+10:00")
		XCTAssertEqual(inst.location?[1].status, EncounterLocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.location?[2].location?.display, "Ward 1, Room 42, Bed 1")
		XCTAssertEqual(inst.location?[2].period?.end?.description, "2017-02-01T12:15:00+10:00")
		XCTAssertEqual(inst.location?[2].period?.start?.description, "2017-02-01T09:27:00+10:00")
		XCTAssertEqual(inst.location?[2].status, EncounterLocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.location?[3].location?.display, "Ward 1, Room 42, Bed 1")
		XCTAssertEqual(inst.location?[3].period?.end?.description, "2017-02-01T12:45:00+10:00")
		XCTAssertEqual(inst.location?[3].period?.start?.description, "2017-02-01T12:15:00+10:00")
		XCTAssertEqual(inst.location?[3].status, EncounterLocationStatus(rawValue: "reserved")!)
		XCTAssertEqual(inst.location?[4].location?.display, "Ward 1, Room 42, Bed 1")
		XCTAssertEqual(inst.location?[4].period?.start?.description, "2017-02-01T12:45:00+10:00")
		XCTAssertEqual(inst.location?[4].status, EncounterLocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.period?.start?.description, "2017-02-01T07:15:00+10:00")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.statusHistory?[0].period?.end?.description, "2017-02-01T07:35:00+10:00")
		XCTAssertEqual(inst.statusHistory?[0].period?.start?.description, "2017-02-01T07:15:00+10:00")
		XCTAssertEqual(inst.statusHistory?[0].status, EncounterStatus(rawValue: "arrived")!)
		XCTAssertEqual(inst.statusHistory?[1].period?.end?.description, "2017-02-01T08:45:00+10:00")
		XCTAssertEqual(inst.statusHistory?[1].period?.start?.description, "2017-02-01T07:35:00+10:00")
		XCTAssertEqual(inst.statusHistory?[1].status, EncounterStatus(rawValue: "triaged")!)
		XCTAssertEqual(inst.statusHistory?[2].period?.end?.description, "2017-02-01T12:15:00+10:00")
		XCTAssertEqual(inst.statusHistory?[2].period?.start?.description, "2017-02-01T08:45:00+10:00")
		XCTAssertEqual(inst.statusHistory?[2].status, EncounterStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.statusHistory?[3].period?.end?.description, "2017-02-01T12:45:00+10:00")
		XCTAssertEqual(inst.statusHistory?[3].period?.start?.description, "2017-02-01T12:15:00+10:00")
		XCTAssertEqual(inst.statusHistory?[3].status, EncounterStatus(rawValue: "onleave")!)
		XCTAssertEqual(inst.statusHistory?[4].period?.start?.description, "2017-02-01T12:45:00+10:00")
		XCTAssertEqual(inst.statusHistory?[4].status, EncounterStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Emergency visit that escalated into inpatient patient @example</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEncounter10() {
		do {
			let instance = try runEncounter10()
			try runEncounter10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Encounter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEncounter10(_ json: FHIRJSON? = nil) throws -> SwiftFHIREncounter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "encounter-example-f001-heart.json")
		
		XCTAssertEqual(inst.`class`?.code, "AMB")
		XCTAssertEqual(inst.`class`?.display, "ambulatory")
		XCTAssertEqual(inst.`class`?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].code, "305956004")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].display, "Referral by physician")
		XCTAssertEqual(inst.hospitalization?.admitSource?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].code, "306689006")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].display, "Discharge to home")
		XCTAssertEqual(inst.hospitalization?.dischargeDisposition?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.system?.absoluteString, "http://www.amc.nl/zorgportal/identifiers/pre-admissions")
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.hospitalization?.preAdmissionIdentifier?.value, "93042")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.amc.nl/zorgportal/identifiers/visits")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "v1451")
		XCTAssertEqual(inst.length?.code, "min")
		XCTAssertEqual(inst.length?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.length?.unit, "min")
		XCTAssertEqual(inst.length?.value, "140")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].individual?.display, "P. Voigt")
		XCTAssertEqual(inst.participant?[0].individual?.reference, "Practitioner/f002")
		XCTAssertEqual(inst.priority?.coding?[0].code, "310361003")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Non-urgent cardiological admission")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "34068001")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Heart valve replacement")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceProvider?.display, "Burgers University Medical Center")
		XCTAssertEqual(inst.serviceProvider?.reference, "Organization/f001")
		XCTAssertEqual(inst.status, EncounterStatus(rawValue: "finished")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "270427003")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Patient-initiated encounter")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
