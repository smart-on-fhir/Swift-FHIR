//
//  EntryDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/EntryDefinition) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
An entry in a catalog.

Catalog entries are wrappers that contextualize items included in a catalog.
*/
open class EntryDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "EntryDefinition" }
	}
	
	/// Additional characteristics of the catalog entry.
	public var additionalCharacteristic: [CodeableConcept]?
	
	/// Additional classification of the catalog entry.
	public var additionalClassification: [CodeableConcept]?
	
	/// Any additional identifier(s) for the catalog item, in the same granularity or concept.
	public var additionalIdentifier: [Identifier]?
	
	/// Classification (category or class) of the item entry.
	public var classification: [CodeableConcept]?
	
	/// Unique identifier of the catalog item.
	public var identifier: Identifier?
	
	/// When was this catalog last updated.
	public var lastUpdated: DateTime?
	
	/// Whether the entry represents an orderable item, or other.
	public var purpose: CodeableConcept?
	
	/// The item itself.
	public var referencedItem: Reference?
	
	/// An item that this catalog entry is related to.
	public var relatedEntry: [EntryDefinitionRelatedEntry]?
	
	/// The status of the item, e.g. active, approved, deleted….
	public var status: CodeableConcept?
	
	/// The type of item - medication, device, service, protocol or other.
	public var type: CodeableConcept?
	
	/// The time period in which this catalog entry is expected to be active.
	public var validityPeriod: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(purpose: CodeableConcept, referencedItem: Reference) {
		self.init()
		self.purpose = purpose
		self.referencedItem = referencedItem
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additionalCharacteristic = createInstances(of: CodeableConcept.self, for: "additionalCharacteristic", in: json, context: &instCtx, owner: self) ?? additionalCharacteristic
		additionalClassification = createInstances(of: CodeableConcept.self, for: "additionalClassification", in: json, context: &instCtx, owner: self) ?? additionalClassification
		additionalIdentifier = createInstances(of: Identifier.self, for: "additionalIdentifier", in: json, context: &instCtx, owner: self) ?? additionalIdentifier
		classification = createInstances(of: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		lastUpdated = createInstance(type: DateTime.self, for: "lastUpdated", in: json, context: &instCtx, owner: self) ?? lastUpdated
		purpose = createInstance(type: CodeableConcept.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		if nil == purpose && !instCtx.containsKey("purpose") {
			instCtx.addError(FHIRValidationError(missing: "purpose"))
		}
		referencedItem = createInstance(type: Reference.self, for: "referencedItem", in: json, context: &instCtx, owner: self) ?? referencedItem
		if nil == referencedItem && !instCtx.containsKey("referencedItem") {
			instCtx.addError(FHIRValidationError(missing: "referencedItem"))
		}
		relatedEntry = createInstances(of: EntryDefinitionRelatedEntry.self, for: "relatedEntry", in: json, context: &instCtx, owner: self) ?? relatedEntry
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additionalCharacteristic", using: self.additionalCharacteristic, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalClassification", using: self.additionalClassification, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalIdentifier", using: self.additionalIdentifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "classification", using: self.classification, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.lastUpdated?.decorate(json: &json, withKey: "lastUpdated", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		if nil == self.purpose {
			errors.append(FHIRValidationError(missing: "purpose"))
		}
		self.referencedItem?.decorate(json: &json, withKey: "referencedItem", errors: &errors)
		if nil == self.referencedItem {
			errors.append(FHIRValidationError(missing: "referencedItem"))
		}
		arrayDecorate(json: &json, withKey: "relatedEntry", using: self.relatedEntry, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
	}
}


/**
An item that this catalog entry is related to.

Used for example, to point to a substance, or to a device used to administer a medication.
*/
open class EntryDefinitionRelatedEntry: BackboneElement {
	override open class var resourceType: String {
		get { return "EntryDefinitionRelatedEntry" }
	}
	
	/// The reference to the related item.
	public var item: Reference?
	
	/// The type of relation to the related item.
	public var relationtype: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Reference, relationtype: CodeableConcept) {
		self.init()
		self.item = item
		self.relationtype = relationtype
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		item = createInstance(type: Reference.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		if nil == item && !instCtx.containsKey("item") {
			instCtx.addError(FHIRValidationError(missing: "item"))
		}
		relationtype = createInstance(type: CodeableConcept.self, for: "relationtype", in: json, context: &instCtx, owner: self) ?? relationtype
		if nil == relationtype && !instCtx.containsKey("relationtype") {
			instCtx.addError(FHIRValidationError(missing: "relationtype"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.item?.decorate(json: &json, withKey: "item", errors: &errors)
		if nil == self.item {
			errors.append(FHIRValidationError(missing: "item"))
		}
		self.relationtype?.decorate(json: &json, withKey: "relationtype", errors: &errors)
		if nil == self.relationtype {
			errors.append(FHIRValidationError(missing: "relationtype"))
		}
	}
}

