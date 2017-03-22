//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		channel = createInstance(type: SubscriptionChannel.self, for: "channel", in: json, context: &instCtx, owner: self) ?? channel
		if nil == channel && !instCtx.containsKey("channel") {
			instCtx.addError(FHIRValidationError(missing: "channel"))
		}
		contact = createInstances(of: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		criteria = createInstance(type: FHIRString.self, for: "criteria", in: json, context: &instCtx, owner: self) ?? criteria
		if nil == criteria && !instCtx.containsKey("criteria") {
			instCtx.addError(FHIRValidationError(missing: "criteria"))
		}
		end = createInstance(type: Instant.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		error = createInstance(type: FHIRString.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		reason = createInstance(type: FHIRString.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		if nil == reason && !instCtx.containsKey("reason") {
			instCtx.addError(FHIRValidationError(missing: "reason"))
		}
		status = createEnum(type: SubscriptionStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		tag = createInstances(of: Coding.self, for: "tag", in: json, context: &instCtx, owner: self) ?? tag
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
	public var header: [FHIRString]?
	
	/// Mimetype to send, or omit for no payload.
	public var payload: FHIRString?
	
	/// The type of channel to send notifications on.
	public var type: SubscriptionChannelType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: SubscriptionChannelType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		endpoint = createInstance(type: FHIRURL.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		header = createInstances(of: FHIRString.self, for: "header", in: json, context: &instCtx, owner: self) ?? header
		payload = createInstance(type: FHIRString.self, for: "payload", in: json, context: &instCtx, owner: self) ?? payload
		type = createEnum(type: SubscriptionChannelType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.endpoint?.decorate(json: &json, withKey: "endpoint", errors: &errors)
		arrayDecorate(json: &json, withKey: "header", using: self.header, errors: &errors)
		self.payload?.decorate(json: &json, withKey: "payload", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

