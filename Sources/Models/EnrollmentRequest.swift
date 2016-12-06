//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2016-12-06.
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
	public var insurer: Reference?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// The subject of the Products and Services.
	public var subject: Reference?
	
	
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
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(json: val)
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
		if let exist = json["insurer"] {
			presentKeys.insert("insurer")
			if let val = exist as? FHIRJSON {
				do {
					self.insurer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "insurer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "insurer", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let insurer = self.insurer {
			json["insurer"] = insurer.asJSON(errors: &errors)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}

