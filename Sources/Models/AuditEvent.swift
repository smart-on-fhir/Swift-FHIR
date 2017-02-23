//
//  AuditEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2017-02-23.
//  2017, SMART Health IT.
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
	
	/// The purposeOfUse of the event.
	public var purposeOfEvent: [CodeableConcept]?
	
	/// Time when the event occurred on source.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = createEnum(type: AuditEventAction.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors) ?? action
		agent = try createInstances(of: AuditEventAgent.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if (nil == agent || agent!.isEmpty) && !presentKeys.contains("agent") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		entity = try createInstances(of: AuditEventEntity.self, for: "entity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? entity
		outcome = try createInstance(type: FHIRString.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		outcomeDesc = try createInstance(type: FHIRString.self, for: "outcomeDesc", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcomeDesc
		purposeOfEvent = try createInstances(of: CodeableConcept.self, for: "purposeOfEvent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purposeOfEvent
		recorded = try createInstance(type: Instant.self, for: "recorded", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recorded
		if nil == recorded && !presentKeys.contains("recorded") {
			errors.append(FHIRValidationError(missing: "recorded"))
		}
		source = try createInstance(type: AuditEventSource.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		if nil == source && !presentKeys.contains("source") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "source"))
		}
		subtype = try createInstances(of: Coding.self, for: "subtype", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subtype
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	/// Alternative User id e.g. authentication.
	public var altId: FHIRString?
	
	/// Where.
	public var location: Reference?
	
	/// Type of media.
	public var media: Coding?
	
	/// Human-meaningful name for the agent.
	public var name: FHIRString?
	
	/// Logical network location for application activity.
	public var network: AuditEventAgentNetwork?
	
	/// Policy that authorized event.
	public var policy: [FHIRURL]?
	
	/// Reason given for this user.
	public var purposeOfUse: [CodeableConcept]?
	
	/// Direct reference to resource.
	public var reference: Reference?
	
	/// Whether user is initiator.
	public var requestor: FHIRBool?
	
	/// Agent role in the event.
	public var role: [CodeableConcept]?
	
	/// Unique identifier for the user.
	public var userId: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(requestor: FHIRBool) {
		self.init()
		self.requestor = requestor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		altId = try createInstance(type: FHIRString.self, for: "altId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? altId
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		media = try createInstance(type: Coding.self, for: "media", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? media
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		network = try createInstance(type: AuditEventAgentNetwork.self, for: "network", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? network
		policy = try createInstances(of: FHIRURL.self, for: "policy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? policy
		purposeOfUse = try createInstances(of: CodeableConcept.self, for: "purposeOfUse", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purposeOfUse
		reference = try createInstance(type: Reference.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		requestor = try createInstance(type: FHIRBool.self, for: "requestor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestor
		if nil == requestor && !presentKeys.contains("requestor") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "requestor"))
		}
		role = try createInstances(of: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		userId = try createInstance(type: Identifier.self, for: "userId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? userId
		
		return errors.isEmpty ? nil : errors
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
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.requestor?.decorate(json: &json, withKey: "requestor", errors: &errors)
		if nil == self.requestor {
			errors.append(FHIRValidationError(missing: "requestor"))
		}
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
		self.userId?.decorate(json: &json, withKey: "userId", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		address = try createInstance(type: FHIRString.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
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
	
	/// Specific instance of object.
	public var identifier: Identifier?
	
	/// Life-cycle stage for the entity.
	public var lifecycle: Coding?
	
	/// Descriptor for entity.
	public var name: FHIRString?
	
	/// Query parameters.
	public var query: Base64Binary?
	
	/// Specific instance of resource.
	public var reference: Reference?
	
	/// What role the entity played.
	public var role: Coding?
	
	/// Security labels on the entity.
	public var securityLabel: [Coding]?
	
	/// Type of entity involved.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		detail = try createInstances(of: AuditEventEntityDetail.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		lifecycle = try createInstance(type: Coding.self, for: "lifecycle", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lifecycle
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		query = try createInstance(type: Base64Binary.self, for: "query", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? query
		reference = try createInstance(type: Reference.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		role = try createInstance(type: Coding.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		securityLabel = try createInstances(of: Coding.self, for: "securityLabel", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? securityLabel
		type = try createInstance(type: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.lifecycle?.decorate(json: &json, withKey: "lifecycle", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.query?.decorate(json: &json, withKey: "query", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Additional Information about the entity.
*/
open class AuditEventEntityDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventEntityDetail" }
	}
	
	/// Name of the property.
	public var type: FHIRString?
	
	/// Property value.
	public var value: Base64Binary?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString, value: Base64Binary) {
		self.init()
		self.type = type
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "type"))
		}
		value = try createInstance(type: Base64Binary.self, for: "value", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? value
		if nil == value && !presentKeys.contains("value") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
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
	public var identifier: Identifier?
	
	/// Logical source location within the enterprise.
	public var site: FHIRString?
	
	/// The type of source where event originated.
	public var type: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		site = try createInstance(type: FHIRString.self, for: "site", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? site
		type = try createInstances(of: Coding.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}

