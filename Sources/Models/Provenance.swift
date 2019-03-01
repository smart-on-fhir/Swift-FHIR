//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Provenance) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var onBehalfOf: Reference?
	
	/// What the agents role was.
	public var role: [CodeableConcept]?
	
	/// How the agent participated.
	public var type: CodeableConcept?
	
	/// Who participated.
	public var who: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(who: Reference) {
		self.init()
		self.who = who
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
		role = createInstances(of: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		who = createInstance(type: Reference.self, for: "who", in: json, context: &instCtx, owner: self) ?? who
		if nil == who && !instCtx.containsKey("who") {
			instCtx.addError(FHIRValidationError(missing: "who"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.who?.decorate(json: &json, withKey: "who", errors: &errors)
		if nil == self.who {
			errors.append(FHIRValidationError(missing: "who"))
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
	public var what: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(role: ProvenanceEntityRole, what: Reference) {
		self.init()
		self.role = role
		self.what = what
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		agent = createInstances(of: ProvenanceAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		role = createEnum(type: ProvenanceEntityRole.self, for: "role", in: json, context: &instCtx) ?? role
		if nil == role && !instCtx.containsKey("role") {
			instCtx.addError(FHIRValidationError(missing: "role"))
		}
		what = createInstance(type: Reference.self, for: "what", in: json, context: &instCtx, owner: self) ?? what
		if nil == what && !instCtx.containsKey("what") {
			instCtx.addError(FHIRValidationError(missing: "what"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
		self.what?.decorate(json: &json, withKey: "what", errors: &errors)
		if nil == self.what {
			errors.append(FHIRValidationError(missing: "what"))
		}
	}
}

