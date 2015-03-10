//
//  Goal.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Goal) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Patient Health Goal.
 *
 *  Describes the intended objective(s) of the care.
 */
public class Goal: DomainResource
{
	override public class var resourceName: String {
		get { return "Goal" }
	}
	
	/// Health issues this goal addresses
	public var concern: [Reference]?
	
	/// What's the desired outcome?
	public var description_fhir: String?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// Comments about the goal
	public var notes: String?
	
	/// The patient for whom this goal is intended for
	public var patient: Reference?
	
	/// proposed | planned | in-progress | achieved | sustaining | cancelled | accepted | rejected
	public var status: String?
	
	public convenience init(description_fhir: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concern"] as? [JSONDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
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

