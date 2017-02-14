//
//  Linkage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Linkage) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Links records for 'same' item.

Identifies two or more records (resource instances) that are referring to the same real-world "occurrence".
*/
open class Linkage: DomainResource {
	override open class var resourceType: String {
		get { return "Linkage" }
	}
	
	/// Who is responsible for linkages.
	public var author: Reference?
	
	/// Item to be linked.
	public var item: [LinkageItem]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: [LinkageItem]) {
		self.init()
		self.item = item
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		item = try createInstances(of: LinkageItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		if (nil == item || item!.isEmpty) && !presentKeys.contains("item") {
			errors.append(FHIRValidationError(missing: "item"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		if nil == item || self.item!.isEmpty {
			errors.append(FHIRValidationError(missing: "item"))
		}
	}
}


/**
Item to be linked.

Identifies one of the records that is considered to refer to the same real-world occurrence as well as how the items
hould be evaluated within the collection of linked items.
*/
open class LinkageItem: BackboneElement {
	override open class var resourceType: String {
		get { return "LinkageItem" }
	}
	
	/// Resource being linked.
	public var resource: Reference?
	
	/// Distinguishes which item is "source of truth" (if any) and which items are no longer considered to be current
	/// representations.
	public var type: LinkageType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference, type: LinkageType) {
		self.init()
		self.resource = resource
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		resource = try createInstance(type: Reference.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		if nil == resource && !presentKeys.contains("resource") {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		type = createEnum(type: LinkageType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		if nil == self.resource {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

