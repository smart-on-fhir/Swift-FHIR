//
//  ObservationTests.swift
//  ObservationTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ObservationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Observation {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Observation {
		let instance = Observation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testObservation1() {
		let instance = testObservation1_impl()
		testObservation1_impl(json: instance.asJSON())
	}
	
	func testObservation1_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example1.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-03")
		XCTAssertEqual(inst.code!.coding![0].code!, "10368-9")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "CAPLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead, Capillary")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Capillary Blood Lead Screen")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
	
	func testObservation2() {
		let instance = testObservation2_impl()
		testObservation2_impl(json: instance.asJSON())
	}
	
	func testObservation2_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example1.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-03")
		XCTAssertEqual(inst.code!.coding![0].code!, "10368-9")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "CAPLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead, Capillary")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Capillary Blood Lead Screen")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
	
	func testObservation3() {
		let instance = testObservation3_impl()
		testObservation3_impl(json: instance.asJSON())
	}
	
	func testObservation3_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example1.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-03")
		XCTAssertEqual(inst.code!.coding![0].code!, "10368-9")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "CAPLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead, Capillary")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Capillary Blood Lead Screen")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
	
	func testObservation4() {
		let instance = testObservation4_impl()
		testObservation4_impl(json: instance.asJSON())
	}
	
	func testObservation4_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example2.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "43305-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Neisseria gonorrhoeae rRNA [Presence] in Unspecified specimen by Probe and target amplification method")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "GCPCR")
		XCTAssertEqual(inst.code!.coding![1].display!, "APTIMA GC")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Neisseria gonorrhoeae by PCR")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "2345")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].code!, "10828004")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].code!, "POS")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.valueCodeableConcept!.text!, "Positive for Neisseira gonorrheoea rRNA")
		
		return inst
	}
	
	func testObservation5() {
		let instance = testObservation5_impl()
		testObservation5_impl(json: instance.asJSON())
	}
	
	func testObservation5_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example2.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "43305-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Neisseria gonorrhoeae rRNA [Presence] in Unspecified specimen by Probe and target amplification method")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "GCPCR")
		XCTAssertEqual(inst.code!.coding![1].display!, "APTIMA GC")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Neisseria gonorrhoeae by PCR")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "2345")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].code!, "10828004")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].code!, "POS")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].display!, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.valueCodeableConcept!.text!, "Positive for Neisseira gonorrheoea rRNA")
		
		return inst
	}
	
	func testObservation6() {
		let instance = testObservation6_impl()
		testObservation6_impl(json: instance.asJSON())
	}
	
	func testObservation6_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example3.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6463-4")
		XCTAssertEqual(inst.code!.coding![0].display!, "Bacteria identified in Unspecified specimen by Culture")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "MSCBACT")
		XCTAssertEqual(inst.code!.coding![1].display!, "Misc Culture")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Miscellaneous Culture")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example3")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "3456")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueString!, "Moderate Growth of gram-positive cocci bacteria")
		
		return inst
	}
	
	func testObservation7() {
		let instance = testObservation7_impl()
		testObservation7_impl(json: instance.asJSON())
	}
	
	func testObservation7_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example3.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6463-4")
		XCTAssertEqual(inst.code!.coding![0].display!, "Bacteria identified in Unspecified specimen by Culture")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "MSCBACT")
		XCTAssertEqual(inst.code!.coding![1].display!, "Misc Culture")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Miscellaneous Culture")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example3")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "3456")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "A")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueString!, "Moderate Growth of gram-positive cocci bacteria")
		
		return inst
	}
	
	func testObservation8() {
		let instance = testObservation8_impl()
		testObservation8_impl(json: instance.asJSON())
	}
	
	func testObservation8_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example4.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6812-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Dengue virus IgM Ab [Titer] in Serum")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "DGIGM")
		XCTAssertEqual(inst.code!.coding![1].display!, "Dengue IgM QN")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Dengue IgM Titer")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example4")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "4567")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].text!, "<1:64")
		XCTAssertEqual(inst.specimen!.display!, "Bloo sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueRatio!.denominator!.value!, NSDecimalNumber(string: "256"))
		XCTAssertEqual(inst.valueRatio!.numerator!.value!, NSDecimalNumber(string: "1"))
		
		return inst
	}
	
	func testObservation9() {
		let instance = testObservation9_impl()
		testObservation9_impl(json: instance.asJSON())
	}
	
	func testObservation9_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example4.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "6812-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "Dengue virus IgM Ab [Titer] in Serum")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "DGIGM")
		XCTAssertEqual(inst.code!.coding![1].display!, "Dengue IgM QN")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Dengue IgM Titer")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example4")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "4567")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].text!, "<1:64")
		XCTAssertEqual(inst.specimen!.display!, "Bloo sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueRatio!.denominator!.value!, NSDecimalNumber(string: "256"))
		XCTAssertEqual(inst.valueRatio!.numerator!.value!, NSDecimalNumber(string: "1"))
		
		return inst
	}
	
	func testObservation10() {
		let instance = testObservation10_impl()
		testObservation10_impl(json: instance.asJSON())
	}
	
	func testObservation10_impl(json: JSONDictionary? = nil) -> Observation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "obs-uslab-example5.canonical.json")
		
		XCTAssertEqual(inst.appliesDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.code!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst.code!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.code!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst.code!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.code!.text!, "Blood Lead")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/uslabobservationkind")
		XCTAssertEqual(inst.extension_fhir![0].valueCode!, "result")
		XCTAssertEqual(inst.id!, "uslab-example5")
		XCTAssertEqual(inst.identifier![0].label!, "lab test result ID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://lis.acmelabs.org/identifiers/labtestresult")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234")
		XCTAssertEqual(inst.interpretation!.coding![0].code!, "H")
		XCTAssertEqual(inst.interpretation!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0078")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.performer![0].display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.performer![0].reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.referenceRange![0].high!.code!, "ug/dL")
		XCTAssertEqual(inst.referenceRange![0].high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.referenceRange![0].high!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.referenceRange![0].high!.value!, NSDecimalNumber(string: "5.0"))
		XCTAssertEqual(inst.specimen!.display!, "Blood sample")
		XCTAssertEqual(inst.specimen!.reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueQuantity!.code!, "ug/dL")
		XCTAssertEqual(inst.valueQuantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity!.units!, "microgram per deciliter")
		XCTAssertEqual(inst.valueQuantity!.value!, NSDecimalNumber(string: "65"))
		
		return inst
	}
}
