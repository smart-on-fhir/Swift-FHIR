//
//  Coverage.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (coverage.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument which may be used to pay for or reimburse for health care products and services.
 */
public class Coverage: FHIRResource
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
	public var subplan: String?
	
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
			if let val = js["subplan"] as? String {
				self.subplan = val
			}
			if let val = js["subscriber"] as? JSONDictionary {
				self.subscriber = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

