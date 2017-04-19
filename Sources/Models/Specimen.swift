//
//  Specimen.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Specimen) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		accessionIdentifier = createInstance(type: Identifier.self, for: "accessionIdentifier", in: json, context: &instCtx, owner: self) ?? accessionIdentifier
		collection = createInstance(type: SpecimenCollection.self, for: "collection", in: json, context: &instCtx, owner: self) ?? collection
		container = createInstances(of: SpecimenContainer.self, for: "container", in: json, context: &instCtx, owner: self) ?? container
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		parent = createInstances(of: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		processing = createInstances(of: SpecimenProcessing.self, for: "processing", in: json, context: &instCtx, owner: self) ?? processing
		receivedTime = createInstance(type: DateTime.self, for: "receivedTime", in: json, context: &instCtx, owner: self) ?? receivedTime
		request = createInstances(of: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		status = createEnum(type: SpecimenStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		bodySite = createInstance(type: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		collectedDateTime = createInstance(type: DateTime.self, for: "collectedDateTime", in: json, context: &instCtx, owner: self) ?? collectedDateTime
		collectedPeriod = createInstance(type: Period.self, for: "collectedPeriod", in: json, context: &instCtx, owner: self) ?? collectedPeriod
		collector = createInstance(type: Reference.self, for: "collector", in: json, context: &instCtx, owner: self) ?? collector
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additiveCodeableConcept = createInstance(type: CodeableConcept.self, for: "additiveCodeableConcept", in: json, context: &instCtx, owner: self) ?? additiveCodeableConcept
		additiveReference = createInstance(type: Reference.self, for: "additiveReference", in: json, context: &instCtx, owner: self) ?? additiveReference
		capacity = createInstance(type: Quantity.self, for: "capacity", in: json, context: &instCtx, owner: self) ?? capacity
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		specimenQuantity = createInstance(type: Quantity.self, for: "specimenQuantity", in: json, context: &instCtx, owner: self) ?? specimenQuantity
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additive = createInstances(of: Reference.self, for: "additive", in: json, context: &instCtx, owner: self) ?? additive
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		procedure = createInstance(type: CodeableConcept.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		timeDateTime = createInstance(type: DateTime.self, for: "timeDateTime", in: json, context: &instCtx, owner: self) ?? timeDateTime
		timePeriod = createInstance(type: Period.self, for: "timePeriod", in: json, context: &instCtx, owner: self) ?? timePeriod
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

