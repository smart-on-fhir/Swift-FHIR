//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
A server push subscription criteria.

The subscription resource is used to define a push based subscription from a server to another system. Once a
subscription is registered with the server, the server checks every resource that is created or updated, and if the
resource matches the given criteria, it sends a message on the defined "channel" so that another system is able to take
an appropriate action.
*/
open class Subscription: DomainResource {
	override open class var resourceType: String {
		get { return "Subscription" }
	}
	
	/// The channel on which to report matches to the criteria.
	public var channel: SubscriptionChannel?
	
	/// Contact details for source (e.g. troubleshooting).
	public var contact: [ContactPoint]?
	
	/// Rule for server push criteria.
	public var criteria: FHIRString?
	
	/// When to automatically delete the subscription.
	public var end: Instant?
	
	/// Latest error note.
	public var error: FHIRString?
	
	/// Description of why this subscription was created.
	public var reason: FHIRString?
	
	/// The status of the subscription, which marks the server state for managing the subscription.
	public var status: SubscriptionStatus?
	
	/// A tag to add to matching resources.
	public var tag: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(channel: SubscriptionChannel, criteria: FHIRString, reason: FHIRString, status: SubscriptionStatus) {
		self.init()
		self.channel = channel
		self.criteria = criteria
		self.reason = reason
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		channel = try createInstance(type: SubscriptionChannel.self, for: "channel", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? channel
		if nil == channel && !presentKeys.contains("channel") {
			errors.append(FHIRValidationError(missing: "channel"))
		}
		contact = try createInstances(of: ContactPoint.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		criteria = try createInstance(type: FHIRString.self, for: "criteria", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? criteria
		if nil == criteria && !presentKeys.contains("criteria") {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		end = try createInstance(type: Instant.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		error = try createInstance(type: FHIRString.self, for: "error", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? error
		reason = try createInstance(type: FHIRString.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		if nil == reason && !presentKeys.contains("reason") {
			errors.append(FHIRValidationError(missing: "reason"))
		}
		status = createEnum(type: SubscriptionStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		tag = try createInstances(of: Coding.self, for: "tag", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? tag
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.channel?.decorate(json: &json, withKey: "channel", errors: &errors)
		if nil == self.channel {
			errors.append(FHIRValidationError(missing: "channel"))
		}
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.criteria?.decorate(json: &json, withKey: "criteria", errors: &errors)
		if nil == self.criteria {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		self.error?.decorate(json: &json, withKey: "error", errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		if nil == self.reason {
			errors.append(FHIRValidationError(missing: "reason"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "tag", using: self.tag, errors: &errors)
	}
}


/**
The channel on which to report matches to the criteria.

Details where to send notifications when resources are received that meet the criteria.
*/
open class SubscriptionChannel: BackboneElement {
	override open class var resourceType: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Where the channel points to.
	public var endpoint: FHIRURL?
	
	/// Usage depends on the channel type.
	public var header: FHIRString?
	
	/// Mimetype to send, or omit for no payload.
	public var payload: FHIRString?
	
	/// The type of channel to send notifications on.
	public var type: SubscriptionChannelType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: SubscriptionChannelType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		endpoint = try createInstance(type: FHIRURL.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		header = try createInstance(type: FHIRString.self, for: "header", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? header
		payload = try createInstance(type: FHIRString.self, for: "payload", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payload
		type = createEnum(type: SubscriptionChannelType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.endpoint?.decorate(json: &json, withKey: "endpoint", errors: &errors)
		self.header?.decorate(json: &json, withKey: "header", errors: &errors)
		self.payload?.decorate(json: &json, withKey: "payload", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

