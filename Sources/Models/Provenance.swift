//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2018-05-03.
//  2018, SMART Health IT.
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
	public var activity: CodeableConcept?
	
	/// Actor involved.
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity.
	public var entity: [ProvenanceEntity]?
	
	/// Where the activity occurred, if relevant.
	public var location: Reference?
	
	/// When the activity occurred.
	public var occurredDateTime: DateTime?
	
	/// When the activity occurred.
	public var occurredPeriod: Period?
	
	/// Policy or plan the activity was defined by.
	public var policy: [FHIRURL]?
	
	/// Reason the activity is occurring.
	public var reason: [CodeableConcept]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		activity = createInstance(type: CodeableConcept.self, for: "activity", in: json, context: &instCtx, owner: self) ?? activity
		agent = createInstances(of: ProvenanceAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		if (nil == agent || agent!.isEmpty) && !instCtx.containsKey("agent") {
			instCtx.addError(FHIRValidationError(missing: "agent"))
		}
		entity = createInstances(of: ProvenanceEntity.self, for: "entity", in: json, context: &instCtx, owner: self) ?? entity
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		occurredDateTime = createInstance(type: DateTime.self, for: "occurredDateTime", in: json, context: &instCtx, owner: self) ?? occurredDateTime
		occurredPeriod = createInstance(type: Period.self, for: "occurredPeriod", in: json, context: &instCtx, owner: self) ?? occurredPeriod
		policy = createInstances(of: FHIRURL.self, for: "policy", in: json, context: &instCtx, owner: self) ?? policy
		reason = createInstances(of: CodeableConcept.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		recorded = createInstance(type: Instant.self, for: "recorded", in: json, context: &instCtx, owner: self) ?? recorded
		if nil == recorded && !instCtx.containsKey("recorded") {
			instCtx.addError(FHIRValidationError(missing: "recorded"))
		}
		signature = createInstances(of: Signature.self, for: "signature", in: json, context: &instCtx, owner: self) ?? signature
		target = createInstances(of: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		if (nil == target || target!.isEmpty) && !instCtx.containsKey("target") {
			instCtx.addError(FHIRValidationError(missing: "target"))
		}
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
		self.occurredDateTime?.decorate(json: &json, withKey: "occurredDateTime", errors: &errors)
		self.occurredPeriod?.decorate(json: &json, withKey: "occurredPeriod", errors: &errors)
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
	public var onBehalfOfIdentifier: Identifier?
	
	/// Who the agent is representing.
	public var onBehalfOfReference: Reference?
	
	/// What the agents role was.
	public var role: [CodeableConcept]?
	
	/// How the agent participated.
	public var type: CodeableConcept?
	
	/// Who participated.
	public var whoIdentifier: Identifier?
	
	/// Who participated.
	public var whoReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(who: Any) {
		self.init()
		if let value = who as? Identifier {
			self.whoIdentifier = value
		}
		else if let value = who as? Reference {
			self.whoReference = value
		}
		else {
			fhir_warn("Type “\(type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		onBehalfOfIdentifier = createInstance(type: Identifier.self, for: "onBehalfOfIdentifier", in: json, context: &instCtx, owner: self) ?? onBehalfOfIdentifier
		onBehalfOfReference = createInstance(type: Reference.self, for: "onBehalfOfReference", in: json, context: &instCtx, owner: self) ?? onBehalfOfReference
		role = createInstances(of: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		whoIdentifier = createInstance(type: Identifier.self, for: "whoIdentifier", in: json, context: &instCtx, owner: self) ?? whoIdentifier
		whoReference = createInstance(type: Reference.self, for: "whoReference", in: json, context: &instCtx, owner: self) ?? whoReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whoIdentifier && nil == self.whoReference {
			instCtx.addError(FHIRValidationError(missing: "who[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.onBehalfOfIdentifier?.decorate(json: &json, withKey: "onBehalfOfIdentifier", errors: &errors)
		self.onBehalfOfReference?.decorate(json: &json, withKey: "onBehalfOfReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.whoIdentifier?.decorate(json: &json, withKey: "whoIdentifier", errors: &errors)
		self.whoReference?.decorate(json: &json, withKey: "whoReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whoIdentifier && nil == self.whoReference {
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: ProvenanceEntityRole, what: Any) {
		self.init()
		self.role = role
		if let value = what as? Identifier {
			self.whatIdentifier = value
		}
		else if let value = what as? Reference {
			self.whatReference = value
		}
		else {
			fhir_warn("Type “\(type(of: what))” for property “\(what)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		agent = createInstances(of: ProvenanceAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		role = createEnum(type: ProvenanceEntityRole.self, for: "role", in: json, context: &instCtx) ?? role
		if nil == role && !instCtx.containsKey("role") {
			instCtx.addError(FHIRValidationError(missing: "role"))
		}
		whatIdentifier = createInstance(type: Identifier.self, for: "whatIdentifier", in: json, context: &instCtx, owner: self) ?? whatIdentifier
		whatReference = createInstance(type: Reference.self, for: "whatReference", in: json, context: &instCtx, owner: self) ?? whatReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whatIdentifier && nil == self.whatReference {
			instCtx.addError(FHIRValidationError(missing: "what[x]"))
		}
		
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
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whatIdentifier && nil == self.whatReference {
			errors.append(FHIRValidationError(missing: "what[x]"))
		}
	}
}

