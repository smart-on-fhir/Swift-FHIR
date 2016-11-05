//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Process request.

This resource provides the target, request and response, and action details for an action to be performed by the target
on or about existing resources.
*/
open class ProcessRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcessRequest" }
	}
	
	/// The type of processing action being requested, for example Reversal, Readjudication,
	/// StatusRequest,PendedRequest.
	public var action: ActionList?
	
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
	
	/// The status of the resource instance.
	public var status: ProcessRequestStatus?
	
	/// Target of the request.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: ActionList, status: ProcessRequestStatus) {
		self.init()
		self.action = action
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? String {
				if let enumval = ActionList(rawValue: val) {
					self.action = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "action", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["exclude"] {
			presentKeys.insert("exclude")
			if let val = exist as? [String] {
				self.exclude = val
			}
			else {
				errors.append(FHIRValidationError(key: "exclude", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["include"] {
			presentKeys.insert("include")
			if let val = exist as? [String] {
				self.include = val
			}
			else {
				errors.append(FHIRValidationError(key: "include", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try ProcessRequestItem.instantiate(fromArray: val, owner: self) as? [ProcessRequestItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["nullify"] {
			presentKeys.insert("nullify")
			if let val = exist as? Bool {
				self.nullify = val
			}
			else {
				errors.append(FHIRValidationError(key: "nullify", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["organization"] {
			presentKeys.insert("organization")
			if let val = exist as? FHIRJSON {
				do {
					self.organization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["originalRuleset"] {
			presentKeys.insert("originalRuleset")
			if let val = exist as? FHIRJSON {
				do {
					self.originalRuleset = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "originalRuleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "originalRuleset", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["provider"] {
			presentKeys.insert("provider")
			if let val = exist as? FHIRJSON {
				do {
					self.provider = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "provider"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "provider", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? String {
				self.reference = val
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? FHIRJSON {
				do {
					self.response = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "response"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleset"] {
			presentKeys.insert("ruleset")
			if let val = exist as? FHIRJSON {
				do {
					self.ruleset = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ruleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ProcessRequestStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? FHIRJSON {
				do {
					self.target = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.rawValue
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let exclude = self.exclude {
			json["exclude"] = exclude.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let include = self.include {
			json["include"] = include.map() { $0.asJSON() }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let nullify = self.nullify {
			json["nullify"] = nullify.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON(errors: &errors)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let response = self.response {
			json["response"] = response.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let target = self.target {
			json["target"] = target.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Items to re-adjudicate.

List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
*/
open class ProcessRequestItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcessRequestItem" }
	}
	
	/// Service instance.
	public var sequenceLinkId: Int?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: Int) {
		self.init()
		self.sequenceLinkId = sequenceLinkId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? Int {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}

