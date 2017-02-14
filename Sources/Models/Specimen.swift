//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Sample for analysis.

A sample to be used for analysis.
*/
open class Specimen: DomainResource {
	override open class var resourceType: String {
		get { return "Specimen" }
	}
	
	/// Identifier assigned by the lab.
	public var accessionIdentifier: Identifier?
	
	/// Collection details.
	public var collection: SpecimenCollection?
	
	/// Direct container of specimen (tube/slide, etc.).
	public var container: [SpecimenContainer]?
	
	/// External Identifier.
	public var identifier: [Identifier]?
	
	/// Comments.
	public var note: [Annotation]?
	
	/// Specimen from which this specimen originated.
	public var parent: [Reference]?
	
	/// Processing and processing step details.
	public var processing: [SpecimenProcessing]?
	
	/// The time when specimen was received for processing.
	public var receivedTime: DateTime?
	
	/// Why the specimen was collected.
	public var request: [Reference]?
	
	/// The availability of the specimen.
	public var status: SpecimenStatus?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device.
	public var subject: Reference?
	
	/// Kind of material that forms the specimen.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init()
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		accessionIdentifier = try createInstance(type: Identifier.self, for: "accessionIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? accessionIdentifier
		collection = try createInstance(type: SpecimenCollection.self, for: "collection", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? collection
		container = try createInstances(of: SpecimenContainer.self, for: "container", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? container
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		parent = try createInstances(of: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		processing = try createInstances(of: SpecimenProcessing.self, for: "processing", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? processing
		receivedTime = try createInstance(type: DateTime.self, for: "receivedTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? receivedTime
		request = try createInstances(of: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		status = createEnum(type: SpecimenStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.accessionIdentifier?.decorate(json: &json, withKey: "accessionIdentifier", errors: &errors)
		self.collection?.decorate(json: &json, withKey: "collection", errors: &errors)
		arrayDecorate(json: &json, withKey: "container", using: self.container, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "parent", using: self.parent, errors: &errors)
		arrayDecorate(json: &json, withKey: "processing", using: self.processing, errors: &errors)
		self.receivedTime?.decorate(json: &json, withKey: "receivedTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "request", using: self.request, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Collection details.

Details concerning the specimen collection.
*/
open class SpecimenCollection: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenCollection" }
	}
	
	/// Anatomical collection site.
	public var bodySite: CodeableConcept?
	
	/// Collection time.
	public var collectedDateTime: DateTime?
	
	/// Collection time.
	public var collectedPeriod: Period?
	
	/// Who collected the specimen.
	public var collector: Reference?
	
	/// Technique used to perform collection.
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected.
	public var quantity: Quantity?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		bodySite = try createInstance(type: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		collectedDateTime = try createInstance(type: DateTime.self, for: "collectedDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? collectedDateTime
		collectedPeriod = try createInstance(type: Period.self, for: "collectedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? collectedPeriod
		collector = try createInstance(type: Reference.self, for: "collector", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? collector
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.bodySite?.decorate(json: &json, withKey: "bodySite", errors: &errors)
		self.collectedDateTime?.decorate(json: &json, withKey: "collectedDateTime", errors: &errors)
		self.collectedPeriod?.decorate(json: &json, withKey: "collectedPeriod", errors: &errors)
		self.collector?.decorate(json: &json, withKey: "collector", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
	}
}


/**
Direct container of specimen (tube/slide, etc.).

The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
addressed here.
*/
open class SpecimenContainer: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenContainer" }
	}
	
	/// Additive associated with container.
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container.
	public var additiveReference: Reference?
	
	/// Container volume or size.
	public var capacity: Quantity?
	
	/// Textual description of the container.
	public var description_fhir: FHIRString?
	
	/// Id for the container.
	public var identifier: [Identifier]?
	
	/// Quantity of specimen within container.
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		additiveCodeableConcept = try createInstance(type: CodeableConcept.self, for: "additiveCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additiveCodeableConcept
		additiveReference = try createInstance(type: Reference.self, for: "additiveReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additiveReference
		capacity = try createInstance(type: Quantity.self, for: "capacity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? capacity
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		specimenQuantity = try createInstance(type: Quantity.self, for: "specimenQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specimenQuantity
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.additiveCodeableConcept?.decorate(json: &json, withKey: "additiveCodeableConcept", errors: &errors)
		self.additiveReference?.decorate(json: &json, withKey: "additiveReference", errors: &errors)
		self.capacity?.decorate(json: &json, withKey: "capacity", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.specimenQuantity?.decorate(json: &json, withKey: "specimenQuantity", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Processing and processing step details.

Details concerning processing and processing steps for the specimen.
*/
open class SpecimenProcessing: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenProcessing" }
	}
	
	/// Material used in the processing step.
	public var additive: [Reference]?
	
	/// Textual description of procedure.
	public var description_fhir: FHIRString?
	
	/// Indicates the treatment step  applied to the specimen.
	public var procedure: CodeableConcept?
	
	/// Date and time of specimen processing.
	public var timeDateTime: DateTime?
	
	/// Date and time of specimen processing.
	public var timePeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		additive = try createInstances(of: Reference.self, for: "additive", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additive
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		procedure = try createInstance(type: CodeableConcept.self, for: "procedure", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? procedure
		timeDateTime = try createInstance(type: DateTime.self, for: "timeDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timeDateTime
		timePeriod = try createInstance(type: Period.self, for: "timePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timePeriod
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additive", using: self.additive, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.procedure?.decorate(json: &json, withKey: "procedure", errors: &errors)
		self.timeDateTime?.decorate(json: &json, withKey: "timeDateTime", errors: &errors)
		self.timePeriod?.decorate(json: &json, withKey: "timePeriod", errors: &errors)
	}
}

