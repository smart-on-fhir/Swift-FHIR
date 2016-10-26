//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2016-10-26.
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
			if let exist = js["benefitCategory"] {
				presentKeys.insert("benefitCategory")
				if let val = exist as? FHIRJSON {
					self.benefitCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitCategory", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitSubCategory"] {
				presentKeys.insert("benefitSubCategory")
				if let val = exist as? FHIRJSON {
					self.benefitSubCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitSubCategory", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["businessArrangement"] {
				presentKeys.insert("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(FHIRJSONError(key: "businessArrangement", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["enterer"] {
				presentKeys.insert("enterer")
				if let val = exist as? FHIRJSON {
					self.enterer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "enterer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["facility"] {
				presentKeys.insert("facility")
				if let val = exist as? FHIRJSON {
					self.facility = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facility", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["insurer"] {
				presentKeys.insert("insurer")
				if let val = exist as? FHIRJSON {
					self.insurer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "insurer", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["provider"] {
				presentKeys.insert("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "provider", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["servicedDate"] {
				presentKeys.insert("servicedDate")
				if let val = exist as? String {
					self.servicedDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "servicedDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["servicedPeriod"] {
				presentKeys.insert("servicedPeriod")
				if let val = exist as? FHIRJSON {
					self.servicedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "servicedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let benefitCategory = self.benefitCategory {
			json["benefitCategory"] = benefitCategory.asJSON()
		}
		if let benefitSubCategory = self.benefitSubCategory {
			json["benefitSubCategory"] = benefitSubCategory.asJSON()
		}
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON()
		}
		if let facility = self.facility {
			json["facility"] = facility.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let insurer = self.insurer {
			json["insurer"] = insurer.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let servicedDate = self.servicedDate {
			json["servicedDate"] = servicedDate.asJSON()
		}
		if let servicedPeriod = self.servicedPeriod {
			json["servicedPeriod"] = servicedPeriod.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

