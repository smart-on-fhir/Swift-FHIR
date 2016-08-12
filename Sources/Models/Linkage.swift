//
//  Linkage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Linkage) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Links records for 'same' item.
 *
 *  Identifies two or more records (resource instances) that are referring to the same real-world "occurrence".
 */
public class Linkage: DomainResource {
	override public class var resourceName: String {
		get { return "Linkage" }
	}
	
	/// Who is responsible for linkages.
	public var author: Reference?
	
	/// Item to be linked.
	public var item: [LinkageItem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: [LinkageItem]) {
		self.init(json: nil)
		self.item = item
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = LinkageItem.from(val, owner: self) as? [LinkageItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "item"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let item = self.item {
			json["item"] = LinkageItem.asJSONArray(item)
		}
		
		return json
	}
}


/**
 *  Item to be linked.
 *
 *  Identifies one of the records that is considered to refer to the same real-world occurrence as well as how the items
 *  hould be evaluated within the collection of linked items.
 */
public class LinkageItem: BackboneElement {
	override public class var resourceName: String {
		get { return "LinkageItem" }
	}
	
	/// Resource being linked.
	public var resource: Reference?
	
	/// source | alternate | historical.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resource: Reference, type: String) {
		self.init(json: nil)
		self.resource = resource
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["resource"] {
				presentKeys.insert("resource")
				if let val = exist as? FHIRJSON {
					self.resource = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resource", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "resource"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let resource = self.resource {
			json["resource"] = resource.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

