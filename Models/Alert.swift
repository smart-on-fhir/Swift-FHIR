//
//  Alert.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Alert) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Key information to flag to healthcare providers.
 *
 *  Prospective warnings of potential issues when providing care to the patient.
 */
public class Alert: DomainResource
{
	override public class var resourceName: String {
		get { return "Alert" }
	}
	
	/// Alert creator
	public var author: Reference?
	
	/// Clinical, administrative, etc.
	public var category: CodeableConcept?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Partially deaf, Requires easy open caps, No permanent address, etc.
	public var note: CodeableConcept?
	
	/// active | inactive | entered-in-error
	public var status: String?
	
	/// Who is alert about?
	public var subject: Reference?
	
	public convenience init(note: CodeableConcept?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != note {
			self.note = note
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? JSONDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? JSONDictionary {
				self.note = CodeableConcept(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}

