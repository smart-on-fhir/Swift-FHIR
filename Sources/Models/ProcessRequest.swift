//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Process request.
 *
 *  This resource provides the target, request and response, and action details for an action to be performed by the
 *  target on or about existing resources.
 */
open class ProcessRequest: DomainResource {
	override open class var resourceType: String {
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
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Period.
	public var period: Period?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Reference number/string.
	public var reference: String?
	
	/// Request reference.
	public var requestIdentifier: Identifier?
	
	/// Request reference.
	public var requestReference: Reference?
	
	/// Response reference.
	public var responseIdentifier: Identifier?
	
	/// Response reference.
	public var responseReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Target of the request.
	public var targetIdentifier: Identifier?
	
	/// Target of the request.
	public var targetReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: String, status: String) {
		self.init(json: nil)
		self.action = action
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? String {
					self.action = val
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? [String] {
					self.exclude = val
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["include"] {
				presentKeys.insert("include")
				if let val = exist as? [String] {
					self.include = val
				}
				else {
					errors.append(FHIRJSONError(key: "include", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ProcessRequestItem.instantiate(fromArray: val, owner: self) as? [ProcessRequestItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["nullify"] {
				presentKeys.insert("nullify")
				if let val = exist as? Bool {
					self.nullify = val
				}
				else {
					errors.append(FHIRJSONError(key: "nullify", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? String {
					self.reference = val
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestIdentifier"] {
				presentKeys.insert("requestIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestReference"] {
				presentKeys.insert("requestReference")
				if let val = exist as? FHIRJSON {
					self.requestReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseIdentifier"] {
				presentKeys.insert("responseIdentifier")
				if let val = exist as? FHIRJSON {
					self.responseIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "responseIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseReference"] {
				presentKeys.insert("responseReference")
				if let val = exist as? FHIRJSON {
					self.responseReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "responseReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["targetIdentifier"] {
				presentKeys.insert("targetIdentifier")
				if let val = exist as? FHIRJSON {
					self.targetIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetReference"] {
				presentKeys.insert("targetReference")
				if let val = exist as? FHIRJSON {
					self.targetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let exclude = self.exclude {
			var arr = [Any]()
			for val in exclude {
				arr.append(val.asJSON())
			}
			json["exclude"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let include = self.include {
			var arr = [Any]()
			for val in include {
				arr.append(val.asJSON())
			}
			json["include"] = arr
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON() }
		}
		if let nullify = self.nullify {
			json["nullify"] = nullify.asJSON()
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON()
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let requestIdentifier = self.requestIdentifier {
			json["requestIdentifier"] = requestIdentifier.asJSON()
		}
		if let requestReference = self.requestReference {
			json["requestReference"] = requestReference.asJSON()
		}
		if let responseIdentifier = self.responseIdentifier {
			json["responseIdentifier"] = responseIdentifier.asJSON()
		}
		if let responseReference = self.responseReference {
			json["responseReference"] = responseReference.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let targetIdentifier = self.targetIdentifier {
			json["targetIdentifier"] = targetIdentifier.asJSON()
		}
		if let targetReference = self.targetReference {
			json["targetReference"] = targetReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Items to re-adjudicate.
 *
 *  List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
 */
open class ProcessRequestItem: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? Int {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: Int.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequenceLinkId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}

