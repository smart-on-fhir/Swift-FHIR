//
//  Provenance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
 *  otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
 *  trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves
 *  become important records with their own provenance. Provenance statement indicates clinical significance in terms of
 *  confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g., Document
 *  Completion - has the artifact been legally authenticated), all of which may impact Security, Privacy, and Trust
 *  policies.
 */
public class Provenance: DomainResource
{
	override public class var resourceName: String {
		get { return "Provenance" }
	}
	
	/// Agents involved in creating resource
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Policy or plan the activity was defined by
	public var policy: [NSURL]?
	
	/// Reason the activity is occurring
	public var reason: CodeableConcept?
	
	/// When the activity was recorded / updated
	public var recorded: Instant?
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]?
	
	public convenience init(recorded: Instant?, target: [Reference]?) {
		self.init(json: nil)
		if nil != recorded {
			self.recorded = recorded
		}
		if nil != target {
			self.target = target
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? [FHIRJSON] {
				self.agent = ProvenanceAgent.from(val, owner: self) as? [ProvenanceAgent]
			}
			if let val = js["entity"] as? [FHIRJSON] {
				self.entity = ProvenanceEntity.from(val, owner: self) as? [ProvenanceEntity]
			}
			if let val = js["location"] as? FHIRJSON {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["policy"] as? [String] {
				self.policy = NSURL.from(val)
			}
			if let val = js["reason"] as? FHIRJSON {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["recorded"] as? String {
				self.recorded = Instant(string: val)
			}
			if let val = js["signature"] as? [FHIRJSON] {
				self.signature = Signature.from(val, owner: self) as? [Signature]
			}
			if let val = js["target"] as? [FHIRJSON] {
				self.target = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let agent = self.agent {
			json["agent"] = ProvenanceAgent.asJSONArray(agent)
		}
		if let entity = self.entity {
			json["entity"] = ProvenanceEntity.asJSONArray(entity)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let policy = self.policy {
			var arr = [AnyObject]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = Signature.asJSONArray(signature)
		}
		if let target = self.target {
			json["target"] = Reference.asJSONArray(target)
		}
		
		return json
	}
}


/**
 *  Agents involved in creating resource.
 *
 *  An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the
 *  activity taking place. An agent can be a person, an organization, software, or other entities that may be ascribed
 *  responsibility.
 */
public class ProvenanceAgent: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProvenanceAgent" }
	}
	
	/// Human description of participant
	public var display: String?
	
	/// Identity of agent
	public var referenceReference: Reference?
	
	/// Identity of agent
	public var referenceUri: NSURL?
	
	/// Agents Role
	public var role: Coding?
	
	/// Agent Type
	public var type: Coding?
	
	public convenience init(role: Coding?, type: Coding?) {
		self.init(json: nil)
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["referenceReference"] as? FHIRJSON {
				self.referenceReference = Reference(json: val, owner: self)
			}
			if let val = js["referenceUri"] as? String {
				self.referenceUri = NSURL(string: val)
			}
			if let val = js["role"] as? FHIRJSON {
				self.role = Coding(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let referenceReference = self.referenceReference {
			json["referenceReference"] = referenceReference.asJSON()
		}
		if let referenceUri = self.referenceUri {
			json["referenceUri"] = referenceUri.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  An entity used in this activity.
 */
public class ProvenanceEntity: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProvenanceEntity" }
	}
	
	/// Agents involved in creating resource
	public var agent: ProvenanceAgent?
	
	/// Human description of entity
	public var display: String?
	
	/// Identity of entity
	public var reference: NSURL?
	
	/// derivation | revision | quotation | source
	public var role: String?
	
	/// Entity Type
	public var type: Coding?
	
	public convenience init(reference: NSURL?, role: String?, type: Coding?) {
		self.init(json: nil)
		if nil != reference {
			self.reference = reference
		}
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? FHIRJSON {
				self.agent = ProvenanceAgent(json: val, owner: self)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(string: val)
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let agent = self.agent {
			json["agent"] = agent.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

