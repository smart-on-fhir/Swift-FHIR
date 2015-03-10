//
//  Contraindication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Contraindication) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Clinical issue with action.
 *
 *  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for
 *  a patient.  E.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public class Contraindication: DomainResource
{
	override public class var resourceName: String {
		get { return "Contraindication" }
	}
	
	/// Who found issue?
	public var author: Reference?
	
	/// E.g. Drug-drug, duplicate therapy, etc.
	public var category: CodeableConcept?
	
	/// When identified
	public var date: DateTime?
	
	/// Description and context
	public var detail: String?
	
	/// Unique id for the contraindication
	public var identifier: Identifier?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// Step taken to address
	public var mitigation: [ContraindicationMitigation]?
	
	/// Associated patient
	public var patient: Reference?
	
	/// Authority for issue
	public var reference: NSURL?
	
	/// high | medium | low
	public var severity: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? JSONDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["detail"] as? String {
				self.detail = val
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["implicated"] as? [JSONDictionary] {
				self.implicated = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["mitigation"] as? [JSONDictionary] {
				self.mitigation = ContraindicationMitigation.from(val, owner: self) as? [ContraindicationMitigation]
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(string: val)
			}
			if let val = js["severity"] as? String {
				self.severity = val
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
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let implicated = self.implicated {
			json["implicated"] = Reference.asJSONArray(implicated)
		}
		if let mitigation = self.mitigation {
			json["mitigation"] = ContraindicationMitigation.asJSONArray(mitigation)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		
		return json
	}
}


/**
 *  Step taken to address.
 *
 *  Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk
 *  identified by the contraindicaiton from manifesting.  Can also reflect an observation of known mitigating factors
 *  that may reduce/eliminate the need for any action.
 */
public class ContraindicationMitigation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContraindicationMitigation" }
	}
	
	/// What mitigation?
	public var action: CodeableConcept?
	
	/// Who is committing?
	public var author: Reference?
	
	/// Date committed
	public var date: DateTime?
	
	public convenience init(action: CodeableConcept?) {
		self.init(json: nil)
		if nil != action {
			self.action = action
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? JSONDictionary {
				self.action = CodeableConcept(json: val, owner: self)
			}
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		
		return json
	}
}

