//
//  Subscription.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2015-04-03.
//  2015, SMART Health IT.
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
public class Subscription: DomainResource
{
	override public class var resourceName: String {
		get { return "Subscription" }
	}
	
	/// The channel on which to report matches to the criteria
	public var channel: SubscriptionChannel?
	
	/// Contact details for source (e.g. troubleshooting)
	public var contact: [ContactPoint]?
	
	/// Rule for server push criteria
	public var criteria: String?
	
	/// When to automatically delete the subscription
	public var end: Instant?
	
	/// Latest error note
	public var error: String?
	
	/// Description of why this subscription was created
	public var reason: String?
	
	/// requested | active | error | off
	public var status: String?
	
	/// A tag to add to matching resources
	public var tag: [Coding]?
	
	public convenience init(channel: SubscriptionChannel?, criteria: String?, reason: String?, status: String?) {
		self.init(json: nil)
		if nil != channel {
			self.channel = channel
		}
		if nil != criteria {
			self.criteria = criteria
		}
		if nil != reason {
			self.reason = reason
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["channel"] as? FHIRJSON {
				self.channel = SubscriptionChannel(json: val, owner: self)
			}
			if let val = js["contact"] as? [FHIRJSON] {
				self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["criteria"] as? String {
				self.criteria = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["error"] as? String {
				self.error = val
			}
			if let val = js["reason"] as? String {
				self.reason = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["tag"] as? [FHIRJSON] {
				self.tag = Coding.from(val, owner: self) as? [Coding]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let channel = self.channel {
			json["channel"] = channel.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ContactPoint.asJSONArray(contact)
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
			json["tag"] = Coding.asJSONArray(tag)
		}
		
		return json
	}
}


/**
 *  The channel on which to report matches to the criteria.
 *
 *  Details where to send notifications when resources are received that meet the criteria.
 */
public class SubscriptionChannel: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Where the channel points to
	public var endpoint: NSURL?
	
	/// Usage depends on the channel type
	public var header: String?
	
	/// Mimetype to send, or blank for no payload
	public var payload: String?
	
	/// rest-hook | websocket | email | sms | message
	public var type: String?
	
	public convenience init(payload: String?, type: String?) {
		self.init(json: nil)
		if nil != payload {
			self.payload = payload
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(string: val)
			}
			if let val = js["header"] as? String {
				self.header = val
			}
			if let val = js["payload"] as? String {
				self.payload = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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

