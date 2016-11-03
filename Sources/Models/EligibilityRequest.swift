//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Eligibility request.
 *
 *  This resource provides the insurance eligibility details from the insurer regarding a specified coverage and
 *  optionally some class of service.
 */
open class EligibilityRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EligibilityRequest" }
	}
	
	/// Benefit Category.
	public var benefitCategory: Coding?
	
	/// Benefit SubCategory.
	public var benefitSubCategory: Coding?
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Insurance or medical plan.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Desired processing priority.
	public var priority: Coding?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// Estimated date or dates of Service.
	public var servicedDate: FHIRDate?
	
	/// Estimated date or dates of Service.
	public var servicedPeriod: Period?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["benefitCategory"] {
			presentKeys.insert("benefitCategory")
			if let val = exist as? FHIRJSON {
				do {
					self.benefitCategory = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitCategory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitCategory", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitSubCategory"] {
			presentKeys.insert("benefitSubCategory")
			if let val = exist as? FHIRJSON {
				do {
					self.benefitSubCategory = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitSubCategory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitSubCategory", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["businessArrangement"] {
			presentKeys.insert("businessArrangement")
			if let val = exist as? String {
				self.businessArrangement = val
			}
			else {
				errors.append(FHIRValidationError(key: "businessArrangement", wants: String.self, has: type(of: exist)))
			}
		}
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
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["enterer"] {
			presentKeys.insert("enterer")
			if let val = exist as? FHIRJSON {
				do {
					self.enterer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "enterer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "enterer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["facility"] {
			presentKeys.insert("facility")
			if let val = exist as? FHIRJSON {
				do {
					self.facility = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "facility"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "facility", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? FHIRJSON {
				do {
					self.priority = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["servicedDate"] {
			presentKeys.insert("servicedDate")
			if let val = exist as? String {
				self.servicedDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "servicedDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["servicedPeriod"] {
			presentKeys.insert("servicedPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.servicedPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "servicedPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "servicedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let benefitCategory = self.benefitCategory {
			json["benefitCategory"] = benefitCategory.asJSON(errors: &errors)
		}
		if let benefitSubCategory = self.benefitSubCategory {
			json["benefitSubCategory"] = benefitSubCategory.asJSON(errors: &errors)
		}
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON(errors: &errors)
		}
		if let facility = self.facility {
			json["facility"] = facility.asJSON(errors: &errors)
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
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let servicedDate = self.servicedDate {
			json["servicedDate"] = servicedDate.asJSON()
		}
		if let servicedPeriod = self.servicedPeriod {
			json["servicedPeriod"] = servicedPeriod.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

