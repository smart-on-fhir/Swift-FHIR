//
//  CatalogEntry.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/CatalogEntry) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An entry in a catalog.

Catalog entries are wrappers that contextualize items included in a catalog.
*/
open class CatalogEntry: DomainResource {
	override open class var resourceType: String {
		get { return "CatalogEntry" }
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
	public var identifier: [Identifier]?
	
	/// When was this catalog last updated.
	public var lastUpdated: DateTime?
	
	/// Whether the entry represents an orderable item.
	public var orderable: FHIRBool?
	
	/// The item that is being defined.
	public var referencedItem: Reference?
	
	/// An item that this catalog entry is related to.
	public var relatedEntry: [CatalogEntryRelatedEntry]?
	
	/// Used to support catalog exchange even for unsupported products, e.g. getting list of medications even if not
	/// prescribable.
	public var status: PublicationStatus?
	
	/// The type of item - medication, device, service, protocol or other.
	public var type: CodeableConcept?
	
	/// The date until which this catalog entry is expected to be active.
	public var validTo: DateTime?
	
	/// The time period in which this catalog entry is expected to be active.
	public var validityPeriod: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(orderable: FHIRBool, referencedItem: Reference) {
		self.init()
		self.orderable = orderable
		self.referencedItem = referencedItem
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additionalCharacteristic = createInstances(of: CodeableConcept.self, for: "additionalCharacteristic", in: json, context: &instCtx, owner: self) ?? additionalCharacteristic
		additionalClassification = createInstances(of: CodeableConcept.self, for: "additionalClassification", in: json, context: &instCtx, owner: self) ?? additionalClassification
		additionalIdentifier = createInstances(of: Identifier.self, for: "additionalIdentifier", in: json, context: &instCtx, owner: self) ?? additionalIdentifier
		classification = createInstances(of: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		lastUpdated = createInstance(type: DateTime.self, for: "lastUpdated", in: json, context: &instCtx, owner: self) ?? lastUpdated
		orderable = createInstance(type: FHIRBool.self, for: "orderable", in: json, context: &instCtx, owner: self) ?? orderable
		if nil == orderable && !instCtx.containsKey("orderable") {
			instCtx.addError(FHIRValidationError(missing: "orderable"))
		}
		referencedItem = createInstance(type: Reference.self, for: "referencedItem", in: json, context: &instCtx, owner: self) ?? referencedItem
		if nil == referencedItem && !instCtx.containsKey("referencedItem") {
			instCtx.addError(FHIRValidationError(missing: "referencedItem"))
		}
		relatedEntry = createInstances(of: CatalogEntryRelatedEntry.self, for: "relatedEntry", in: json, context: &instCtx, owner: self) ?? relatedEntry
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		validTo = createInstance(type: DateTime.self, for: "validTo", in: json, context: &instCtx, owner: self) ?? validTo
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additionalCharacteristic", using: self.additionalCharacteristic, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalClassification", using: self.additionalClassification, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalIdentifier", using: self.additionalIdentifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "classification", using: self.classification, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.lastUpdated?.decorate(json: &json, withKey: "lastUpdated", errors: &errors)
		self.orderable?.decorate(json: &json, withKey: "orderable", errors: &errors)
		if nil == self.orderable {
			errors.append(FHIRValidationError(missing: "orderable"))
		}
		self.referencedItem?.decorate(json: &json, withKey: "referencedItem", errors: &errors)
		if nil == self.referencedItem {
			errors.append(FHIRValidationError(missing: "referencedItem"))
		}
		arrayDecorate(json: &json, withKey: "relatedEntry", using: self.relatedEntry, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.validTo?.decorate(json: &json, withKey: "validTo", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
	}
}


/**
An item that this catalog entry is related to.

Used for example, to point to a substance, or to a device used to administer a medication.
*/
open class CatalogEntryRelatedEntry: BackboneElement {
	override open class var resourceType: String {
		get { return "CatalogEntryRelatedEntry" }
	}
	
	/// The reference to the related item.
	public var item: Reference?
	
	/// The type of relation to the related item: child, parent, packageContent, containerPackage, usedIn, uses,
	/// requires, etc.
	public var relationtype: CatalogEntryRelationType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Reference, relationtype: CatalogEntryRelationType) {
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
		relationtype = createEnum(type: CatalogEntryRelationType.self, for: "relationtype", in: json, context: &instCtx) ?? relationtype
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

