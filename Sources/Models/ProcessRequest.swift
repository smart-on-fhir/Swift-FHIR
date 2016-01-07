//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2015-12-11.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Process request.
 *
 *  This resource provides the target, request and response, and action details for an action to be performed by the
 *  target on or about existing resources.
 */
public class ProcessRequest: DomainResource {
	override public class var resourceName: String {
		get { return "ProcessRequest" }
	}
	
	/// cancel | poll | reprocess | status.
	public var action: String?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Resource type(s) to exclude.
	public var exclude: [String]?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Resource type(s) to include.
	public var include: [String]?
	
	/// Items to re-adjudicate.
	public var item: [ProcessRequestItem]?
	
	/// Nullify.
	public var nullify: Bool?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Period.
	public var period: Period?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Reference number/string.
	public var reference: String?
	
	/// Request reference.
	public var request: Reference?
	
	/// Response reference.
	public var response: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// Target of the request.
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: String) {
		self.init(json: nil)
		self.action = action
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? String {
					self.action = val
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? [String] {
					self.exclude = val
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? [String] {
					self.include = val
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ProcessRequestItem.from(val, owner: self) as? [ProcessRequestItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["nullify"] {
				presentKeys.insert("nullify")
				if let val = exist as? Bool {
					self.nullify = val
				}
				else {
					errors.append(FHIRJSONError(key: "nullify", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.insert("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["provider"] {
				presentKeys.insert("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "provider", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? String {
					self.reference = val
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["response"] {
				presentKeys.insert("response")
				if let val = exist as? FHIRJSON {
					self.response = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "response", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
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
public class ProcessRequestItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ProcessRequestItem" }
	}
	
	/// Service instance.
	public var sequenceLinkId: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: Int) {
		self.init(json: nil)
		self.sequenceLinkId = sequenceLinkId
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? Int {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequenceLinkId"))
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

