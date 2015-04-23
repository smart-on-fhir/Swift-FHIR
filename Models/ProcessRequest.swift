//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2015-04-23.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(action: String?) {
		self.init(json: nil)
		if nil != action {
			self.action = action
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.addObject("action")
				if let val = exist as? String {
					self.action = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"action\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"action\" but it is missing"))
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exclude"] {
				presentKeys.addObject("exclude")
				if let val = exist as? [String] {
					self.exclude = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exclude\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.addObject("include")
				if let val = exist as? [String] {
					self.include = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"include\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ProcessRequestItem.from(val, owner: self) as? [ProcessRequestItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["nullify"] {
				presentKeys.addObject("nullify")
				if let val = exist as? Bool {
					self.nullify = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"nullify\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.addObject("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"organization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.addObject("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalRuleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["provider"] {
				presentKeys.addObject("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"provider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.addObject("reference")
				if let val = exist as? String {
					self.reference = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reference\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.addObject("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"request\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.addObject("response")
				if let val = exist as? FHIRJSON {
					self.response = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"response\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.addObject("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ruleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? Int {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequenceLinkId\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}

