//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
 *  otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
 *  trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves
 *  become important records with their own provenance. Provenance statement indicates clinical significance in terms of
 *  confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document
 *  Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust
 *  policies.
 */
open class Provenance: DomainResource {
	override open class var resourceType: String {
		get { return "Provenance" }
	}
	
	/// Activity that occurred.
	public var activity: Coding?
	
	/// Actor involved.
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity.
	public var entity: [ProvenanceEntity]?
	
	/// Where the activity occurred, if relevant.
	public var location: Reference?
	
	/// When the activity occurred.
	public var period: Period?
	
	/// Policy or plan the activity was defined by.
	public var policy: [URL]?
	
	/// Reason the activity is occurring.
	public var reason: [Coding]?
	
	/// When the activity was recorded / updated.
	public var recorded: Instant?
	
	/// Signature on target.
	public var signature: [Signature]?
	
	/// Target Reference(s) (usually version specific).
	public var target: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: [ProvenanceAgent], recorded: Instant, target: [Reference]) {
		self.init(json: nil)
		self.agent = agent
		self.recorded = recorded
		self.target = target
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["activity"] {
				presentKeys.insert("activity")
				if let val = exist as? FHIRJSON {
					self.activity = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "activity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["agent"] {
				presentKeys.insert("agent")
				if let val = exist as? [FHIRJSON] {
					self.agent = ProvenanceAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgent]
				}
				else {
					errors.append(FHIRJSONError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "agent"))
			}
			if let exist = js["entity"] {
				presentKeys.insert("entity")
				if let val = exist as? [FHIRJSON] {
					self.entity = ProvenanceEntity.instantiate(fromArray: val, owner: self) as? [ProvenanceEntity]
				}
				else {
					errors.append(FHIRJSONError(key: "entity", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["policy"] {
				presentKeys.insert("policy")
				if let val = exist as? [String] {
					self.policy = URL.instantiate(fromArray: val)
				}
				else {
					errors.append(FHIRJSONError(key: "policy", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? [FHIRJSON] {
					self.reason = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["recorded"] {
				presentKeys.insert("recorded")
				if let val = exist as? String {
					self.recorded = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "recorded", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "recorded"))
			}
			if let exist = js["signature"] {
				presentKeys.insert("signature")
				if let val = exist as? [FHIRJSON] {
					self.signature = Signature.instantiate(fromArray: val, owner: self) as? [Signature]
				}
				else {
					errors.append(FHIRJSONError(key: "signature", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [FHIRJSON] {
					self.target = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "target"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = activity.asJSON()
		}
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON() }
		}
		if let entity = self.entity {
			json["entity"] = entity.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let policy = self.policy {
			var arr = [Any]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON() }
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = signature.map() { $0.asJSON() }
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Actor involved.
 *
 *  An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
 *  taking place.
 */
open class ProvenanceAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceAgent" }
	}
	
	/// Individual, device or organization playing role.
	public var actor: Reference?
	
	/// Track delegation between agents.
	public var relatedAgent: [ProvenanceAgentRelatedAgent]?
	
	/// What the agents involvement was.
	public var role: Coding?
	
	/// Authorization-system identifier for the agent.
	public var userId: Identifier?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: Coding) {
		self.init(json: nil)
		self.role = role
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? FHIRJSON {
					self.actor = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedAgent"] {
				presentKeys.insert("relatedAgent")
				if let val = exist as? [FHIRJSON] {
					self.relatedAgent = ProvenanceAgentRelatedAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgentRelatedAgent]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedAgent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "role"))
			}
			if let exist = js["userId"] {
				presentKeys.insert("userId")
				if let val = exist as? FHIRJSON {
					self.userId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "userId", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let relatedAgent = self.relatedAgent {
			json["relatedAgent"] = relatedAgent.map() { $0.asJSON() }
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let userId = self.userId {
			json["userId"] = userId.asJSON()
		}
		
		return json
	}
}


/**
 *  Track delegation between agents.
 *
 *  A relationship between two the agents referenced in this resource. This is defined to allow for explicit description
 *  of the delegation between agents.  For example, this human author used this device, or one person acted on another's
 *  behest.
 */
open class ProvenanceAgentRelatedAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceAgentRelatedAgent" }
	}
	
	/// Reference to other agent in this resource by identifier.
	public var target: URL?
	
	/// Type of relationship between agents.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: URL, type: CodeableConcept) {
		self.init(json: nil)
		self.target = target
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? String {
					self.target = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "target"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let target = self.target {
			json["target"] = target.asJSON()
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
open class ProvenanceEntity: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceEntity" }
	}
	
	/// Entity is attributed to this agent.
	public var agent: [ProvenanceAgent]?
	
	/// Human description of entity.
	public var display: String?
	
	/// Identity of entity.
	public var reference: URL?
	
	/// derivation | revision | quotation | source | removal.
	public var role: String?
	
	/// The type of resource in this entity.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: URL, role: String, type: Coding) {
		self.init(json: nil)
		self.reference = reference
		self.role = role
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["agent"] {
				presentKeys.insert("agent")
				if let val = exist as? [FHIRJSON] {
					self.agent = ProvenanceAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgent]
				}
				else {
					errors.append(FHIRJSONError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["display"] {
				presentKeys.insert("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(FHIRJSONError(key: "display", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? String {
					self.reference = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "reference"))
			}
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? String {
					self.role = val
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "role"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON() }
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

