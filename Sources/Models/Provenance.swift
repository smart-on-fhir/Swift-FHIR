//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Who, What, When for a set of resources.

Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become
important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence
in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the
artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
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
				self.recorded = Instant(json: val)
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
		else {
			errors.append(FHIRValidationError(missing: "agent"))
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
			json["policy"] = policy.map() { $0.asJSON() }
		}
		if let reason = self.reason {
			json["reason"] = reason.map() { $0.asJSON(errors: &errors) }
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		if let signature = self.signature {
			json["signature"] = signature.map() { $0.asJSON(errors: &errors) }
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return json
	}
}


/**
Actor involved.

An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity
taking place.
*/
open class ProvenanceAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceAgent" }
	}
	
	/// On behalf of.
	public var onBehalfOfReference: Reference?
	
	/// On behalf of.
	public var onBehalfOfUri: URL?
	
	/// Type of relationship between agents.
	public var relatedAgentType: CodeableConcept?
	
	/// What the agents involvement was.
	public var role: Coding?
	
	/// Who participated.
	public var whoReference: Reference?
	
	/// Who participated.
	public var whoUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: Coding, who: Any) {
		self.init()
		self.role = role
		if let value = who as? URL {
			self.whoUri = value
		}
		else if let value = who as? Reference {
			self.whoReference = value
		}
		else {
			fhir_warn("Type “\(type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["onBehalfOfReference"] {
			presentKeys.insert("onBehalfOfReference")
			if let val = exist as? FHIRJSON {
				do {
					self.onBehalfOfReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "onBehalfOfReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "onBehalfOfReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["onBehalfOfUri"] {
			presentKeys.insert("onBehalfOfUri")
			if let val = exist as? String {
				self.onBehalfOfUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "onBehalfOfUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedAgentType"] {
			presentKeys.insert("relatedAgentType")
			if let val = exist as? FHIRJSON {
				do {
					self.relatedAgentType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedAgentType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedAgentType", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["whoReference"] {
			presentKeys.insert("whoReference")
			if let val = exist as? FHIRJSON {
				do {
					self.whoReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "whoReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "whoReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["whoUri"] {
			presentKeys.insert("whoUri")
			if let val = exist as? String {
				self.whoUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "whoUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let onBehalfOfReference = self.onBehalfOfReference {
			json["onBehalfOfReference"] = onBehalfOfReference.asJSON(errors: &errors)
		}
		if let onBehalfOfUri = self.onBehalfOfUri {
			json["onBehalfOfUri"] = onBehalfOfUri.asJSON()
		}
		if let relatedAgentType = self.relatedAgentType {
			json["relatedAgentType"] = relatedAgentType.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		if let whoReference = self.whoReference {
			json["whoReference"] = whoReference.asJSON(errors: &errors)
		}
		if let whoUri = self.whoUri {
			json["whoUri"] = whoUri.asJSON()
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
		
		return json
	}
}


/**
An entity used in this activity.
*/
open class ProvenanceEntity: BackboneElement {
	override open class var resourceType: String {
		get { return "ProvenanceEntity" }
	}
	
	/// Entity is attributed to this agent.
	public var agent: [ProvenanceAgent]?
	
	/// Identity of entity.
	public var reference: Reference?
	
	/// How the entity was used during the activity.
	public var role: ProvenanceEntityRole?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference, role: ProvenanceEntityRole) {
		self.init()
		self.reference = reference
		self.role = role
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
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? FHIRJSON {
				do {
					self.reference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? String {
				if let enumval = ProvenanceEntityRole(rawValue: val) {
					self.role = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "role", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		if let role = self.role {
			json["role"] = role.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		
		return json
	}
}

