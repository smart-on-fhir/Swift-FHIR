//
//  AuditEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Event record kept for security purposes.
 *
 *  A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 *  attempts and monitoring for inappropriate usage.
 */
public class AuditEvent: DomainResource {
	override public class var resourceName: String {
		get { return "AuditEvent" }
	}
	
	/// Type of action performed during the event.
	public var action: String?
	
	/// Actor involved in the event.
	public var agent: [AuditEventAgent]?
	
	/// Data or objects used.
	public var entity: [AuditEventEntity]?
	
	/// Whether the event succeeded or failed.
	public var outcome: String?
	
	/// Description of the event outcome.
	public var outcomeDesc: String?
	
	/// The purposeOfUse of the event.
	public var purposeOfEvent: [Coding]?
	
	/// Time when the event occurred on source.
	public var recorded: Instant?
	
	/// Audit Event Reporter.
	public var source: AuditEventSource?
	
	/// More specific type/id for the event.
	public var subtype: [Coding]?
	
	/// Type/identifier of event.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: [AuditEventAgent], recorded: Instant, source: AuditEventSource, type: Coding) {
		self.init(json: nil)
		self.agent = agent
		self.recorded = recorded
		self.source = source
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? String {
					self.action = val
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["agent"] {
				presentKeys.insert("agent")
				if let val = exist as? [FHIRJSON] {
					self.agent = AuditEventAgent.from(val, owner: self) as? [AuditEventAgent]
				}
				else {
					errors.append(FHIRJSONError(key: "agent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "agent"))
			}
			if let exist: AnyObject = js["entity"] {
				presentKeys.insert("entity")
				if let val = exist as? [FHIRJSON] {
					self.entity = AuditEventEntity.from(val, owner: self) as? [AuditEventEntity]
				}
				else {
					errors.append(FHIRJSONError(key: "entity", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcomeDesc"] {
				presentKeys.insert("outcomeDesc")
				if let val = exist as? String {
					self.outcomeDesc = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcomeDesc", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purposeOfEvent"] {
				presentKeys.insert("purposeOfEvent")
				if let val = exist as? [FHIRJSON] {
					self.purposeOfEvent = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purposeOfEvent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["recorded"] {
				presentKeys.insert("recorded")
				if let val = exist as? String {
					self.recorded = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "recorded", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "recorded"))
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = AuditEventSource(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist: AnyObject = js["subtype"] {
				presentKeys.insert("subtype")
				if let val = exist as? [FHIRJSON] {
					self.subtype = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "subtype", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let agent = self.agent {
			json["agent"] = AuditEventAgent.asJSONArray(agent)
		}
		if let entity = self.entity {
			json["entity"] = AuditEventEntity.asJSONArray(entity)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let outcomeDesc = self.outcomeDesc {
			json["outcomeDesc"] = outcomeDesc.asJSON()
		}
		if let purposeOfEvent = self.purposeOfEvent {
			json["purposeOfEvent"] = Coding.asJSONArray(purposeOfEvent)
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let subtype = self.subtype {
			json["subtype"] = Coding.asJSONArray(subtype)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Actor involved in the event.
 *
 *  An actor taking an active role in the event or activity that is logged.
 */
public class AuditEventAgent: BackboneElement {
	override public class var resourceName: String {
		get { return "AuditEventAgent" }
	}
	
	/// Alternative User id e.g. authentication.
	public var altId: String?
	
	/// Where.
	public var location: Reference?
	
	/// Type of media.
	public var media: Coding?
	
	/// Human-meaningful name for the agent.
	public var name: String?
	
	/// Logical network location for application activity.
	public var network: AuditEventAgentNetwork?
	
	/// Policy that authorized event.
	public var policy: [NSURL]?
	
	/// Reason given for this user.
	public var purposeOfUse: [Coding]?
	
	/// Direct reference to resource.
	public var reference: Reference?
	
	/// Whether user is initiator.
	public var requestor: Bool?
	
	/// Agent role in the event.
	public var role: [CodeableConcept]?
	
	/// Unique identifier for the user.
	public var userId: Identifier?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(requestor: Bool) {
		self.init(json: nil)
		self.requestor = requestor
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["altId"] {
				presentKeys.insert("altId")
				if let val = exist as? String {
					self.altId = val
				}
				else {
					errors.append(FHIRJSONError(key: "altId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["media"] {
				presentKeys.insert("media")
				if let val = exist as? FHIRJSON {
					self.media = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "media", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? FHIRJSON {
					self.network = AuditEventAgentNetwork(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["policy"] {
				presentKeys.insert("policy")
				if let val = exist as? [String] {
					self.policy = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "policy", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purposeOfUse"] {
				presentKeys.insert("purposeOfUse")
				if let val = exist as? [FHIRJSON] {
					self.purposeOfUse = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purposeOfUse", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestor"] {
				presentKeys.insert("requestor")
				if let val = exist as? Bool {
					self.requestor = val
				}
				else {
					errors.append(FHIRJSONError(key: "requestor", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "requestor"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["userId"] {
				presentKeys.insert("userId")
				if let val = exist as? FHIRJSON {
					self.userId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "userId", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let altId = self.altId {
			json["altId"] = altId.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let media = self.media {
			json["media"] = media.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let policy = self.policy {
			var arr = [AnyObject]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let purposeOfUse = self.purposeOfUse {
			json["purposeOfUse"] = Coding.asJSONArray(purposeOfUse)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let requestor = self.requestor {
			json["requestor"] = requestor.asJSON()
		}
		if let role = self.role {
			json["role"] = CodeableConcept.asJSONArray(role)
		}
		if let userId = self.userId {
			json["userId"] = userId.asJSON()
		}
		
		return json
	}
}


/**
 *  Logical network location for application activity.
 *
 *  Logical network location for application activity, if the activity has a network location.
 */
public class AuditEventAgentNetwork: BackboneElement {
	override public class var resourceName: String {
		get { return "AuditEventAgentNetwork" }
	}
	
	/// Identifier for the network access point of the user device.
	public var address: String?
	
	/// The type of network access point.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? String {
					self.address = val
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Data or objects used.
 *
 *  Specific instances of data or objects that have been accessed.
 */
public class AuditEventEntity: BackboneElement {
	override public class var resourceName: String {
		get { return "AuditEventEntity" }
	}
	
	/// Descriptive text.
	public var description_fhir: String?
	
	/// Additional Information about the entity.
	public var detail: [AuditEventEntityDetail]?
	
	/// Specific instance of object.
	public var identifier: Identifier?
	
	/// Life-cycle stage for the entity.
	public var lifecycle: Coding?
	
	/// Descriptor for entity.
	public var name: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = AuditEventEntityDetail.from(val, owner: self) as? [AuditEventEntityDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lifecycle"] {
				presentKeys.insert("lifecycle")
				if let val = exist as? FHIRJSON {
					self.lifecycle = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "lifecycle", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["query"] {
				presentKeys.insert("query")
				if let val = exist as? String {
					self.query = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "query", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["securityLabel"] {
				presentKeys.insert("securityLabel")
				if let val = exist as? [FHIRJSON] {
					self.securityLabel = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = AuditEventEntityDetail.asJSONArray(detail)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let lifecycle = self.lifecycle {
			json["lifecycle"] = lifecycle.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let query = self.query {
			json["query"] = query.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = Coding.asJSONArray(securityLabel)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional Information about the entity.
 */
public class AuditEventEntityDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "AuditEventEntityDetail" }
	}
	
	/// Name of the property.
	public var type: String?
	
	/// Property value.
	public var value: Base64Binary?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, value: Base64Binary) {
		self.init(json: nil)
		self.type = type
		self.value = value
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Audit Event Reporter.
 *
 *  The system that is reporting the event.
 */
public class AuditEventSource: BackboneElement {
	override public class var resourceName: String {
		get { return "AuditEventSource" }
	}
	
	/// The identity of source detecting the event.
	public var identifier: Identifier?
	
	/// Logical source location within the enterprise.
	public var site: String?
	
	/// The type of source where event originated.
	public var type: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? String {
					self.site = val
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let type = self.type {
			json["type"] = Coding.asJSONArray(type)
		}
		
		return json
	}
}

