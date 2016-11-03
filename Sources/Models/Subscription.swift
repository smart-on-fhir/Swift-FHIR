//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A server push subscription criteria.
 *
 *  The subscription resource is used to define a push based subscription from a server to another system. Once a
 *  subscription is registered with the server, the server checks every resource that is created or updated, and if the
 *  resource matches the given criteria, it sends a message on the defined "channel" so that another system is able to
 *  take an appropriate action.
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
	public var criteria: String?
	
	/// When to automatically delete the subscription.
	public var end: Instant?
	
	/// Latest error note.
	public var error: String?
	
	/// Description of why this subscription was created.
	public var reason: String?
	
	/// requested | active | error | off.
	public var status: String?
	
	/// A tag to add to matching resources.
	public var tag: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(channel: SubscriptionChannel, criteria: String, reason: String, status: String) {
		self.init()
		self.channel = channel
		self.criteria = criteria
		self.reason = reason
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["channel"] {
			presentKeys.insert("channel")
			if let val = exist as? FHIRJSON {
				do {
					self.channel = try SubscriptionChannel(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "channel"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "channel", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "channel"))
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["criteria"] {
			presentKeys.insert("criteria")
			if let val = exist as? String {
				self.criteria = val
			}
			else {
				errors.append(FHIRValidationError(key: "criteria", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "criteria"))
		}
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? String {
				self.end = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["error"] {
			presentKeys.insert("error")
			if let val = exist as? String {
				self.error = val
			}
			else {
				errors.append(FHIRValidationError(key: "error", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? String {
				self.reason = val
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "reason"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["tag"] {
			presentKeys.insert("tag")
			if let val = exist as? [FHIRJSON] {
				do {
					self.tag = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "tag"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "tag", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let channel = self.channel {
			json["channel"] = channel.asJSON(errors: &errors)
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let error = self.error {
			json["error"] = error.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let tag = self.tag {
			json["tag"] = tag.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  The channel on which to report matches to the criteria.
 *
 *  Details where to send notifications when resources are received that meet the criteria.
 */
open class SubscriptionChannel: BackboneElement {
	override open class var resourceType: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Where the channel points to.
	public var endpoint: URL?
	
	/// Usage depends on the channel type.
	public var header: String?
	
	/// Mimetype to send, or omit for no payload.
	public var payload: String?
	
	/// rest-hook | websocket | email | sms | message.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? String {
				self.endpoint = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["header"] {
			presentKeys.insert("header")
			if let val = exist as? String {
				self.header = val
			}
			else {
				errors.append(FHIRValidationError(key: "header", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["payload"] {
			presentKeys.insert("payload")
			if let val = exist as? String {
				self.payload = val
			}
			else {
				errors.append(FHIRValidationError(key: "payload", wants: String.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.asJSON()
		}
		if let header = self.header {
			json["header"] = header.asJSON()
		}
		if let payload = self.payload {
			json["payload"] = payload.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

