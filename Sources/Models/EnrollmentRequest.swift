//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Enrollment request.

This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
*/
open class EnrollmentRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentRequest" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurerIdentifier: Identifier?
	
	/// Target.
	public var insurerReference: Reference?
	
	/// Responsible organization.
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// The status of the resource instance.
	public var status: EnrollmentRequestStatus?
	
	/// The subject of the Products and Services.
	public var subjectIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var subjectReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, status: EnrollmentRequestStatus, subject: Any) {
		self.init()
		self.coverage = coverage
		self.status = status
		if let value = subject as? Identifier {
			self.subjectIdentifier = value
		}
		else if let value = subject as? Reference {
			self.subjectReference = value
		}
		else {
			fhir_warn("Type “\(type(of: subject))” for property “\(subject)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? FHIRJSON {
				do {
					self.coverage = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "coverage"))
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
		if let exist = json["insurerIdentifier"] {
			presentKeys.insert("insurerIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.insurerIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "insurerIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "insurerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["insurerReference"] {
			presentKeys.insert("insurerReference")
			if let val = exist as? FHIRJSON {
				do {
					self.insurerReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "insurerReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "insurerReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["organizationIdentifier"] {
			presentKeys.insert("organizationIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.organizationIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organizationIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["organizationReference"] {
			presentKeys.insert("organizationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.organizationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organizationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organizationReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["providerIdentifier"] {
			presentKeys.insert("providerIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.providerIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "providerIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "providerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["providerReference"] {
			presentKeys.insert("providerReference")
			if let val = exist as? FHIRJSON {
				do {
					self.providerReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "providerReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "providerReference", wants: FHIRJSON.self, has: type(of: exist)))
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
				if let enumval = EnrollmentRequestStatus(rawValue: val) {
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
		if let exist = json["subjectIdentifier"] {
			presentKeys.insert("subjectIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.subjectIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subjectIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subjectIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subjectReference"] {
			presentKeys.insert("subjectReference")
			if let val = exist as? FHIRJSON {
				do {
					self.subjectReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subjectReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subjectReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.subjectIdentifier && nil == self.subjectReference {
			errors.append(FHIRValidationError(missing: "subject[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let insurerIdentifier = self.insurerIdentifier {
			json["insurerIdentifier"] = insurerIdentifier.asJSON(errors: &errors)
		}
		if let insurerReference = self.insurerReference {
			json["insurerReference"] = insurerReference.asJSON(errors: &errors)
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON(errors: &errors)
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON(errors: &errors)
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subjectIdentifier = self.subjectIdentifier {
			json["subjectIdentifier"] = subjectIdentifier.asJSON(errors: &errors)
		}
		if let subjectReference = self.subjectReference {
			json["subjectReference"] = subjectReference.asJSON(errors: &errors)
		}
		
		return json
	}
}

