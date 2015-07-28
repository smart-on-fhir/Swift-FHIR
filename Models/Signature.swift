//
//  Signature.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Signature) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An XML digital Signature.
 *
 *  An XML digital signature along with supporting context.
 */
public class Signature: FHIRElement
{
	override public class var resourceName: String {
		get { return "Signature" }
	}
	
	/// The actual XML Dig-Sig
	public var blob: Base64Binary?
	
	/// Indication of the reason the entity signed the object(s)
	public var type: [Coding]?
	
	/// When the signature was created
	public var when: Instant?
	
	/// Who signed the signature
	public var whoReference: Reference?
	
	/// Who signed the signature
	public var whoUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(blob: Base64Binary?, type: [Coding]?, when: Instant?, whoReference: Reference?, whoUri: NSURL?) {
		self.init(json: nil)
		if nil != blob {
			self.blob = blob
		}
		if nil != type {
			self.type = type
		}
		if nil != when {
			self.when = when
		}
		if nil != whoReference {
			self.whoReference = whoReference
		}
		if nil != whoUri {
			self.whoUri = whoUri
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["blob"] {
				presentKeys.insert("blob")
				if let val = exist as? String {
					self.blob = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "blob", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "blob"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["when"] {
				presentKeys.insert("when")
				if let val = exist as? String {
					self.when = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "when", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "when"))
			}
			if let exist: AnyObject = js["whoReference"] {
				presentKeys.insert("whoReference")
				if let val = exist as? FHIRJSON {
					self.whoReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "whoReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["whoUri"] {
				presentKeys.insert("whoUri")
				if let val = exist as? String {
					self.whoUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "whoUri", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.whoUri && nil == self.whoReference {
				errors.append(FHIRJSONError(key: "who[x]*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let type = self.type {
			json["type"] = Coding.asJSONArray(type)
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		if let whoReference = self.whoReference {
			json["whoReference"] = whoReference.asJSON()
		}
		if let whoUri = self.whoUri {
			json["whoUri"] = whoUri.asJSON()
		}
		
		return json
	}
}

