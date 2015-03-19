//
//  Signature.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Signature) on 2015-03-19.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["blob"] as? String {
				self.blob = Base64Binary(string: val)
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["when"] as? String {
				self.when = Instant(string: val)
			}
			if let val = js["whoReference"] as? JSONDictionary {
				self.whoReference = Reference(json: val, owner: self)
			}
			if let val = js["whoUri"] as? String {
				self.whoUri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

