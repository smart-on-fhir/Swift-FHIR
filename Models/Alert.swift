//
//  Alert.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Alert) on 2015-03-25.
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
	
	/// Who is alert about?
	public var patient: Reference?
	
	/// active | inactive | entered-in-error
	public var status: String?
	
	public convenience init(note: CodeableConcept?, patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != note {
			self.note = note
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? FHIRJSON {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? FHIRJSON {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? FHIRJSON {
				self.note = CodeableConcept(json: val, owner: self)
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

