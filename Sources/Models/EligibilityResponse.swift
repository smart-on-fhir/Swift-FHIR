//
//  EligibilityResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  EligibilityResponse resource.
 *
 *  This resource provides eligibility and plan details from the processing of an Eligibility resource.
 */
open class EligibilityResponse: DomainResource {
	override open class var resourceType: String {
		get { return "EligibilityResponse" }
	}
	
	/// Benefits by Category.
	public var benefitBalance: [EligibilityResponseBenefitBalance]?
	
	/// Contract details.
	public var contract: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Processing errors.
	public var error: [EligibilityResponseError]?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Coverage inforce.
	public var inforce: Bool?
	
	/// Insurer.
	public var organization: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: String?
	
	/// Claim reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
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
		if let exist = json["benefitBalance"] {
			presentKeys.insert("benefitBalance")
			if let val = exist as? [FHIRJSON] {
				do {
					self.benefitBalance = try EligibilityResponseBenefitBalance.instantiate(fromArray: val, owner: self) as? [EligibilityResponseBenefitBalance]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitBalance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitBalance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contract"] {
			presentKeys.insert("contract")
			if let val = exist as? FHIRJSON {
				do {
					self.contract = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contract"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contract", wants: FHIRJSON.self, has: type(of: exist)))
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
					self.error = try EligibilityResponseError.instantiate(fromArray: val, owner: self) as? [EligibilityResponseError]
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
		if let exist = json["inforce"] {
			presentKeys.insert("inforce")
			if let val = exist as? Bool {
				self.inforce = val
			}
			else {
				errors.append(FHIRValidationError(key: "inforce", wants: Bool.self, has: type(of: exist)))
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
			if let val = exist as? String {
				self.outcome = val
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: String.self, has: type(of: exist)))
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
		
		if let benefitBalance = self.benefitBalance {
			json["benefitBalance"] = benefitBalance.map() { $0.asJSON(errors: &errors) }
		}
		if let contract = self.contract {
			json["contract"] = contract.asJSON(errors: &errors)
		}
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
		if let inforce = self.inforce {
			json["inforce"] = inforce.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
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
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Benefits by Category.
 *
 *  Benefits and optionally current balances by Category.
 */
open class EligibilityResponseBenefitBalance: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseBenefitBalance" }
	}
	
	/// Benefit Category.
	public var category: Coding?
	
	/// Description of the benefit.
	public var description_fhir: String?
	
	/// Benefit Summary.
	public var financial: [EligibilityResponseBenefitBalanceFinancial]?
	
	/// Short name for the benefit.
	public var name: String?
	
	/// In or out of network.
	public var network: Coding?
	
	/// Benefit SubCategory.
	public var subCategory: Coding?
	
	/// Annual or lifetime.
	public var term: Coding?
	
	/// Individual or family.
	public var unit: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "category"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["financial"] {
			presentKeys.insert("financial")
			if let val = exist as? [FHIRJSON] {
				do {
					self.financial = try EligibilityResponseBenefitBalanceFinancial.instantiate(fromArray: val, owner: self) as? [EligibilityResponseBenefitBalanceFinancial]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "financial"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "financial", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["network"] {
			presentKeys.insert("network")
			if let val = exist as? FHIRJSON {
				do {
					self.network = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "network"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "network", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subCategory"] {
			presentKeys.insert("subCategory")
			if let val = exist as? FHIRJSON {
				do {
					self.subCategory = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subCategory"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subCategory", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["term"] {
			presentKeys.insert("term")
			if let val = exist as? FHIRJSON {
				do {
					self.term = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "term"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "term", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["unit"] {
			presentKeys.insert("unit")
			if let val = exist as? FHIRJSON {
				do {
					self.unit = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unit"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unit", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let financial = self.financial {
			json["financial"] = financial.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON(errors: &errors)
		}
		if let subCategory = self.subCategory {
			json["subCategory"] = subCategory.asJSON(errors: &errors)
		}
		if let term = self.term {
			json["term"] = term.asJSON(errors: &errors)
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Benefit Summary.
 *
 *  Benefits Used to date.
 */
open class EligibilityResponseBenefitBalanceFinancial: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseBenefitBalanceFinancial" }
	}
	
	/// Benefits allowed.
	public var benefitMoney: Money?
	
	/// Benefits allowed.
	public var benefitString: String?
	
	/// Benefits allowed.
	public var benefitUnsignedInt: UInt?
	
	/// Benefits used.
	public var benefitUsedMoney: Money?
	
	/// Benefits used.
	public var benefitUsedUnsignedInt: UInt?
	
	/// Deductable, visits, benefit amount.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["benefitMoney"] {
			presentKeys.insert("benefitMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.benefitMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitString"] {
			presentKeys.insert("benefitString")
			if let val = exist as? String {
				self.benefitString = val
			}
			else {
				errors.append(FHIRValidationError(key: "benefitString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitUnsignedInt"] {
			presentKeys.insert("benefitUnsignedInt")
			if let val = exist as? UInt {
				self.benefitUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "benefitUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitUsedMoney"] {
			presentKeys.insert("benefitUsedMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.benefitUsedMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitUsedMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitUsedMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitUsedUnsignedInt"] {
			presentKeys.insert("benefitUsedUnsignedInt")
			if let val = exist as? UInt {
				self.benefitUsedUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "benefitUsedUnsignedInt", wants: UInt.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let benefitMoney = self.benefitMoney {
			json["benefitMoney"] = benefitMoney.asJSON(errors: &errors)
		}
		if let benefitString = self.benefitString {
			json["benefitString"] = benefitString.asJSON()
		}
		if let benefitUnsignedInt = self.benefitUnsignedInt {
			json["benefitUnsignedInt"] = benefitUnsignedInt.asJSON()
		}
		if let benefitUsedMoney = self.benefitUsedMoney {
			json["benefitUsedMoney"] = benefitUsedMoney.asJSON(errors: &errors)
		}
		if let benefitUsedUnsignedInt = self.benefitUsedUnsignedInt {
			json["benefitUsedUnsignedInt"] = benefitUsedUnsignedInt.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Processing errors.
 *
 *  Mutually exclusive with Services Provided (Item).
 */
open class EligibilityResponseError: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityResponseError" }
	}
	
	/// Error code detailing processing issues.
	public var code: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		
		return json
	}
}

