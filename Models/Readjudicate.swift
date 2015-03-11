//
//  Readjudicate.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Readjudicate) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Readjudicate request.
 *
 *  This resource provides the request and line items details for the claim which is to be re-adjudicated.
 */
public class Readjudicate: DomainResource
{
	override public class var resourceName: String {
		get { return "Readjudicate" }
	}
	
	/// Creation date
	public var created: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [JSONDictionary] {
				self.item = ReadjudicateItem.from(val, owner: self) as? [ReadjudicateItem]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["reference"] as? String {
				self.reference = val
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = ReadjudicateItem.asJSONArray(item)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}

