//
//  DeviceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Device {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Device {
		let instance = SwiftFHIR.Device(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDevice1() {
		do {
			let instance = try runDevice1()
			try runDevice1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-f001-feedingtube.json")
		
		XCTAssertEqual(inst.expirationDate?.description, "2020-08-08")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealthhospital/identifier/devices")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Central Supply")
		XCTAssertEqual(inst.manufactureDate?.description, "2015-08-08")
		XCTAssertEqual(inst.owner?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.status, "available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "25062003")
		XCTAssertEqual(inst.type?.coding?[0].display, "Feeding tube, device")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.udiCarrier?.system?.absoluteString, "urn:oid:2.16.840.1.113883.3.3719")
		XCTAssertEqual(inst.udiCarrier?.value, "(01)00000123000017(10)ABC123(17)120415")
		
		return inst
	}
	
	func testDevice2() {
		do {
			let instance = try runDevice2()
			try runDevice2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-ihe-pcd.json")
		
		XCTAssertEqual(inst.id, "ihe-pcd")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "SNO")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Serial Number")
		XCTAssertEqual(inst.identifier?[0].value, "AMID-123-456")
		XCTAssertEqual(inst.lotNumber, "12345")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.model, "A.1.1")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.text, "Vital Signs Monitor")
		
		return inst
	}
	
	func testDevice3() {
		do {
			let instance = try runDevice3()
			try runDevice3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-pacemaker.json")
		
		XCTAssertEqual(inst.contact?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].value, "ext 4352")
		XCTAssertEqual(inst.id, "example-pacemaker")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/devices/pacemakers/octane/serial")
		XCTAssertEqual(inst.identifier?[0].value, "1234-5678-90AB-CDEF")
		XCTAssertEqual(inst.lotNumber, "1234-5678")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.model, "PM/Octane 2014")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "octane2014")
		XCTAssertEqual(inst.type?.coding?[0].display, "Performance pace maker for high octane patients")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://acme.com/devices")
		
		return inst
	}
	
	func testDevice4() {
		do {
			let instance = try runDevice4()
			try runDevice4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-software.json")
		
		XCTAssertEqual(inst.contact?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].value, "http://acme.com")
		XCTAssertEqual(inst.id, "software")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/ehr/client-ids")
		XCTAssertEqual(inst.identifier?[0].value, "goodhealth")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.text, "EHR")
		XCTAssertEqual(inst.url?.absoluteString, "http://acme.com/goodhealth/ehr/")
		XCTAssertEqual(inst.version, "10.23-23423")
		
		return inst
	}
	
	func testDevice5() {
		do {
			let instance = try runDevice5()
			try runDevice5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-udi1.json")
		
		XCTAssertEqual(inst.expirationDate?.description, "2014-11-20")
		XCTAssertEqual(inst.id, "example-udi1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/devices/pacemakers/octane/serial")
		XCTAssertEqual(inst.identifier?[0].value, "1234-5678-90AB-CDEF")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].code, "SNO")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[1].value, "10987654d321")
		XCTAssertEqual(inst.lotNumber, "7654321D")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.model, "PM/Octane 2014")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, "not-available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "09504000059118")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/NamingSystem/gs1-di")
		XCTAssertEqual(inst.type?.coding?[1].code, "468063009")
		XCTAssertEqual(inst.type?.coding?[1].display, "Coated femoral stem prosthesis, modular")
		XCTAssertEqual(inst.type?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?.text, "Coated femoral stem prosthesis, modular")
		XCTAssertEqual(inst.udiCarrier?.system?.absoluteString, "http://hl7.org/fhir/NamingSystem/fda-udi")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].code, "UDI")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.udiCarrier?.value, "{01}09504000059118{17}141120{10}7654321D{21}10987654d321")
		
		return inst
	}
	
	func testDevice6() {
		do {
			let instance = try runDevice6()
			try runDevice6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-udi2.json")
		
		XCTAssertEqual(inst.expirationDate?.description, "2014-02-01")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/device-din")
		XCTAssertEqual(inst.extension_fhir?[0].valueIdentifier?.system?.absoluteString, "http://hl7.org/fhir/NamingSystem/iccbba-din")
		XCTAssertEqual(inst.extension_fhir?[0].valueIdentifier?.value, "A99971312345600")
		XCTAssertEqual(inst.id, "example-udi2")
		XCTAssertEqual(inst.manufactureDate?.description, "2013-02-01")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.model, "Bone,Putty Demineralized")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, "not-available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "A9999XYZ100T0474")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/NamingSystem/iccbba-other-di")
		XCTAssertEqual(inst.type?.text, "DI = A9999XYZ100T0474")
		XCTAssertEqual(inst.udiCarrier?.system?.absoluteString, "http://hl7.org/fhir/NamingSystem/fda-udi")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].code, "UDI")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.udiCarrier?.value, "=+05037=/A9999XYZ100T0474=,000025=A99971312345600=>014032=}013032")
		
		return inst
	}
	
	func testDevice7() {
		do {
			let instance = try runDevice7()
			try runDevice7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-udi3.json")
		
		XCTAssertEqual(inst.expirationDate?.description, "2020-02-02")
		XCTAssertEqual(inst.id, "example-udi3")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "SNO")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].value, "XYZ4567890123 45678")
		XCTAssertEqual(inst.lotNumber, "LOT123456789012345")
		XCTAssertEqual(inst.manufactureDate?.description, "2013-02-02")
		XCTAssertEqual(inst.manufacturer, "GlobalMed, Inc")
		XCTAssertEqual(inst.model, "Ultra Implantable")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, "not-available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "H123PARTNO1234567890120")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/NamingSystem/hibcc-di")
		XCTAssertEqual(inst.type?.text, "DI =H123PARTNO1234567890120")
		XCTAssertEqual(inst.udiCarrier?.system?.absoluteString, "http://hl7.org/fhir/NamingSystem/fda-udi")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].code, "UDI")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.udiCarrier?.value, "+H123PARTNO1234567890120/$$420020216LOT123456789012345/SXYZ4567890123 45678/16D20130202C")
		
		return inst
	}
	
	func testDevice8() {
		do {
			let instance = try runDevice8()
			try runDevice8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-udi4.json")
		
		XCTAssertEqual(inst.id, "example-udi4")
		XCTAssertEqual(inst.lotNumber, "RZ12345678")
		XCTAssertEqual(inst.manufacturer, "GlobalMed, Inc")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.status, "not-available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "1TE123456A")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/NamingSystem/iccbba-blood-di")
		XCTAssertEqual(inst.type?.text, "DI = 1TE123456A")
		XCTAssertEqual(inst.udiCarrier?.system?.absoluteString, "http://hl7.org/fhir/NamingSystem/fda-udi")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].code, "UDI")
		XCTAssertEqual(inst.udiCarrier?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.udiCarrier?.value, "=)1TE123456A&)RZ12345678")
		
		return inst
	}
	
	func testDevice9() {
		do {
			let instance = try runDevice9()
			try runDevice9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw")
		}
	}
	
	@discardableResult
	func runDevice9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example.json")
		
		XCTAssertEqual(inst.contact?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].value, "ext 4352")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst.identifier?[0].value, "345675")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].code, "SNO")
		XCTAssertEqual(inst.identifier?[1].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[1].type?.text, "Serial Number")
		XCTAssertEqual(inst.identifier?[1].value, "AMID-342135-8464")
		XCTAssertEqual(inst.lotNumber, "43453424")
		XCTAssertEqual(inst.manufacturer, "Acme Devices, Inc")
		XCTAssertEqual(inst.model, "AB 45-J")
		XCTAssertEqual(inst.note?[0].authorReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.note?[0].text, "QA Checked")
		XCTAssertEqual(inst.note?[0].time?.description, "2015-06-28T14:03:32+10:00")
		XCTAssertEqual(inst.status, "available")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "86184003")
		XCTAssertEqual(inst.type?.coding?[0].display, "Electrocardiographic monitor and recorder")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?.text, "ECG")
		
		return inst
	}
}
