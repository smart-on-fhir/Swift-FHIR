//
//  ServiceRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRServiceRequest = Models.ServiceRequest
#else
import SwiftFHIR
typealias SwiftFHIRServiceRequest = SwiftFHIR.ServiceRequest
#endif


class ServiceRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRServiceRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRServiceRequest {
		return try SwiftFHIRServiceRequest(json: json)
	}
	
	func testServiceRequest1() {
		do {
			let instance = try runServiceRequest1()
			try runServiceRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example2.json")
		
		XCTAssertEqual(inst.asNeededCodeableConcept?.text, "as needed to clear mucus")
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/gpvisit")
		XCTAssertEqual(inst.code?.coding?[0].code, "34431008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Physiotherapy of chest (regime/therapy) ")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "signature")
		XCTAssertEqual(inst.contained?[1].id, "cystic-fibrosis")
		XCTAssertEqual(inst.id, "physiotherapy")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].display, "Placer Identifier")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0001")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.duration, "15")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.durationMax, "25")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.durationUnit, "min")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequencyMax, 4)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.reasonReference?[0].reference, "#cystic-fibrosis")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Author's Signature")
		XCTAssertEqual(inst.relevantHistory?[0].reference, "#signature")
		XCTAssertEqual(inst.requester?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest2() {
		do {
			let instance = try runServiceRequest2()
			try runServiceRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example3.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.code?.coding?[0].code, "359962006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Turning patient in bed (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.doNotPerform, true)
		XCTAssertEqual(inst.id, "do-not-turn")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0002")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Patient has a spinal fracture")
		XCTAssertEqual(inst.requester?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest3() {
		do {
			let instance = try runServiceRequest3()
			try runServiceRequest3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-lipid.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "LIPID")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "fasting")
		XCTAssertEqual(inst.contained?[1].id, "serum")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "lipid")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "2345234234234")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.note?[0].text, "patient is afraid of needles")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/f202")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "V173")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.specimen?[0].display, "Serum specimen")
		XCTAssertEqual(inst.specimen?[0].reference, "#serum")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.supportingInfo?[0].display, "Fasting status")
		XCTAssertEqual(inst.supportingInfo?[0].reference, "#fasting")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest4() {
		do {
			let instance = try runServiceRequest4()
			try runServiceRequest4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-colonoscopy-bx.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.code?.coding?[0].code, "76164006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy of colon (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Biopsy of colon")
		XCTAssertEqual(inst.id, "colon-biopsy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.performer?[0].display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.requisition?.system?.absoluteString, "http://bumc.org/requisitions")
		XCTAssertEqual(inst.requisition?.value, "req12345")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest5() {
		do {
			let instance = try runServiceRequest5()
			try runServiceRequest5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example4.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "229115003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bench Press (regime/therapy) ")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "benchpress")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.count, 20)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.countMax, 30)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequency, 3)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.periodUnit, "wk")
		XCTAssertEqual(inst.patientInstruction, "Start with 30kg 10-15 repetitions for three sets and increase in increments of 5kg when you feel ready")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest6() {
		do {
			let instance = try runServiceRequest6()
			try runServiceRequest6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-edu.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-08-16")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "311401005")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Patient education (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Education")
		XCTAssertEqual(inst.code?.coding?[0].code, "48023004")
		XCTAssertEqual(inst.code?.coding?[0].display, "Breast self-examination technique education (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Health education - breast examination")
		XCTAssertEqual(inst.id, "education")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-08-16")
		XCTAssertEqual(inst.performer?[0].display, "Pamela Educator, RN")
		XCTAssertEqual(inst.reasonCode?[0].text, "early detection of breast mass")
		XCTAssertEqual(inst.requester?.display, "Angela Care, MD")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Jane Doe")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest7() {
		do {
			let instance = try runServiceRequest7()
			try runServiceRequest7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-ventilation.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-02-20")
		XCTAssertEqual(inst.code?.coding?[0].code, "40617009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Artificial respiration (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Mechanical Ventilation")
		XCTAssertEqual(inst.id, "vent")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.orderDetail?[0].coding?[0].code, "243144002")
		XCTAssertEqual(inst.orderDetail?[0].coding?[0].display, "Patient triggered inspiratory assistance (procedure)")
		XCTAssertEqual(inst.orderDetail?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.orderDetail?[0].text, "IPPB")
		XCTAssertEqual(inst.orderDetail?[1].text, " Initial Settings : Sens: -1 cm H20 Pressure 15 cm H2O moderate flow:  Monitor VS every 15 minutes x 4 at the start of mechanical ventilation, then routine for unit OR every 5 hr")
		XCTAssertEqual(inst.performer?[0].display, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCode?[0].text, "chronic obstructive lung disease (COLD)")
		XCTAssertEqual(inst.requester?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest8() {
		do {
			let instance = try runServiceRequest8()
			try runServiceRequest8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-ambulation.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.basedOn?[0].display, "Maternity care plan")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/preg")
		XCTAssertEqual(inst.code?.coding?[0].code, "62013009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ambulating patient (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Ambulation")
		XCTAssertEqual(inst.id, "ambulation")
		XCTAssertEqual(inst.identifier?[0].value, "45678")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Blood Pressure")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.requester?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest9() {
		do {
			let instance = try runServiceRequest9()
			try runServiceRequest9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-pt.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-09-20")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "36701003")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Both knees (body structure)")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "Both knees")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "386053000")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Evaluation procedure (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Evaluation")
		XCTAssertEqual(inst.code?.coding?[0].code, "710830005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Assessment of passive range of motion (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Assessment of passive range of motion")
		XCTAssertEqual(inst.id, "physical-therapy")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-09-27")
		XCTAssertEqual(inst.performer?[0].display, "Paul Therapist, PT")
		XCTAssertEqual(inst.reasonCode?[0].text, "assessment of mobility limitations due to osteoarthritis")
		XCTAssertEqual(inst.requester?.display, "Ollie Ortho, MD")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testServiceRequest10() {
		do {
			let instance = try runServiceRequest10()
			try runServiceRequest10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceRequest10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicerequest-example-di.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "24627-2")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Chest CT")
		XCTAssertEqual(inst.id, "di")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for metastatic disease")
		XCTAssertEqual(inst.requester?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
