//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2016-11-03.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: [ProvenanceAgent], recorded: Instant, target: [Reference]) {
		self.init()
		self.agent = agent
		self.recorded = recorded
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["activity"] {
			presentKeys.insert("activity")
			if let val = exist as? FHIRJSON {
				do {
					self.activity = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "activity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "activity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.agent = try ProvenanceAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "agent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		if let exist = json["entity"] {
			presentKeys.insert("entity")
			if let val = exist as? [FHIRJSON] {
				do {
					self.entity = try ProvenanceEntity.instantiate(fromArray: val, owner: self) as? [ProvenanceEntity]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entity", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["policy"] {
			presentKeys.insert("policy")
			if let val = exist as? [String] {
				self.policy = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "policy", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reason = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["recorded"] {
			presentKeys.insert("recorded")
			if let val = exist as? String {
				self.recorded = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "recorded", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		if let exist = json["signature"] {
			presentKeys.insert("signature")
			if let val = exist as? [FHIRJSON] {
				do {
					self.signature = try Signature.instantiate(fromArray: val, owner: self) as? [Signature]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "signature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "signature", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? [FHIRJSON] {
				do {
					self.target = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let activity = self.activity {
			json["activity"] = activity.asJSON(errors: &errors)
		}
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
		}
		if let entity = self.entity {
			json["entity"] = entity.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let policy = self.policy {
			var arr = [Any]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = signature.map() { $0.asJSON(errors: &errors) }
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON(errors: &errors) }
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: Coding) {
		self.init()
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? FHIRJSON {
				do {
					self.actor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedAgent"] {
			presentKeys.insert("relatedAgent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedAgent = try ProvenanceAgentRelatedAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgentRelatedAgent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedAgent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedAgent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? FHIRJSON {
				do {
					self.role = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		if let exist = json["userId"] {
			presentKeys.insert("userId")
			if let val = exist as? FHIRJSON {
				do {
					self.userId = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "userId"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "userId", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let relatedAgent = self.relatedAgent {
			json["relatedAgent"] = relatedAgent.map() { $0.asJSON(errors: &errors) }
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		if let userId = self.userId {
			json["userId"] = userId.asJSON(errors: &errors)
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(target: URL, type: CodeableConcept) {
		self.init()
		self.target = target
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? String {
				self.target = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: URL, role: String, type: Coding) {
		self.init()
		self.reference = reference
		self.role = role
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.agent = try ProvenanceAgent.instantiate(fromArray: val, owner: self) as? [ProvenanceAgent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "agent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["display"] {
			presentKeys.insert("display")
			if let val = exist as? String {
				self.display = val
			}
			else {
				errors.append(FHIRValidationError(key: "display", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? String {
				self.reference = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? String {
				self.role = val
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
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
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

