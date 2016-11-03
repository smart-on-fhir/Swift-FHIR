//
//  AuditEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/AuditEvent) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Event record kept for security purposes.
 *
 *  A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion
 *  attempts and monitoring for inappropriate usage.
 */
open class AuditEvent: DomainResource {
	override open class var resourceType: String {
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
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? String {
				self.action = val
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.agent = try AuditEventAgent.instantiate(fromArray: val, owner: self) as? [AuditEventAgent]
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
					self.entity = try AuditEventEntity.instantiate(fromArray: val, owner: self) as? [AuditEventEntity]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entity", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? String {
				self.outcome = val
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcomeDesc"] {
			presentKeys.insert("outcomeDesc")
			if let val = exist as? String {
				self.outcomeDesc = val
			}
			else {
				errors.append(FHIRValidationError(key: "outcomeDesc", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purposeOfEvent"] {
			presentKeys.insert("purposeOfEvent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.purposeOfEvent = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "purposeOfEvent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "purposeOfEvent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? FHIRJSON {
				do {
					self.source = try AuditEventSource(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "source"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
		}
		if let exist = json["subtype"] {
			presentKeys.insert("subtype")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subtype = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subtype"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subtype", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
		}
		if let entity = self.entity {
			json["entity"] = entity.map() { $0.asJSON(errors: &errors) }
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let outcomeDesc = self.outcomeDesc {
			json["outcomeDesc"] = outcomeDesc.asJSON()
		}
		if let purposeOfEvent = self.purposeOfEvent {
			json["purposeOfEvent"] = purposeOfEvent.map() { $0.asJSON(errors: &errors) }
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON(errors: &errors)
		}
		if let subtype = self.subtype {
			json["subtype"] = subtype.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Actor involved in the event.
 *
 *  An actor taking an active role in the event or activity that is logged.
 */
open class AuditEventAgent: BackboneElement {
	override open class var resourceType: String {
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
	public var policy: [URL]?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(requestor: Bool) {
		self.init()
		self.requestor = requestor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["altId"] {
			presentKeys.insert("altId")
			if let val = exist as? String {
				self.altId = val
			}
			else {
				errors.append(FHIRValidationError(key: "altId", wants: String.self, has: type(of: exist)))
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
		if let exist = json["media"] {
			presentKeys.insert("media")
			if let val = exist as? FHIRJSON {
				do {
					self.media = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "media"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "media", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["network"] {
			presentKeys.insert("network")
			if let val = exist as? FHIRJSON {
				do {
					self.network = try AuditEventAgentNetwork(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "network"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "network", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["purposeOfUse"] {
			presentKeys.insert("purposeOfUse")
			if let val = exist as? [FHIRJSON] {
				do {
					self.purposeOfUse = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "purposeOfUse"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "purposeOfUse", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["requestor"] {
			presentKeys.insert("requestor")
			if let val = exist as? Bool {
				self.requestor = val
			}
			else {
				errors.append(FHIRValidationError(key: "requestor", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "requestor"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? [FHIRJSON] {
				do {
					self.role = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		
		if let altId = self.altId {
			json["altId"] = altId.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let media = self.media {
			json["media"] = media.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON(errors: &errors)
		}
		if let policy = self.policy {
			var arr = [Any]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let purposeOfUse = self.purposeOfUse {
			json["purposeOfUse"] = purposeOfUse.map() { $0.asJSON(errors: &errors) }
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		if let requestor = self.requestor {
			json["requestor"] = requestor.asJSON()
		}
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON(errors: &errors) }
		}
		if let userId = self.userId {
			json["userId"] = userId.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Logical network location for application activity.
 *
 *  Logical network location for application activity, if the activity has a network location.
 */
open class AuditEventAgentNetwork: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventAgentNetwork" }
	}
	
	/// Identifier for the network access point of the user device.
	public var address: String?
	
	/// The type of network access point.
	public var type: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? String {
				self.address = val
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
open class AuditEventEntity: BackboneElement {
	override open class var resourceType: String {
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try AuditEventEntityDetail.instantiate(fromArray: val, owner: self) as? [AuditEventEntityDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["lifecycle"] {
			presentKeys.insert("lifecycle")
			if let val = exist as? FHIRJSON {
				do {
					self.lifecycle = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "lifecycle"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "lifecycle", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["query"] {
			presentKeys.insert("query")
			if let val = exist as? String {
				self.query = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "query", wants: String.self, has: type(of: exist)))
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
		if let exist = json["securityLabel"] {
			presentKeys.insert("securityLabel")
			if let val = exist as? [FHIRJSON] {
				do {
					self.securityLabel = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "securityLabel"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let lifecycle = self.lifecycle {
			json["lifecycle"] = lifecycle.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let query = self.query {
			json["query"] = query.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = securityLabel.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Additional Information about the entity.
 */
open class AuditEventEntityDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventEntityDetail" }
	}
	
	/// Name of the property.
	public var type: String?
	
	/// Property value.
	public var value: Base64Binary?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, value: Base64Binary) {
		self.init()
		self.type = type
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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
open class AuditEventSource: BackboneElement {
	override open class var resourceType: String {
		get { return "AuditEventSource" }
	}
	
	/// The identity of source detecting the event.
	public var identifier: Identifier?
	
	/// Logical source location within the enterprise.
	public var site: String?
	
	/// The type of source where event originated.
	public var type: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init()
		self.identifier = identifier
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["site"] {
			presentKeys.insert("site")
			if let val = exist as? String {
				self.site = val
			}
			else {
				errors.append(FHIRValidationError(key: "site", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

