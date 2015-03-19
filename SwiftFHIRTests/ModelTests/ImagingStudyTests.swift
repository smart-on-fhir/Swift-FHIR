//
//  ImagingStudyTests.swift
//  ImagingStudyTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImagingStudyTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ImagingStudy {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ImagingStudy {
		let instance = ImagingStudy(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImagingStudy1() {
		let instance = testImagingStudy1_impl()
		testImagingStudy1_impl(json: instance.asJSON())
	}
	
	func testImagingStudy1_impl(json: JSONDictionary? = nil) -> ImagingStudy {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "imagingstudy-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.numberOfInstances!, 1)
		XCTAssertEqual(inst.numberOfSeries!, 1)
		XCTAssertEqual(inst.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst.series![0].bodySite!.code!, "67734004")
		XCTAssertEqual(inst.series![0].bodySite!.display!, "Upper Trunk Structure")
		XCTAssertEqual(inst.series![0].bodySite!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.series![0].description_fhir!, "CT Surview 180")
		XCTAssertEqual(inst.series![0].instance![0].content![0].url!.absoluteString!, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.series![0].instance![0].number!, 1)
		XCTAssertEqual(inst.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series![0].modality!, "CT")
		XCTAssertEqual(inst.series![0].number!, 3)
		XCTAssertEqual(inst.series![0].numberOfInstances!, 1)
		XCTAssertEqual(inst.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started!.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text!.div!, "<div>Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		
		return inst
	}
	
	func testImagingStudy2() {
		let instance = testImagingStudy2_impl()
		testImagingStudy2_impl(json: instance.asJSON())
	}
	
	func testImagingStudy2_impl(json: JSONDictionary? = nil) -> ImagingStudy {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "imagingstudy-qicore-example.json")
		
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/imagingstudy-radiationDose")
		XCTAssertEqual(inst.extension_fhir![0].valueRange!.high!.units!, "Gy")
		XCTAssertEqual(inst.extension_fhir![0].valueRange!.high!.value!, NSDecimalNumber(string: "1234.5"))
		XCTAssertEqual(inst.extension_fhir![0].valueRange!.low!.units!, "Gy")
		XCTAssertEqual(inst.extension_fhir![0].valueRange!.low!.value!, NSDecimalNumber(string: "200.0"))
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/imagingstudy-radiationDuration")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.code!, "s")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.units!, "sec")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.value!, NSDecimalNumber(string: "25"))
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.numberOfInstances!, 1)
		XCTAssertEqual(inst.numberOfSeries!, 1)
		XCTAssertEqual(inst.patient!.reference!, "Patient/dicom")
		XCTAssertEqual(inst.series![0].bodySite!.code!, "67734004")
		XCTAssertEqual(inst.series![0].bodySite!.display!, "Upper Trunk Structure")
		XCTAssertEqual(inst.series![0].bodySite!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.series![0].description_fhir!, "CT Surview 180")
		XCTAssertEqual(inst.series![0].instance![0].content![0].url!.absoluteString!, "http://localhost/fhir/Binary/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.series![0].instance![0].number!, 1)
		XCTAssertEqual(inst.series![0].instance![0].sopclass!, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series![0].instance![0].uid!, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series![0].modality!, "CT")
		XCTAssertEqual(inst.series![0].number!, 3)
		XCTAssertEqual(inst.series![0].numberOfInstances!, 1)
		XCTAssertEqual(inst.series![0].uid!, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started!.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text!.div!, "<div>Image 1 from Series 3: CT Images on Patient MINT (MINT1234) taken at 1-Jan 2011 01:20 AM</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.uid!, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		
		return inst
	}
}
