//
//  ProcessResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ProcessResponse) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
ProcessResponse resource.

This resource provides processing status, errors and notes from the processing of a resource.
*/
open class ProcessResponse: DomainResource {
	override open class var resourceType: String {
		get { return "ProcessResponse" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Error code.
	public var error: [Coding]?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Notes.
	public var notes: [ProcessResponseNotes]?
	
	/// Authoring Organization.
	public var organization: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Processing outcome.
	public var outcome: Coding?
	
	/// Request reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible Practitioner.
	public var requestProvider: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// The status of the resource instance.
	public var status: ProcessResponseStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ProcessResponseStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["disposition"] {
			presentKeys.insert("disposition")
			if let val = exist as? String {
				self.disposition = val
			}
			else {
				errors.append(FHIRValidationError(key: "disposition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["error"] {
			presentKeys.insert("error")
			if let val = exist as? [FHIRJSON] {
				do {
					self.error = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "error"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "error", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["form"] {
			presentKeys.insert("form")
			if let val = exist as? FHIRJSON {
				do {
					self.form = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "form"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "form", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["notes"] {
			presentKeys.insert("notes")
			if let val = exist as? [FHIRJSON] {
				do {
					self.notes = try ProcessResponseNotes.instantiate(fromArray: val, owner: self) as? [ProcessResponseNotes]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "notes"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "notes", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["requestOrganization"] {
			presentKeys.insert("requestOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.requestOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestProvider"] {
			presentKeys.insert("requestProvider")
			if let val = exist as? FHIRJSON {
				do {
					self.requestProvider = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestProvider"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestProvider", wants: FHIRJSON.self, has: type(of: exist)))
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
				if let enumval = ProcessResponseStatus(rawValue: val) {
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = error.map() { $0.asJSON(errors: &errors) }
		}
		if let form = self.form {
			json["form"] = form.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let notes = self.notes {
			json["notes"] = notes.map() { $0.asJSON(errors: &errors) }
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON(errors: &errors)
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		
		return json
	}
}


/**
Notes.

Suite of processing note or additional requirements is the processing has been held.
*/
open class ProcessResponseNotes: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcessResponseNotes" }
	}
	
	/// Notes text.
	public var text: String?
	
	/// display | print | printoper.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

