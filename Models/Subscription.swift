//
//  Subscription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Subscription) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A server push subscription criteria.
 *
 *  Todo.
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
	public var tag: [SubscriptionTag]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["channel"] as? JSONDictionary {
				self.channel = SubscriptionChannel(json: val, owner: self)
			}
			if let val = js["contact"] as? [JSONDictionary] {
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
			if let val = js["tag"] as? [JSONDictionary] {
				self.tag = SubscriptionTag.from(val, owner: self) as? [SubscriptionTag]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
			json["tag"] = SubscriptionTag.asJSONArray(tag)
		}
		
		return json
	}
}


/**
 *  The channel on which to report matches to the criteria.
 *
 *  Todo.
 */
public class SubscriptionChannel: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubscriptionChannel" }
	}
	
	/// Usage depends on the channel type
	public var header: String?
	
	/// Mimetype to send, or blank for no payload
	public var payload: String?
	
	/// rest-hook | websocket | email | sms | message
	public var type: String?
	
	/// Where the channel points to
	public var url: NSURL?
	
	public convenience init(payload: String?, type: String?) {
		self.init(json: nil)
		if nil != payload {
			self.payload = payload
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["header"] as? String {
				self.header = val
			}
			if let val = js["payload"] as? String {
				self.payload = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let header = self.header {
			json["header"] = header.asJSON()
		}
		if let payload = self.payload {
			json["payload"] = payload.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  A tag to add to matching resources.
 *
 *  Todo.
 */
public class SubscriptionTag: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubscriptionTag" }
	}
	
	/// Tag description label
	public var description_fhir: String?
	
	/// The scheme for the tag (kind of tag)
	public var scheme: NSURL?
	
	/// The term that identifies the tag
	public var term: NSURL?
	
	public convenience init(scheme: NSURL?, term: NSURL?) {
		self.init(json: nil)
		if nil != scheme {
			self.scheme = scheme
		}
		if nil != term {
			self.term = term
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["scheme"] as? String {
				self.scheme = NSURL(string: val)
			}
			if let val = js["term"] as? String {
				self.term = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let scheme = self.scheme {
			json["scheme"] = scheme.asJSON()
		}
		if let term = self.term {
			json["term"] = term.asJSON()
		}
		
		return json
	}
}

