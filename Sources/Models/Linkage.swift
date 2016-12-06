//
//  Linkage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Linkage) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try LinkageItem.instantiate(fromArray: val, owner: self) as? [LinkageItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "item"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "item"))
		}
		
		return json
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
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? FHIRJSON {
				do {
					self.resource = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = LinkageType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let resource = self.resource {
			json["resource"] = resource.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "resource"))
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
	}
}

