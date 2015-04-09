//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Process request.
 *
 *  This resource provides the target, request and response, and action details for an action to be performed by the
 *  target on or about existing resources.
 */
public class ProcessRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "ProcessRequest" }
	}
	
	/// cancel | poll | reprocess | status
	public var action: String?
	
	/// Creation date
	public var created: DateTime?
	
	/// Resource type(s) to exclude
	public var exclude: [String]?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Resource type(s) to include
	public var include: [String]?
	
	/// Items to re-adjudicate
	public var item: [ProcessRequestItem]?
	
	/// Nullify
	public var nullify: Bool?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Period
	public var period: Period?
	
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
	
	/// Target of the request
	public var target: Reference?
	
	public convenience init(action: String?) {
		self.init(json: nil)
		if nil != action {
			self.action = action
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? String {
				self.action = val
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["exclude"] as? [String] {
				self.exclude = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["include"] as? [String] {
				self.include = val
			}
			if let val = js["item"] as? [FHIRJSON] {
				self.item = ProcessRequestItem.from(val, owner: self) as? [ProcessRequestItem]
			}
			if let val = js["nullify"] as? Bool {
				self.nullify = val
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["provider"] as? FHIRJSON {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["reference"] as? String {
				self.reference = val
			}
			if let val = js["request"] as? FHIRJSON {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? FHIRJSON {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? FHIRJSON {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let exclude = self.exclude {
			var arr = [AnyObject]()
			for val in exclude {
				arr.append(val.asJSON())
			}
			json["exclude"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let include = self.include {
			var arr = [AnyObject]()
			for val in include {
				arr.append(val.asJSON())
			}
			json["include"] = arr
		}
		if let item = self.item {
			json["item"] = ProcessRequestItem.asJSONArray(item)
		}
		if let nullify = self.nullify {
			json["nullify"] = nullify.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
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
public class ProcessRequestItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcessRequestItem" }
	}
	
	/// Service instance
	public var sequenceLinkId: Int?
	
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}

