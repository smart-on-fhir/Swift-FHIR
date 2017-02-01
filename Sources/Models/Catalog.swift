//
//  Catalog.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Catalog) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Catalog document.

A document that bundles a set of catalog entries. A catalog entry contains metadata about an item and a pointer to the
item’s representative resource. The item is an entity that can be ordered or consulted from a catalog: Medications,
devices, lab services, organizations...
The catalog resource provides the data necessary for a synchronization of the item data – e.g. the version or last
update date which allows systems to obtain differential updates.
The catalog does not replicate the content of the item, since that is expected to be in the resource that is referenced.
There is however some metadata that is important for the catalog synchronization and not in the “clinical” resource.
Examples are different classifications and related identifiers, or packaging information, or device components, or
different characteristics.
*/
open class Catalog: DomainResource {
	override open class var resourceType: String {
		get { return "Catalog" }
	}
	
	/// Properties of the document - authorship, versions, etc.
	public var document: CatalogDocument?
	
	/// Each item of the catalog.
	public var entry: [CatalogEntry]?
	
	/// Unique identifier for the  catalog resource.
	public var identifier: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(document: CatalogDocument, entry: [CatalogEntry], identifier: Identifier) {
		self.init()
		self.document = document
		self.entry = entry
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		document = try createInstance(type: CatalogDocument.self, for: "document", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? document
		if nil == document && !presentKeys.contains("document") {
			errors.append(FHIRValidationError(missing: "document"))
		}
		entry = try createInstances(of: CatalogEntry.self, for: "entry", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? entry
		if (nil == entry || entry!.isEmpty) && !presentKeys.contains("entry") {
			errors.append(FHIRValidationError(missing: "entry"))
		}
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.document?.decorate(json: &json, withKey: "document", errors: &errors)
		if nil == self.document {
			errors.append(FHIRValidationError(missing: "document"))
		}
		arrayDecorate(json: &json, withKey: "entry", using: self.entry, errors: &errors)
		if nil == entry || self.entry!.isEmpty {
			errors.append(FHIRValidationError(missing: "entry"))
		}
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
	}
}


/**
Properties of the document - authorship, versions, etc.
*/
open class CatalogDocument: BackboneElement {
	override open class var resourceType: String {
		get { return "CatalogDocument" }
	}
	
	/// The type of content in the document.
	public var contentType: CodeableConcept?
	
	/// The version of the bundle that is being transmitted.
	public var contentVersion: Identifier?
	
	/// Unique identifier for the catalog document.
	public var identifier: Identifier?
	
	/// The date when the catalog document is issued.
	public var issueDate: DateTime?
	
	/// The entity that is issuing (sending, submitting, publishing) the catalog.
	public var provider: Reference?
	
	/// Status of the catalog document: pre-submission, pending, approved, draft.
	public var status: CodeableConcept?
	
	/// How the content is intended to be used - overwriting, appending, complementing existing items.
	public var updateMode: CodeableConcept?
	
	/// The date from which the catalog content is expected to be active.
	public var validFrom: DateTime?
	
	/// The date until which the catalog content is expected to be active.
	public var validTo: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(contentType: CodeableConcept, provider: Reference, status: CodeableConcept, updateMode: CodeableConcept) {
		self.init()
		self.contentType = contentType
		self.provider = provider
		self.status = status
		self.updateMode = updateMode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contentType = try createInstance(type: CodeableConcept.self, for: "contentType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentType
		if nil == contentType && !presentKeys.contains("contentType") {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		contentVersion = try createInstance(type: Identifier.self, for: "contentVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentVersion
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		issueDate = try createInstance(type: DateTime.self, for: "issueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issueDate
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		if nil == provider && !presentKeys.contains("provider") {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		status = try createInstance(type: CodeableConcept.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		updateMode = try createInstance(type: CodeableConcept.self, for: "updateMode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? updateMode
		if nil == updateMode && !presentKeys.contains("updateMode") {
			errors.append(FHIRValidationError(missing: "updateMode"))
		}
		validFrom = try createInstance(type: DateTime.self, for: "validFrom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? validFrom
		validTo = try createInstance(type: DateTime.self, for: "validTo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? validTo
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		if nil == self.contentType {
			errors.append(FHIRValidationError(missing: "contentType"))
		}
		self.contentVersion?.decorate(json: &json, withKey: "contentVersion", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issueDate?.decorate(json: &json, withKey: "issueDate", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		if nil == self.provider {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.updateMode?.decorate(json: &json, withKey: "updateMode", errors: &errors)
		if nil == self.updateMode {
			errors.append(FHIRValidationError(missing: "updateMode"))
		}
		self.validFrom?.decorate(json: &json, withKey: "validFrom", errors: &errors)
		self.validTo?.decorate(json: &json, withKey: "validTo", errors: &errors)
	}
}


/**
Each item of the catalog.
*/
open class CatalogEntry: BackboneElement {
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
	public var classification: [Identifier]?
	
	/// Unique identifier of the catalog item.
	public var identifier: Identifier?
	
	/// Perhaps not needed.
	public var lastUpdated: DateTime?
	
	/// The item itself.
	public var referencedItem: Reference?
	
	/// An item that this catalog entry is related to.
	public var relatedItem: [CatalogEntryRelatedItem]?
	
	/// The status of the item, e.g. active, approved….
	public var status: CodeableConcept?
	
	/// The type of item - medication, device, service, protocol or other.
	public var type: CodeableConcept?
	
	/// The date from which this catalog entry is expected to be active.
	public var validFrom: DateTime?
	
	/// The date until which this catalog entry is expected to be active.
	public var validTo: DateTime?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		additionalCharacteristic = try createInstances(of: CodeableConcept.self, for: "additionalCharacteristic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additionalCharacteristic
		additionalClassification = try createInstances(of: CodeableConcept.self, for: "additionalClassification", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additionalClassification
		additionalIdentifier = try createInstances(of: Identifier.self, for: "additionalIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additionalIdentifier
		classification = try createInstances(of: Identifier.self, for: "classification", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? classification
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		lastUpdated = try createInstance(type: DateTime.self, for: "lastUpdated", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastUpdated
		referencedItem = try createInstance(type: Reference.self, for: "referencedItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referencedItem
		relatedItem = try createInstances(of: CatalogEntryRelatedItem.self, for: "relatedItem", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedItem
		status = try createInstance(type: CodeableConcept.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		validFrom = try createInstance(type: DateTime.self, for: "validFrom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? validFrom
		validTo = try createInstance(type: DateTime.self, for: "validTo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? validTo
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additionalCharacteristic", using: self.additionalCharacteristic, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalClassification", using: self.additionalClassification, errors: &errors)
		arrayDecorate(json: &json, withKey: "additionalIdentifier", using: self.additionalIdentifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "classification", using: self.classification, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.lastUpdated?.decorate(json: &json, withKey: "lastUpdated", errors: &errors)
		self.referencedItem?.decorate(json: &json, withKey: "referencedItem", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedItem", using: self.relatedItem, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.validFrom?.decorate(json: &json, withKey: "validFrom", errors: &errors)
		self.validTo?.decorate(json: &json, withKey: "validTo", errors: &errors)
	}
}


/**
An item that this catalog entry is related to.

Used for example,  to point to a substance, or to a device used to administer a medication.
*/
open class CatalogEntryRelatedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "CatalogEntryRelatedItem" }
	}
	
	/// The reference to the related item.
	public var identifier: Reference?
	
	/// The type of relation to the related item.
	public var relationtype: CodeableConcept?
	
	/// The type of related item - medication, devices….
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Reference, relationtype: CodeableConcept) {
		self.init()
		self.identifier = identifier
		self.relationtype = relationtype
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Reference.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		relationtype = try createInstance(type: CodeableConcept.self, for: "relationtype", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relationtype
		if nil == relationtype && !presentKeys.contains("relationtype") {
			errors.append(FHIRValidationError(missing: "relationtype"))
		}
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.relationtype?.decorate(json: &json, withKey: "relationtype", errors: &errors)
		if nil == self.relationtype {
			errors.append(FHIRValidationError(missing: "relationtype"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

