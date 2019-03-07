//
//  AuditEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Event record kept for security purposes.

A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
attempts and monitoring for inappropriate usage.
*/
open class AuditEvent: DomainResource {
	override open class var resourceType: String {
		get { return "AuditEvent" }
	}
	
	/// Indicator for type of action performed during the event that generated the audit.
	public var action: AuditEventAction?
	
	/// Actor involved in the event.
	public var agent: [AuditEventAgent]?
	
	/// Data or objects used.
	public var entity: [AuditEventEntity]?
	
	/// Whether the event succeeded or failed.
	public var outcome: FHIRString?
	
	/// Description of the event outcome.
	public var outcomeDesc: FHIRString?
	
	/// When the activity occurred.
	public var period: Period?
	
	/// The purposeOfUse of the event.
	public var purposeOfEvent: [CodeableConcept]?
	
	/// Time when the event was recorded.
	public var recorded: Instant?
	
	/// Audit Event Reporter.
	public var source: AuditEventSource?
	
	/// More specific type/id for the event.
	public var subtype: [Coding]?
	
	/// Type/identifier of event.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: [AuditEventAgent], recorded: Instant, source: AuditEventSource, type: Coding) {
		self.init()
		self.agent = agent
		self.recorded = recorded
		self.source = source
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createEnum(type: AuditEventAction.self, for: "action", in: json, context: &instCtx) ?? action
		agent = createInstances(of: AuditEventAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		if (nil == agent || agent!.isEmpty) && !instCtx.containsKey("agent") {
			instCtx.addError(FHIRValidationError(missing: "agent"))
		}
		entity = createInstances(of: AuditEventEntity.self, for: "entity", in: json, context: &instCtx, owner: self) ?? entity
		outcome = createInstance(type: FHIRString.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		outcomeDesc = createInstance(type: FHIRString.self, for: "outcomeDesc", in: json, context: &instCtx, owner: self) ?? outcomeDesc
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		purposeOfEvent = createInstances(of: CodeableConcept.self, for: "purposeOfEvent", in: json, context: &instCtx, owner: self) ?? purposeOfEvent
		recorded = createInstance(type: Instant.self, for: "recorded", in: json, context: &instCtx, owner: self) ?? recorded
		if nil == recorded && !instCtx.containsKey("recorded") {
			instCtx.addError(FHIRValidationError(missing: "recorded"))
		}
		source = createInstance(type: AuditEventSource.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		if nil == source && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
		subtype = createInstances(of: Coding.self, for: "subtype", in: json, context: &instCtx, owner: self) ?? subtype
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.action?.decorate(json: &json, withKey: "action", errors: &errors)
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		if nil == agent || self.agent!.isEmpty {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		arrayDecorate(json: &json, withKey: "entity", using: self.entity, errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.outcomeDesc?.decorate(json: &json, withKey: "outcomeDesc", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "purposeOfEvent", using: self.purposeOfEvent, errors: &errors)
		self.recorded?.decorate(json: &json, withKey: "recorded", errors: &errors)
		if nil == self.recorded {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
		arrayDecorate(json: &json, withKey: "subtype", using: self.subtype, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Actor involved in the event.

An actor taking an active role in the event or activity that is logged.
*/
open class AuditEventAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventAgent" }
	}
	
	/// Alternative User identity.
	public var altId: FHIRString?
	
	/// Where.
	public var location: Reference?
	
	/// Type of media.
	public var media: Coding?
	
	/// Human friendly name for the agent.
	public var name: FHIRString?
	
	/// Logical network location for application activity.
	public var network: AuditEventAgentNetwork?
	
	/// Policy that authorized event.
	public var policy: [FHIRURL]?
	
	/// Reason given for this user.
	public var purposeOfUse: [CodeableConcept]?
	
	/// Whether user is initiator.
	public var requestor: FHIRBool?
	
	/// Agent role in the event.
	public var role: [CodeableConcept]?
	
	/// How agent participated.
	public var type: CodeableConcept?
	
	/// Identifier of who.
	public var who: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(requestor: FHIRBool) {
		self.init()
		self.requestor = requestor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		altId = createInstance(type: FHIRString.self, for: "altId", in: json, context: &instCtx, owner: self) ?? altId
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		media = createInstance(type: Coding.self, for: "media", in: json, context: &instCtx, owner: self) ?? media
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		network = createInstance(type: AuditEventAgentNetwork.self, for: "network", in: json, context: &instCtx, owner: self) ?? network
		policy = createInstances(of: FHIRURL.self, for: "policy", in: json, context: &instCtx, owner: self) ?? policy
		purposeOfUse = createInstances(of: CodeableConcept.self, for: "purposeOfUse", in: json, context: &instCtx, owner: self) ?? purposeOfUse
		requestor = createInstance(type: FHIRBool.self, for: "requestor", in: json, context: &instCtx, owner: self) ?? requestor
		if nil == requestor && !instCtx.containsKey("requestor") {
			instCtx.addError(FHIRValidationError(missing: "requestor"))
		}
		role = createInstances(of: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		who = createInstance(type: Reference.self, for: "who", in: json, context: &instCtx, owner: self) ?? who
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.altId?.decorate(json: &json, withKey: "altId", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.media?.decorate(json: &json, withKey: "media", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.network?.decorate(json: &json, withKey: "network", errors: &errors)
		arrayDecorate(json: &json, withKey: "policy", using: self.policy, errors: &errors)
		arrayDecorate(json: &json, withKey: "purposeOfUse", using: self.purposeOfUse, errors: &errors)
		self.requestor?.decorate(json: &json, withKey: "requestor", errors: &errors)
		if nil == self.requestor {
			errors.append(FHIRValidationError(missing: "requestor"))
		}
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.who?.decorate(json: &json, withKey: "who", errors: &errors)
	}
}


/**
Logical network location for application activity.

Logical network location for application activity, if the activity has a network location.
*/
open class AuditEventAgentNetwork: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventAgentNetwork" }
	}
	
	/// Identifier for the network access point of the user device.
	public var address: FHIRString?
	
	/// The type of network access point.
	public var type: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: FHIRString.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Data or objects used.

Specific instances of data or objects that have been accessed.
*/
open class AuditEventEntity: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventEntity" }
	}
	
	/// Descriptive text.
	public var description_fhir: FHIRString?
	
	/// Additional Information about the entity.
	public var detail: [AuditEventEntityDetail]?
	
	/// Life-cycle stage for the entity.
	public var lifecycle: Coding?
	
	/// Descriptor for entity.
	public var name: FHIRString?
	
	/// Query parameters.
	public var query: Base64Binary?
	
	/// What role the entity played.
	public var role: Coding?
	
	/// Security labels on the entity.
	public var securityLabel: [Coding]?
	
	/// Type of entity involved.
	public var type: Coding?
	
	/// Specific instance of resource.
	public var what: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		detail = createInstances(of: AuditEventEntityDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		lifecycle = createInstance(type: Coding.self, for: "lifecycle", in: json, context: &instCtx, owner: self) ?? lifecycle
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		query = createInstance(type: Base64Binary.self, for: "query", in: json, context: &instCtx, owner: self) ?? query
		role = createInstance(type: Coding.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		what = createInstance(type: Reference.self, for: "what", in: json, context: &instCtx, owner: self) ?? what
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.lifecycle?.decorate(json: &json, withKey: "lifecycle", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.query?.decorate(json: &json, withKey: "query", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.what?.decorate(json: &json, withKey: "what", errors: &errors)
	}
}


/**
Additional Information about the entity.

Tagged value pairs for conveying additional information about the entity.
*/
open class AuditEventEntityDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventEntityDetail" }
	}
	
	/// Name of the property.
	public var type: FHIRString?
	
	/// Property value.
	public var valueBase64Binary: Base64Binary?
	
	/// Property value.
	public var valueString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString, value: Any) {
		self.init()
		self.type = type
		if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueString && nil == self.valueBase64Binary {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueString && nil == self.valueBase64Binary {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Audit Event Reporter.

The system that is reporting the event.
*/
open class AuditEventSource: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventSource" }
	}
	
	/// The identity of source detecting the event.
	public var observer: Reference?
	
	/// Logical source location within the enterprise.
	public var site: FHIRString?
	
	/// The type of source where event originated.
	public var type: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(observer: Reference) {
		self.init()
		self.observer = observer
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		observer = createInstance(type: Reference.self, for: "observer", in: json, context: &instCtx, owner: self) ?? observer
		if nil == observer && !instCtx.containsKey("observer") {
			instCtx.addError(FHIRValidationError(missing: "observer"))
		}
		site = createInstance(type: FHIRString.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		type = createInstances(of: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.observer?.decorate(json: &json, withKey: "observer", errors: &errors)
		if nil == self.observer {
			errors.append(FHIRValidationError(missing: "observer"))
		}
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}

