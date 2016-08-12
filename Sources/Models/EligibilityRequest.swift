//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Eligibility request.
 *
 *  This resource provides the insurance eligibility details from the insurer regarding a specified coverage and
 *  optionally some class of service.
 */
public class EligibilityRequest: DomainResource {
	override public class var resourceName: String {
		get { return "EligibilityRequest" }
	}
	
	/// Benefit Category.
	public var benefitCategory: Coding?
	
	/// Benefit SubCategory.
	public var benefitSubCategory: Coding?
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Insurance or medical plan.
	public var coverageIdentifier: Identifier?
	
	/// Insurance or medical plan.
	public var coverageReference: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Author.
	public var entererIdentifier: Identifier?
	
	/// Author.
	public var entererReference: Reference?
	
	/// Servicing Facility.
	public var facilityIdentifier: Identifier?
	
	/// Servicing Facility.
	public var facilityReference: Reference?
	
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
	
	/// The subject of the Products and Services.
	public var patientIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var patientReference: Reference?
	
	/// Desired processing priority.
	public var priority: Coding?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// Estimated date or dates of Service.
	public var servicedDate: Date?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["benefitCategory"] {
				presentKeys.insert("benefitCategory")
				if let val = exist as? FHIRJSON {
					self.benefitCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["benefitSubCategory"] {
				presentKeys.insert("benefitSubCategory")
				if let val = exist as? FHIRJSON {
					self.benefitSubCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitSubCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["businessArrangement"] {
				presentKeys.insert("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(FHIRJSONError(key: "businessArrangement", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverageIdentifier"] {
				presentKeys.insert("coverageIdentifier")
				if let val = exist as? FHIRJSON {
					self.coverageIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverageReference"] {
				presentKeys.insert("coverageReference")
				if let val = exist as? FHIRJSON {
					self.coverageReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["entererIdentifier"] {
				presentKeys.insert("entererIdentifier")
				if let val = exist as? FHIRJSON {
					self.entererIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entererIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["entererReference"] {
				presentKeys.insert("entererReference")
				if let val = exist as? FHIRJSON {
					self.entererReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "entererReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["facilityIdentifier"] {
				presentKeys.insert("facilityIdentifier")
				if let val = exist as? FHIRJSON {
					self.facilityIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facilityIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["facilityReference"] {
				presentKeys.insert("facilityReference")
				if let val = exist as? FHIRJSON {
					self.facilityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facilityReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["insurerIdentifier"] {
				presentKeys.insert("insurerIdentifier")
				if let val = exist as? FHIRJSON {
					self.insurerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "insurerIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["insurerReference"] {
				presentKeys.insert("insurerReference")
				if let val = exist as? FHIRJSON {
					self.insurerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "insurerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patientIdentifier"] {
				presentKeys.insert("patientIdentifier")
				if let val = exist as? FHIRJSON {
					self.patientIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patientIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patientReference"] {
				presentKeys.insert("patientReference")
				if let val = exist as? FHIRJSON {
					self.patientReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patientReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? FHIRJSON {
					self.priority = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["servicedDate"] {
				presentKeys.insert("servicedDate")
				if let val = exist as? String {
					self.servicedDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "servicedDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["servicedPeriod"] {
				presentKeys.insert("servicedPeriod")
				if let val = exist as? FHIRJSON {
					self.servicedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "servicedPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let coverageIdentifier = self.coverageIdentifier {
			json["coverageIdentifier"] = coverageIdentifier.asJSON()
		}
		if let coverageReference = self.coverageReference {
			json["coverageReference"] = coverageReference.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let entererIdentifier = self.entererIdentifier {
			json["entererIdentifier"] = entererIdentifier.asJSON()
		}
		if let entererReference = self.entererReference {
			json["entererReference"] = entererReference.asJSON()
		}
		if let facilityIdentifier = self.facilityIdentifier {
			json["facilityIdentifier"] = facilityIdentifier.asJSON()
		}
		if let facilityReference = self.facilityReference {
			json["facilityReference"] = facilityReference.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let insurerIdentifier = self.insurerIdentifier {
			json["insurerIdentifier"] = insurerIdentifier.asJSON()
		}
		if let insurerReference = self.insurerReference {
			json["insurerReference"] = insurerReference.asJSON()
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
		if let patientIdentifier = self.patientIdentifier {
			json["patientIdentifier"] = patientIdentifier.asJSON()
		}
		if let patientReference = self.patientReference {
			json["patientReference"] = patientReference.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
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

