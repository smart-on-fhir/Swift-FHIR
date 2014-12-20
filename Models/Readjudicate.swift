//
//  Readjudicate.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (readjudicate.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Readjudicate request.
 *
 *  This resource provides the request and line items details for the claim which is to be re-adjudicated.
 */
public class Readjudicate: FHIRResource
{
	override public class var resourceName: String {
		get { return "Readjudicate" }
	}
	
	/// Creation date
	public var created: NSDate?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Items to re-adjudicate
	public var item: [ReadjudicateItem]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Reference number/string
	public var reference: String?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Insurer
	public var target: Reference?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = ReadjudicateItem.from(val, owner: self) as? [ReadjudicateItem]
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? NSDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? NSDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["reference"] as? String {
				self.reference = val
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Items to re-adjudicate.
 *
 *  List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
 */
public class ReadjudicateItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ReadjudicateItem" }
	}
	
	/// Service instance
	public var sequenceLinkId: Int?
	
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
}

