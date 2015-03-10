//
//  Coverage.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument which may be used to pay for or reimburse for health care products and services.
 */
public class Coverage: DomainResource
{
	override public class var resourceName: String {
		get { return "Coverage" }
	}
	
	/// Contract details
	public var contract: [Reference]?
	
	/// The dependent number
	public var dependent: Int?
	
	/// An identifier for the group
	public var group: String?
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// An identifier for the plan issuer
	public var issuer: Reference?
	
	/// Insurer network
	public var network: Identifier?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// An identifier for the plan
	public var plan: String?
	
	/// The plan instance or sequence counter
	public var sequence: Int?
	
	/// An identifier for the subsection of the plan
	public var subPlan: String?
	
	/// Covered parties
	public var subject: [Reference]?
	
	/// Plan holder information
	public var subscriber: Reference?
	
	/// Type of coverage
	public var type: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contract"] as? [JSONDictionary] {
				self.contract = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dependent"] as? Int {
				self.dependent = val
			}
			if let val = js["group"] as? String {
				self.group = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["issuer"] as? JSONDictionary {
				self.issuer = Reference(json: val, owner: self)
			}
			if let val = js["network"] as? JSONDictionary {
				self.network = Identifier(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["plan"] as? String {
				self.plan = val
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["subPlan"] as? String {
				self.subPlan = val
			}
			if let val = js["subject"] as? [JSONDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["subscriber"] as? JSONDictionary {
				self.subscriber = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contract = self.contract {
			json["contract"] = Reference.asJSONArray(contract)
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let subPlan = self.subPlan {
			json["subPlan"] = subPlan.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = Reference.asJSONArray(subject)
		}
		if let subscriber = self.subscriber {
			json["subscriber"] = subscriber.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

