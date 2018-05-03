//
//  OccupationalDataTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIROccupationalData = Models.OccupationalData
#else
import SwiftFHIR
typealias SwiftFHIROccupationalData = SwiftFHIR.OccupationalData
#endif


class OccupationalDataTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIROccupationalData {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIROccupationalData {
		return try SwiftFHIROccupationalData(json: json)
	}
	
	func testOccupationalData1() {
		do {
			let instance = try runOccupationalData1()
			try runOccupationalData1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OccupationalData successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOccupationalData1(_ json: FHIRJSON? = nil) throws -> SwiftFHIROccupationalData {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "occupationaldata-example.json")
		
		XCTAssertEqual(inst.combatZonePeriod?[0].end?.description, "1983-05-30")
		XCTAssertEqual(inst.combatZonePeriod?[0].start?.description, "1983-02-15")
		XCTAssertEqual(inst.date?.description, "2012-05-02T14:10:00Z")
		XCTAssertEqual(inst.employmentStatus?[0].code?.coding?[0].code, "224363007")
		XCTAssertEqual(inst.employmentStatus?[0].code?.coding?[0].display, "Employed")
		XCTAssertEqual(inst.employmentStatus?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.employmentStatus?[0].effective?.start?.description, "1980-04-01")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "https://acme.org/identifiers")
		XCTAssertEqual(inst.identifier?.value, "1234")
		XCTAssertEqual(inst.informant?[0].reference, "Patient/example")
		XCTAssertEqual(inst.pastOrPresentJob?[0].effective?.start?.description, "1989-04-02")
		XCTAssertEqual(inst.pastOrPresentJob?[0].employer?.reference, "Organization/odh-1-example")
		XCTAssertEqual(inst.pastOrPresentJob?[0].industry?.coding?[0].display, "Justice, public order, and safety activities")
		XCTAssertEqual(inst.pastOrPresentJob?[0].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[0].industry?.text, "City police department")
		XCTAssertEqual(inst.pastOrPresentJob?[0].occupation?.coding?[0].display, "Police and sheriff's patrol officers")
		XCTAssertEqual(inst.pastOrPresentJob?[0].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[0].occupation?.text, "Patrol officer")
		XCTAssertEqual(inst.pastOrPresentJob?[0].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[0].workClassification?.coding?[0].code, "452491000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[0].workClassification?.coding?[0].display, "Paid work in local government")
		XCTAssertEqual(inst.pastOrPresentJob?[0].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[0].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[0].workClassification?.text, "Paid work, local government")
		XCTAssertEqual(inst.pastOrPresentJob?[1].effective?.end?.description, "1989-04-01")
		XCTAssertEqual(inst.pastOrPresentJob?[1].effective?.start?.description, "1986-09-14")
		XCTAssertEqual(inst.pastOrPresentJob?[1].employer?.reference, "Organization/odh-2-example")
		XCTAssertEqual(inst.pastOrPresentJob?[1].industry?.coding?[0].display, "Justice, public order, and safety activities")
		XCTAssertEqual(inst.pastOrPresentJob?[1].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[1].industry?.text, "County sheriff's office")
		XCTAssertEqual(inst.pastOrPresentJob?[1].occupation?.coding?[0].display, "Police and sheriff's patrol officers")
		XCTAssertEqual(inst.pastOrPresentJob?[1].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[1].occupation?.text, "Sheriff's patrol officer")
		XCTAssertEqual(inst.pastOrPresentJob?[1].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[1].workClassification?.coding?[0].code, "452491000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[1].workClassification?.coding?[0].display, "Paid work in local government")
		XCTAssertEqual(inst.pastOrPresentJob?[1].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[1].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[1].workClassification?.text, "Paid work, local government")
		XCTAssertEqual(inst.pastOrPresentJob?[2].effective?.end?.description, "1986-09-13")
		XCTAssertEqual(inst.pastOrPresentJob?[2].effective?.start?.description, "1986-06-08")
		XCTAssertEqual(inst.pastOrPresentJob?[2].employer?.reference, "Organization/odh-2-example")
		XCTAssertEqual(inst.pastOrPresentJob?[2].industry?.coding?[0].display, "Justice, public order, and safety activities")
		XCTAssertEqual(inst.pastOrPresentJob?[2].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[2].industry?.text, "County sheriff's office")
		XCTAssertEqual(inst.pastOrPresentJob?[2].occupation?.coding?[0].display, "Police and sheriff's patrol officers")
		XCTAssertEqual(inst.pastOrPresentJob?[2].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[2].occupation?.text, "Police cadet")
		XCTAssertEqual(inst.pastOrPresentJob?[2].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[2].workClassification?.coding?[0].code, "452491000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[2].workClassification?.coding?[0].display, "Paid work in local government")
		XCTAssertEqual(inst.pastOrPresentJob?[2].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[2].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[2].workClassification?.text, "Paid work, local government")
		XCTAssertEqual(inst.pastOrPresentJob?[3].effective?.end?.description, "1986-06-07")
		XCTAssertEqual(inst.pastOrPresentJob?[3].effective?.start?.description, "1985-10-27")
		XCTAssertEqual(inst.pastOrPresentJob?[3].employer?.reference, "Organization/odh-3-example")
		XCTAssertEqual(inst.pastOrPresentJob?[3].industry?.coding?[0].display, "U. S. Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[3].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[3].industry?.text, "US Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[3].occupation?.coding?[0].display, "Military, rank not specified")
		XCTAssertEqual(inst.pastOrPresentJob?[3].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[3].occupation?.text, "Rifleman (category: General Infantry)")
		XCTAssertEqual(inst.pastOrPresentJob?[3].supervisoryLevel?.coding?[0].code, "E-4")
		XCTAssertEqual(inst.pastOrPresentJob?[3].supervisoryLevel?.coding?[0].display, "US Military Enlisted paygrade E-4")
		XCTAssertEqual(inst.pastOrPresentJob?[3].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[3].workClassification?.coding?[0].code, "452121000124102")
		XCTAssertEqual(inst.pastOrPresentJob?[3].workClassification?.coding?[0].display, "Paid work in United States armed forces ")
		XCTAssertEqual(inst.pastOrPresentJob?[3].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[3].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[3].workClassification?.text, "Paid work, national armed forces")
		XCTAssertEqual(inst.pastOrPresentJob?[4].effective?.end?.description, "1985-10-26")
		XCTAssertEqual(inst.pastOrPresentJob?[4].effective?.start?.description, "1983-09-18")
		XCTAssertEqual(inst.pastOrPresentJob?[4].employer?.reference, "Organization/odh-3-example")
		XCTAssertEqual(inst.pastOrPresentJob?[4].industry?.coding?[0].display, "U. S. Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[4].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[4].industry?.text, "US Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[4].occupation?.coding?[0].display, "Military, rank not specified")
		XCTAssertEqual(inst.pastOrPresentJob?[4].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[4].occupation?.text, "Rifleman (category: General Infantry)")
		XCTAssertEqual(inst.pastOrPresentJob?[4].supervisoryLevel?.coding?[0].code, "E-3")
		XCTAssertEqual(inst.pastOrPresentJob?[4].supervisoryLevel?.coding?[0].display, "US Military Enlisted paygrade E-3")
		XCTAssertEqual(inst.pastOrPresentJob?[4].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[4].workClassification?.coding?[0].code, "452121000124102")
		XCTAssertEqual(inst.pastOrPresentJob?[4].workClassification?.coding?[0].display, "Paid work in United States armed forces ")
		XCTAssertEqual(inst.pastOrPresentJob?[4].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[4].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[4].workClassification?.text, "Paid work, national armed forces")
		XCTAssertEqual(inst.pastOrPresentJob?[5].effective?.end?.description, "1983-08-17")
		XCTAssertEqual(inst.pastOrPresentJob?[5].effective?.start?.description, "1983-01-16")
		XCTAssertEqual(inst.pastOrPresentJob?[5].employer?.reference, "Organization/odh-3-example")
		XCTAssertEqual(inst.pastOrPresentJob?[5].industry?.coding?[0].display, "U. S. Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[5].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[5].industry?.text, "US Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[5].occupation?.coding?[0].display, "Military, rank not specified")
		XCTAssertEqual(inst.pastOrPresentJob?[5].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[5].occupation?.text, "Rifleman (category: General Infantry)")
		XCTAssertEqual(inst.pastOrPresentJob?[5].supervisoryLevel?.coding?[0].code, "E-2")
		XCTAssertEqual(inst.pastOrPresentJob?[5].supervisoryLevel?.coding?[0].display, "US Military Enlisted paygrade E-2")
		XCTAssertEqual(inst.pastOrPresentJob?[5].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[5].workClassification?.coding?[0].code, "452121000124102")
		XCTAssertEqual(inst.pastOrPresentJob?[5].workClassification?.coding?[0].display, "Paid work in United States armed forces ")
		XCTAssertEqual(inst.pastOrPresentJob?[5].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[5].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[5].workClassification?.text, "Paid work, national armed forces")
		XCTAssertEqual(inst.pastOrPresentJob?[6].effective?.end?.description, "1983-01-15")
		XCTAssertEqual(inst.pastOrPresentJob?[6].effective?.start?.description, "1982-06-06")
		XCTAssertEqual(inst.pastOrPresentJob?[6].employer?.reference, "Organization/odh-3-example")
		XCTAssertEqual(inst.pastOrPresentJob?[6].industry?.coding?[0].display, "U. S. Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[6].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[6].industry?.text, "US Marines")
		XCTAssertEqual(inst.pastOrPresentJob?[6].occupation?.coding?[0].display, "Military, rank not specified")
		XCTAssertEqual(inst.pastOrPresentJob?[6].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[6].occupation?.text, "Basic Marine (category: General, Not Occupationally Qualified)")
		XCTAssertEqual(inst.pastOrPresentJob?[6].supervisoryLevel?.coding?[0].code, "E-1")
		XCTAssertEqual(inst.pastOrPresentJob?[6].supervisoryLevel?.coding?[0].display, "US Military Enlisted paygrade E-1")
		XCTAssertEqual(inst.pastOrPresentJob?[6].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[6].workClassification?.coding?[0].code, "452121000124102")
		XCTAssertEqual(inst.pastOrPresentJob?[6].workClassification?.coding?[0].display, "Paid work in United States armed forces ")
		XCTAssertEqual(inst.pastOrPresentJob?[6].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[6].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[6].workClassification?.text, "Paid work, national armed forces")
		XCTAssertEqual(inst.pastOrPresentJob?[7].effective?.end?.description, "1982-06-05")
		XCTAssertEqual(inst.pastOrPresentJob?[7].effective?.start?.description, "1980-04-01")
		XCTAssertEqual(inst.pastOrPresentJob?[7].employer?.reference, "Organization/odh-4-example")
		XCTAssertEqual(inst.pastOrPresentJob?[7].industry?.coding?[0].display, "Restaurants and other food services")
		XCTAssertEqual(inst.pastOrPresentJob?[7].industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.pastOrPresentJob?[7].industry?.text, "Fast food restaurant")
		XCTAssertEqual(inst.pastOrPresentJob?[7].occupation?.coding?[0].display, "Combined food preparation and serving workers, including fast food")
		XCTAssertEqual(inst.pastOrPresentJob?[7].occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.pastOrPresentJob?[7].occupation?.text, "Fast food worker")
		XCTAssertEqual(inst.pastOrPresentJob?[7].supervisoryLevel?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.10.20.22.4.224")
		XCTAssertEqual(inst.pastOrPresentJob?[7].workClassification?.coding?[0].code, "452141000124109")
		XCTAssertEqual(inst.pastOrPresentJob?[7].workClassification?.coding?[0].display, "Paid work not self-employed")
		XCTAssertEqual(inst.pastOrPresentJob?[7].workClassification?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.pastOrPresentJob?[7].workClassification?.coding?[0].version, "http://snomed.info/sct/731000124108")
		XCTAssertEqual(inst.pastOrPresentJob?[7].workClassification?.text, "Paid work, not self-employed")
		XCTAssertEqual(inst.recorder?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.usualWork?.duration?.code, "a")
		XCTAssertEqual(inst.usualWork?.duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.usualWork?.duration?.unit, "years")
		XCTAssertEqual(inst.usualWork?.duration?.value, "31")
		XCTAssertEqual(inst.usualWork?.industry?.coding?[0].display, "Justice, public order, and safety activities")
		XCTAssertEqual(inst.usualWork?.industry?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.315")
		XCTAssertEqual(inst.usualWork?.industry?.text, "City police department")
		XCTAssertEqual(inst.usualWork?.occupation?.coding?[0].display, "Police and sheriff's patrol officers")
		XCTAssertEqual(inst.usualWork?.occupation?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.114222.4.5.314")
		XCTAssertEqual(inst.usualWork?.occupation?.text, "Patrol officer")
		XCTAssertEqual(inst.usualWork?.start?.description, "1986")
		
		return inst
	}
}
