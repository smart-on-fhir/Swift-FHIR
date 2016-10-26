//
//  EligibilityResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/EligibilityResponse) on 2016-10-26.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["benefitBalance"] {
				presentKeys.insert("benefitBalance")
				if let val = exist as? [FHIRJSON] {
					self.benefitBalance = EligibilityResponseBenefitBalance.instantiate(fromArray: val, owner: self) as? [EligibilityResponseBenefitBalance]
				}
				else {
					errors.append(FHIRJSONError(key: "benefitBalance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contract"] {
				presentKeys.insert("contract")
				if let val = exist as? FHIRJSON {
					self.contract = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "contract", wants: FHIRJSON.self, has: type(of: exist)))
				}
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
			if let exist = js["disposition"] {
				presentKeys.insert("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(FHIRJSONError(key: "disposition", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["error"] {
				presentKeys.insert("error")
				if let val = exist as? [FHIRJSON] {
					self.error = EligibilityResponseError.instantiate(fromArray: val, owner: self) as? [EligibilityResponseError]
				}
				else {
					errors.append(FHIRJSONError(key: "error", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["form"] {
				presentKeys.insert("form")
				if let val = exist as? FHIRJSON {
					self.form = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "form", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["inforce"] {
				presentKeys.insert("inforce")
				if let val = exist as? Bool {
					self.inforce = val
				}
				else {
					errors.append(FHIRJSONError(key: "inforce", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["organization"] {
				presentKeys.insert("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestOrganization"] {
				presentKeys.insert("requestOrganization")
				if let val = exist as? FHIRJSON {
					self.requestOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestOrganization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestProvider"] {
				presentKeys.insert("requestProvider")
				if let val = exist as? FHIRJSON {
					self.requestProvider = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestProvider", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let benefitBalance = self.benefitBalance {
			json["benefitBalance"] = benefitBalance.map() { $0.asJSON() }
		}
		if let contract = self.contract {
			json["contract"] = contract.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = error.map() { $0.asJSON() }
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let inforce = self.inforce {
			json["inforce"] = inforce.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON()
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["financial"] {
				presentKeys.insert("financial")
				if let val = exist as? [FHIRJSON] {
					self.financial = EligibilityResponseBenefitBalanceFinancial.instantiate(fromArray: val, owner: self) as? [EligibilityResponseBenefitBalanceFinancial]
				}
				else {
					errors.append(FHIRJSONError(key: "financial", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? FHIRJSON {
					self.network = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["subCategory"] {
				presentKeys.insert("subCategory")
				if let val = exist as? FHIRJSON {
					self.subCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subCategory", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["term"] {
				presentKeys.insert("term")
				if let val = exist as? FHIRJSON {
					self.term = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "term", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["unit"] {
				presentKeys.insert("unit")
				if let val = exist as? FHIRJSON {
					self.unit = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unit", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let financial = self.financial {
			json["financial"] = financial.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let subCategory = self.subCategory {
			json["subCategory"] = subCategory.asJSON()
		}
		if let term = self.term {
			json["term"] = term.asJSON()
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["benefitMoney"] {
				presentKeys.insert("benefitMoney")
				if let val = exist as? FHIRJSON {
					self.benefitMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitMoney", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitString"] {
				presentKeys.insert("benefitString")
				if let val = exist as? String {
					self.benefitString = val
				}
				else {
					errors.append(FHIRJSONError(key: "benefitString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitUnsignedInt"] {
				presentKeys.insert("benefitUnsignedInt")
				if let val = exist as? UInt {
					self.benefitUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUnsignedInt", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitUsedMoney"] {
				presentKeys.insert("benefitUsedMoney")
				if let val = exist as? FHIRJSON {
					self.benefitUsedMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUsedMoney", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitUsedUnsignedInt"] {
				presentKeys.insert("benefitUsedUnsignedInt")
				if let val = exist as? UInt {
					self.benefitUsedUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUsedUnsignedInt", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let benefitMoney = self.benefitMoney {
			json["benefitMoney"] = benefitMoney.asJSON()
		}
		if let benefitString = self.benefitString {
			json["benefitString"] = benefitString.asJSON()
		}
		if let benefitUnsignedInt = self.benefitUnsignedInt {
			json["benefitUnsignedInt"] = benefitUnsignedInt.asJSON()
		}
		if let benefitUsedMoney = self.benefitUsedMoney {
			json["benefitUsedMoney"] = benefitUsedMoney.asJSON()
		}
		if let benefitUsedUnsignedInt = self.benefitUsedUnsignedInt {
			json["benefitUsedUnsignedInt"] = benefitUsedUnsignedInt.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding) {
		self.init(json: nil)
		self.code = code
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		
		return json
	}
}

