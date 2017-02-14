//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2017-02-14.
//  2017, SMART Health IT.
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
	public var policy: [FHIRURL]?
	
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
		
		activity = try createInstance(type: Coding.self, for: "activity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? activity
		agent = try createInstances(of: ProvenanceAgent.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if (nil == agent || agent!.isEmpty) && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		entity = try createInstances(of: ProvenanceEntity.self, for: "entity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? entity
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		policy = try createInstances(of: FHIRURL.self, for: "policy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? policy
		reason = try createInstances(of: Coding.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		recorded = try createInstance(type: Instant.self, for: "recorded", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recorded
		if nil == recorded && !presentKeys.contains("recorded") {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		signature = try createInstances(of: Signature.self, for: "signature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? signature
		target = try createInstances(of: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		if (nil == target || target!.isEmpty) && !presentKeys.contains("target") {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.activity?.decorate(json: &json, withKey: "activity", errors: &errors)
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		if nil == agent || self.agent!.isEmpty {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		arrayDecorate(json: &json, withKey: "entity", using: self.entity, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "policy", using: self.policy, errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		self.recorded?.decorate(json: &json, withKey: "recorded", errors: &errors)
		if nil == self.recorded {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		arrayDecorate(json: &json, withKey: "signature", using: self.signature, errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
		if nil == target || self.target!.isEmpty {
			errors.append(FHIRValidationError(missing: "target"))
		}
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
	
	/// Who the agent is representing.
	public var onBehalfOfReference: Reference?
	
	/// Who the agent is representing.
	public var onBehalfOfUri: FHIRURL?
	
	/// Type of relationship between agents.
	public var relatedAgentType: CodeableConcept?
	
	/// What the agents involvement was.
	public var role: Coding?
	
	/// Who participated.
	public var whoReference: Reference?
	
	/// Who participated.
	public var whoUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: Coding, who: Any) {
		self.init()
		self.role = role
		if let value = who as? FHIRURL {
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
		
		onBehalfOfReference = try createInstance(type: Reference.self, for: "onBehalfOfReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOfReference
		onBehalfOfUri = try createInstance(type: FHIRURL.self, for: "onBehalfOfUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOfUri
		relatedAgentType = try createInstance(type: CodeableConcept.self, for: "relatedAgentType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedAgentType
		role = try createInstance(type: Coding.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		if nil == role && !presentKeys.contains("role") {
			errors.append(FHIRValidationError(missing: "role"))
		}
		whoReference = try createInstance(type: Reference.self, for: "whoReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whoReference
		whoUri = try createInstance(type: FHIRURL.self, for: "whoUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whoUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.onBehalfOfReference?.decorate(json: &json, withKey: "onBehalfOfReference", errors: &errors)
		self.onBehalfOfUri?.decorate(json: &json, withKey: "onBehalfOfUri", errors: &errors)
		self.relatedAgentType?.decorate(json: &json, withKey: "relatedAgentType", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
		self.whoReference?.decorate(json: &json, withKey: "whoReference", errors: &errors)
		self.whoUri?.decorate(json: &json, withKey: "whoUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
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
	
	/// How the entity was used during the activity.
	public var role: ProvenanceEntityRole?
	
	/// Identity of entity.
	public var whatIdentifier: Identifier?
	
	/// Identity of entity.
	public var whatReference: Reference?
	
	/// Identity of entity.
	public var whatUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: ProvenanceEntityRole, what: Any) {
		self.init()
		self.role = role
		if let value = what as? FHIRURL {
			self.whatUri = value
		}
		else if let value = what as? Reference {
			self.whatReference = value
		}
		else if let value = what as? Identifier {
			self.whatIdentifier = value
		}
		else {
			fhir_warn("Type “\(type(of: what))” for property “\(what)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstances(of: ProvenanceAgent.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		role = createEnum(type: ProvenanceEntityRole.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors) ?? role
		if nil == role && !presentKeys.contains("role") {
			errors.append(FHIRValidationError(missing: "role"))
		}
		whatIdentifier = try createInstance(type: Identifier.self, for: "whatIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whatIdentifier
		whatReference = try createInstance(type: Reference.self, for: "whatReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whatReference
		whatUri = try createInstance(type: FHIRURL.self, for: "whatUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? whatUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whatUri && nil == self.whatReference && nil == self.whatIdentifier {
			errors.append(FHIRValidationError(missing: "what[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
		self.whatIdentifier?.decorate(json: &json, withKey: "whatIdentifier", errors: &errors)
		self.whatReference?.decorate(json: &json, withKey: "whatReference", errors: &errors)
		self.whatUri?.decorate(json: &json, withKey: "whatUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whatUri && nil == self.whatReference && nil == self.whatIdentifier {
			errors.append(FHIRValidationError(missing: "what[x]"))
		}
	}
}

