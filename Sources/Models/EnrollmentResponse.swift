//
//  EnrollmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/EnrollmentResponse) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  EnrollmentResponse resource.
 *
 *  This resource provides enrollment and plan details from the processing of an Enrollment resource.
 */
open class EnrollmentResponse: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentResponse" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Insurer.
	public var organizationIdentifier: Identifier?
	
	/// Insurer.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: String?
	
	/// Claim reference.
	public var requestIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationReference: Reference?
	
	/// Responsible practitioner.
	public var requestProviderIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var requestProviderReference: Reference?
	
	/// Claim reference.
	public var requestReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
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
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? String {
				self.outcome = val
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestIdentifier"] {
			presentKeys.insert("requestIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.requestIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestOrganizationIdentifier"] {
			presentKeys.insert("requestOrganizationIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.requestOrganizationIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestOrganizationIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestOrganizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestOrganizationReference"] {
			presentKeys.insert("requestOrganizationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.requestOrganizationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestOrganizationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestOrganizationReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestProviderIdentifier"] {
			presentKeys.insert("requestProviderIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.requestProviderIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestProviderIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestProviderIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestProviderReference"] {
			presentKeys.insert("requestProviderReference")
			if let val = exist as? FHIRJSON {
				do {
					self.requestProviderReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestProviderReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestProviderReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestReference"] {
			presentKeys.insert("requestReference")
			if let val = exist as? FHIRJSON {
				do {
					self.requestReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestReference", wants: FHIRJSON.self, has: type(of: exist)))
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
				self.status = val
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
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
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
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let requestIdentifier = self.requestIdentifier {
			json["requestIdentifier"] = requestIdentifier.asJSON(errors: &errors)
		}
		if let requestOrganizationIdentifier = self.requestOrganizationIdentifier {
			json["requestOrganizationIdentifier"] = requestOrganizationIdentifier.asJSON(errors: &errors)
		}
		if let requestOrganizationReference = self.requestOrganizationReference {
			json["requestOrganizationReference"] = requestOrganizationReference.asJSON(errors: &errors)
		}
		if let requestProviderIdentifier = self.requestProviderIdentifier {
			json["requestProviderIdentifier"] = requestProviderIdentifier.asJSON(errors: &errors)
		}
		if let requestProviderReference = self.requestProviderReference {
			json["requestProviderReference"] = requestProviderReference.asJSON(errors: &errors)
		}
		if let requestReference = self.requestReference {
			json["requestReference"] = requestReference.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

