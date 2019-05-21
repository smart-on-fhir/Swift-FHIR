//
//  MedicinalProductPackagedTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductPackaged = Models.MedicinalProductPackaged
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductPackaged = SwiftFHIR.MedicinalProductPackaged
#endif


class MedicinalProductPackagedTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductPackaged {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductPackaged {
		return try SwiftFHIRMedicinalProductPackaged(json: json)
	}
	
	func testMedicinalProductPackaged1() {
		do {
			let instance = try runMedicinalProductPackaged1()
			try runMedicinalProductPackaged1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductPackaged successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductPackaged1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductPackaged {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductpackaged-example.json")
		
		XCTAssertEqual(inst.batchIdentifier?[0].outerPackaging?.period?.end?.description, "2016-06-06")
		XCTAssertEqual(inst.batchIdentifier?[0].outerPackaging?.system?.absoluteString, "http://ema.europa.eu/example/baid1")
		XCTAssertEqual(inst.batchIdentifier?[0].outerPackaging?.value, "AAF5699")
		XCTAssertEqual(inst.description_fhir, "ALU-PVC/PVDC BLISTERS. CARTONS OF 10 FILM-COATED TABLETS. ")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/pcid")
		XCTAssertEqual(inst.identifier?[0].value, "{PCID}")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.packageItem?[0].manufacturer?[0].reference, "Organization/example")
		XCTAssertEqual(inst.packageItem?[0].material?[0].coding?[0].code, "PVC")
		XCTAssertEqual(inst.packageItem?[0].material?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageItemContainerMaterial")
		XCTAssertEqual(inst.packageItem?[0].material?[1].coding?[0].code, "PVDC")
		XCTAssertEqual(inst.packageItem?[0].material?[1].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageItemContainerMaterial")
		XCTAssertEqual(inst.packageItem?[0].material?[2].coding?[0].code, "alu")
		XCTAssertEqual(inst.packageItem?[0].material?[2].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageItemContainerMaterial")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].manufacturedItem?[0].reference, "MedicinalProductManufactured/example")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].manufacturer?[0].reference, "Organization/example")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].material?[0].coding?[0].code, "Paperboard")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].material?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageItemContainerMaterial")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].physicalCharacteristics?.height?.unit, "mm")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].physicalCharacteristics?.height?.value, "125")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].physicalCharacteristics?.width?.unit, "mm")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].physicalCharacteristics?.width?.value, "45")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].quantity?.unit, "1")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].quantity?.value, "1")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].period?.unit, "a")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].period?.value, "3")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].specialPrecautionsForStorage?[0].coding?[0].code, "Thismedicinalproductdoesnotrequireanyspecialstoragecondition.")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].specialPrecautionsForStorage?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/specialprecautionsforstorage")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].type?.coding?[0].code, "ShelfLifeofPackagedMedicinalProduct")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].shelfLifeStorage?[0].type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/shelfLifeTypePlaceHolder")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].type?.coding?[0].code, "Blister")
		XCTAssertEqual(inst.packageItem?[0].packageItem?[0].type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageitemcontainertype")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.depth?.unit, "mm")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.depth?.value, "23.5")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.height?.unit, "mm")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.height?.value, "50")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.width?.unit, "mm")
		XCTAssertEqual(inst.packageItem?[0].physicalCharacteristics?.width?.value, "136")
		XCTAssertEqual(inst.packageItem?[0].quantity?.unit, "1")
		XCTAssertEqual(inst.packageItem?[0].quantity?.value, "1")
		XCTAssertEqual(inst.packageItem?[0].type?.coding?[0].code, "Carton")
		XCTAssertEqual(inst.packageItem?[0].type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/packageitemcontainertype")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
