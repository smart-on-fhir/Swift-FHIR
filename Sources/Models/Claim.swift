//
//  Claim.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Claim) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Claim, Pre-determination or Pre-authorization.
 *
 *  A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 *  insurer for payment recovery.
 */
public class Claim: DomainResource {
	override public class var resourceName: String {
		get { return "Claim" }
	}
	
	/// None.
	public var accident: ClaimAccident?
	
	/// Period for charge submission.
	public var billablePeriod: Period?
	
	/// Insurance or medical plan.
	public var coverage: [ClaimCoverage]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Diagnosis.
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Period unable to work.
	public var employmentImpacted: Period?
	
	/// Author.
	public var entererIdentifier: Identifier?
	
	/// Author.
	public var entererReference: Reference?
	
	/// Servicing Facility.
	public var facilityIdentifier: Identifier?
	
	/// Servicing Facility.
	public var facilityReference: Reference?
	
	/// Funds requested to be reserved.
	public var fundsReserve: Coding?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Claim number.
	public var identifier: [Identifier]?
	
	/// None.
	public var information: [ClaimInformation]?
	
	/// Target.
	public var insurerIdentifier: Identifier?
	
	/// Target.
	public var insurerReference: Reference?
	
	/// Goods and Services.
	public var item: [ClaimItem]?
	
	/// Only if type = oral.
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Responsible organization.
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var organizationReference: Reference?
	
	/// Original Prescription.
	public var originalPrescriptionIdentifier: Identifier?
	
	/// Original Prescription.
	public var originalPrescriptionReference: Reference?
	
	/// Original specification followed.
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services.
	public var patientIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var patientReference: Reference?
	
	/// Party to be paid any benefits payable.
	public var payee: ClaimPayee?
	
	/// Prescription.
	public var prescriptionIdentifier: Identifier?
	
	/// Prescription.
	public var prescriptionReference: Reference?
	
	/// Desired processing priority.
	public var priority: Coding?
	
	/// Procedures performed.
	public var procedure: [ClaimProcedure]?
	
	/// Responsible provider.
	public var providerIdentifier: Identifier?
	
	/// Responsible provider.
	public var providerReference: Reference?
	
	/// Treatment Referral.
	public var referralIdentifier: Identifier?
	
	/// Treatment Referral.
	public var referralReference: Reference?
	
	/// Related Claims which may be revelant to processing this claimn.
	public var related: [ClaimRelated]?
	
	/// Current specification followed.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Finer grained claim type information.
	public var subType: [Coding]?
	
	/// Total claim cost.
	public var total: Money?
	
	/// Type or discipline.
	public var type: Coding?
	
	/// complete | proposed | exploratory | other.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patientIdentifier: Identifier, patientReference: Reference, status: String, type: Coding) {
		self.init(json: nil)
		self.patientIdentifier = patientIdentifier
		self.patientReference = patientReference
		self.status = status
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["accident"] {
				presentKeys.insert("accident")
				if let val = exist as? FHIRJSON {
					self.accident = ClaimAccident(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accident", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["billablePeriod"] {
				presentKeys.insert("billablePeriod")
				if let val = exist as? FHIRJSON {
					self.billablePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "billablePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = ClaimCoverage.from(val, owner: self) as? [ClaimCoverage]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["diagnosis"] {
				presentKeys.insert("diagnosis")
				if let val = exist as? [FHIRJSON] {
					self.diagnosis = ClaimDiagnosis.from(val, owner: self) as? [ClaimDiagnosis]
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosis", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["employmentImpacted"] {
				presentKeys.insert("employmentImpacted")
				if let val = exist as? FHIRJSON {
					self.employmentImpacted = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "employmentImpacted", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["fundsReserve"] {
				presentKeys.insert("fundsReserve")
				if let val = exist as? FHIRJSON {
					self.fundsReserve = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fundsReserve", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["hospitalization"] {
				presentKeys.insert("hospitalization")
				if let val = exist as? FHIRJSON {
					self.hospitalization = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "hospitalization", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["information"] {
				presentKeys.insert("information")
				if let val = exist as? [FHIRJSON] {
					self.information = ClaimInformation.from(val, owner: self) as? [ClaimInformation]
				}
				else {
					errors.append(FHIRJSONError(key: "information", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ClaimItem.from(val, owner: self) as? [ClaimItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["missingTeeth"] {
				presentKeys.insert("missingTeeth")
				if let val = exist as? [FHIRJSON] {
					self.missingTeeth = ClaimMissingTeeth.from(val, owner: self) as? [ClaimMissingTeeth]
				}
				else {
					errors.append(FHIRJSONError(key: "missingTeeth", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["originalPrescriptionIdentifier"] {
				presentKeys.insert("originalPrescriptionIdentifier")
				if let val = exist as? FHIRJSON {
					self.originalPrescriptionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalPrescriptionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["originalPrescriptionReference"] {
				presentKeys.insert("originalPrescriptionReference")
				if let val = exist as? FHIRJSON {
					self.originalPrescriptionReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalPrescriptionReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["payee"] {
				presentKeys.insert("payee")
				if let val = exist as? FHIRJSON {
					self.payee = ClaimPayee(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "payee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prescriptionIdentifier"] {
				presentKeys.insert("prescriptionIdentifier")
				if let val = exist as? FHIRJSON {
					self.prescriptionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriptionIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prescriptionReference"] {
				presentKeys.insert("prescriptionReference")
				if let val = exist as? FHIRJSON {
					self.prescriptionReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriptionReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = ClaimProcedure.from(val, owner: self) as? [ClaimProcedure]
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["referralIdentifier"] {
				presentKeys.insert("referralIdentifier")
				if let val = exist as? FHIRJSON {
					self.referralIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referralIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referralReference"] {
				presentKeys.insert("referralReference")
				if let val = exist as? FHIRJSON {
					self.referralReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referralReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["related"] {
				presentKeys.insert("related")
				if let val = exist as? [FHIRJSON] {
					self.related = ClaimRelated.from(val, owner: self) as? [ClaimRelated]
				}
				else {
					errors.append(FHIRJSONError(key: "related", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subType"] {
				presentKeys.insert("subType")
				if let val = exist as? [FHIRJSON] {
					self.subType = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "subType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["total"] {
				presentKeys.insert("total")
				if let val = exist as? FHIRJSON {
					self.total = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "total", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.patientIdentifier && nil == self.patientReference {
				errors.append(FHIRJSONError(key: "patient*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accident = self.accident {
			json["accident"] = accident.asJSON()
		}
		if let billablePeriod = self.billablePeriod {
			json["billablePeriod"] = billablePeriod.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = ClaimCoverage.asJSONArray(coverage)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = ClaimDiagnosis.asJSONArray(diagnosis)
		}
		if let employmentImpacted = self.employmentImpacted {
			json["employmentImpacted"] = employmentImpacted.asJSON()
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
		if let fundsReserve = self.fundsReserve {
			json["fundsReserve"] = fundsReserve.asJSON()
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let information = self.information {
			json["information"] = ClaimInformation.asJSONArray(information)
		}
		if let insurerIdentifier = self.insurerIdentifier {
			json["insurerIdentifier"] = insurerIdentifier.asJSON()
		}
		if let insurerReference = self.insurerReference {
			json["insurerReference"] = insurerReference.asJSON()
		}
		if let item = self.item {
			json["item"] = ClaimItem.asJSONArray(item)
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = ClaimMissingTeeth.asJSONArray(missingTeeth)
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON()
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON()
		}
		if let originalPrescriptionIdentifier = self.originalPrescriptionIdentifier {
			json["originalPrescriptionIdentifier"] = originalPrescriptionIdentifier.asJSON()
		}
		if let originalPrescriptionReference = self.originalPrescriptionReference {
			json["originalPrescriptionReference"] = originalPrescriptionReference.asJSON()
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
		if let payee = self.payee {
			json["payee"] = payee.asJSON()
		}
		if let prescriptionIdentifier = self.prescriptionIdentifier {
			json["prescriptionIdentifier"] = prescriptionIdentifier.asJSON()
		}
		if let prescriptionReference = self.prescriptionReference {
			json["prescriptionReference"] = prescriptionReference.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = ClaimProcedure.asJSONArray(procedure)
		}
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let referralIdentifier = self.referralIdentifier {
			json["referralIdentifier"] = referralIdentifier.asJSON()
		}
		if let referralReference = self.referralReference {
			json["referralReference"] = referralReference.asJSON()
		}
		if let related = self.related {
			json["related"] = ClaimRelated.asJSONArray(related)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = Coding.asJSONArray(subType)
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  An accident which resulted in the need for healthcare services.
 */
public class ClaimAccident: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimAccident" }
	}
	
	/// When the accident occurred see information codes see information codes.
	public var date: Date?
	
	/// Accident Place.
	public var locationAddress: Address?
	
	/// Accident Place.
	public var locationReference: Reference?
	
	/// The nature of the accident.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: Date) {
		self.init(json: nil)
		self.date = date
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "date"))
			}
			if let exist: AnyObject = js["locationAddress"] {
				presentKeys.insert("locationAddress")
				if let val = exist as? FHIRJSON {
					self.locationAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["locationReference"] {
				presentKeys.insert("locationReference")
				if let val = exist as? FHIRJSON {
					self.locationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let locationAddress = self.locationAddress {
			json["locationAddress"] = locationAddress.asJSON()
		}
		if let locationReference = self.locationReference {
			json["locationReference"] = locationReference.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ClaimCoverage: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimCoverage" }
	}
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverageIdentifier: Identifier?
	
	/// Insurance information.
	public var coverageReference: Reference?
	
	/// Is the focal Coverage.
	public var focal: Bool?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	/// Service instance identifier.
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverageIdentifier: Identifier, coverageReference: Reference, focal: Bool, sequence: UInt) {
		self.init(json: nil)
		self.coverageIdentifier = coverageIdentifier
		self.coverageReference = coverageReference
		self.focal = focal
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["businessArrangement"] {
				presentKeys.insert("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(FHIRJSONError(key: "businessArrangement", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["claimResponse"] {
				presentKeys.insert("claimResponse")
				if let val = exist as? FHIRJSON {
					self.claimResponse = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponse", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["focal"] {
				presentKeys.insert("focal")
				if let val = exist as? Bool {
					self.focal = val
				}
				else {
					errors.append(FHIRJSONError(key: "focal", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "focal"))
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
			if let exist: AnyObject = js["preAuthRef"] {
				presentKeys.insert("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(FHIRJSONError(key: "preAuthRef", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.coverageIdentifier && nil == self.coverageReference {
				errors.append(FHIRJSONError(key: "coverage*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON()
		}
		if let coverageIdentifier = self.coverageIdentifier {
			json["coverageIdentifier"] = coverageIdentifier.asJSON()
		}
		if let coverageReference = self.coverageReference {
			json["coverageReference"] = coverageReference.asJSON()
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [AnyObject]()
			for val in preAuthRef {
				arr.append(val.asJSON())
			}
			json["preAuthRef"] = arr
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Diagnosis.
 *
 *  Ordered list of patient diagnosis for which care is sought.
 */
public class ClaimDiagnosis: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimDiagnosis" }
	}
	
	/// Patient's diagnosis.
	public var diagnosis: Coding?
	
	/// Diagnosis Related Group.
	public var drg: Coding?
	
	/// Number to covey order of diagnosis.
	public var sequence: UInt?
	
	/// Type of Diagnosis.
	public var type: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(diagnosis: Coding, sequence: UInt) {
		self.init(json: nil)
		self.diagnosis = diagnosis
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["diagnosis"] {
				presentKeys.insert("diagnosis")
				if let val = exist as? FHIRJSON {
					self.diagnosis = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosis", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "diagnosis"))
			}
			if let exist: AnyObject = js["drg"] {
				presentKeys.insert("drg")
				if let val = exist as? FHIRJSON {
					self.drg = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "drg", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.asJSON()
		}
		if let drg = self.drg {
			json["drg"] = drg.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let type = self.type {
			json["type"] = Coding.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Additional information codes regarding exceptions, special considerations, the condition, situation, prior or
 *  concurrent issues. Often there are mutiple jurisdiction specific valuesets which are required.
 */
public class ClaimInformation: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimInformation" }
	}
	
	/// Category of information.
	public var category: Coding?
	
	/// Type of information.
	public var code: Coding?
	
	/// When it occurred.
	public var timingDate: Date?
	
	/// When it occurred.
	public var timingPeriod: Period?
	
	/// Additional Data.
	public var valueQuantity: Quantity?
	
	/// Additional Data.
	public var valueString: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingDate"] {
				presentKeys.insert("timingDate")
				if let val = exist as? String {
					self.timingDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timingDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingPeriod"] {
				presentKeys.insert("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let timingDate = self.timingDate {
			json["timingDate"] = timingDate.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		
		return json
	}
}


/**
 *  Goods and Services.
 *
 *  First tier of goods and services.
 */
public class ClaimItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimItem" }
	}
	
	/// Service Location.
	public var bodySite: Coding?
	
	/// None.
	public var careTeam: [ClaimItemCareTeam]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Additional items.
	public var detail: [ClaimItemDetail]?
	
	/// Applicable diagnoses.
	public var diagnosisLinkId: [UInt]?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Place of service.
	public var locationAddress: Address?
	
	/// Place of service.
	public var locationCoding: Coding?
	
	/// Place of service.
	public var locationReference: Reference?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Total item cost.
	public var net: Money?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Prosthetic details.
	public var prosthesis: ClaimItemProsthesis?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Billing Code.
	public var service: Coding?
	
	/// Date or dates of Service.
	public var servicedDate: Date?
	
	/// Date or dates of Service.
	public var servicedPeriod: Period?
	
	/// Service Sub-location.
	public var subSite: [Coding]?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init(json: nil)
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["careTeam"] {
				presentKeys.insert("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = ClaimItemCareTeam.from(val, owner: self) as? [ClaimItemCareTeam]
				}
				else {
					errors.append(FHIRJSONError(key: "careTeam", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimItemDetail.from(val, owner: self) as? [ClaimItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["diagnosisLinkId"] {
				presentKeys.insert("diagnosisLinkId")
				if let val = exist as? [UInt] {
					self.diagnosisLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosisLinkId", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["locationAddress"] {
				presentKeys.insert("locationAddress")
				if let val = exist as? FHIRJSON {
					self.locationAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["locationCoding"] {
				presentKeys.insert("locationCoding")
				if let val = exist as? FHIRJSON {
					self.locationCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["locationReference"] {
				presentKeys.insert("locationReference")
				if let val = exist as? FHIRJSON {
					self.locationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prosthesis"] {
				presentKeys.insert("prosthesis")
				if let val = exist as? FHIRJSON {
					self.prosthesis = ClaimItemProsthesis(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prosthesis", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subSite"] {
				presentKeys.insert("subSite")
				if let val = exist as? [FHIRJSON] {
					self.subSite = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "subSite", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = ClaimItemCareTeam.asJSONArray(careTeam)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = ClaimItemDetail.asJSONArray(detail)
		}
		if let diagnosisLinkId = self.diagnosisLinkId {
			var arr = [AnyObject]()
			for val in diagnosisLinkId {
				arr.append(val.asJSON())
			}
			json["diagnosisLinkId"] = arr
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let locationAddress = self.locationAddress {
			json["locationAddress"] = locationAddress.asJSON()
		}
		if let locationCoding = self.locationCoding {
			json["locationCoding"] = locationCoding.asJSON()
		}
		if let locationReference = self.locationReference {
			json["locationReference"] = locationReference.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = Coding.asJSONArray(modifier)
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = Coding.asJSONArray(programCode)
		}
		if let prosthesis = self.prosthesis {
			json["prosthesis"] = prosthesis.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		if let servicedDate = self.servicedDate {
			json["servicedDate"] = servicedDate.asJSON()
		}
		if let servicedPeriod = self.servicedPeriod {
			json["servicedPeriod"] = servicedPeriod.asJSON()
		}
		if let subSite = self.subSite {
			json["subSite"] = Coding.asJSONArray(subSite)
		}
		if let udi = self.udi {
			json["udi"] = Reference.asJSONArray(udi)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  The members of the team who provided the overall service as well as their role and whether responsible and
 *  qualifications.
 */
public class ClaimItemCareTeam: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimItemCareTeam" }
	}
	
	/// Provider individual or organization.
	public var providerIdentifier: Identifier?
	
	/// Provider individual or organization.
	public var providerReference: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: Coding?
	
	/// Billing provider.
	public var responsible: Bool?
	
	/// Role on the team.
	public var role: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(providerIdentifier: Identifier, providerReference: Reference) {
		self.init(json: nil)
		self.providerIdentifier = providerIdentifier
		self.providerReference = providerReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			if let exist: AnyObject = js["qualification"] {
				presentKeys.insert("qualification")
				if let val = exist as? FHIRJSON {
					self.qualification = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "qualification", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["responsible"] {
				presentKeys.insert("responsible")
				if let val = exist as? Bool {
					self.responsible = val
				}
				else {
					errors.append(FHIRJSONError(key: "responsible", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.providerIdentifier && nil == self.providerReference {
				errors.append(FHIRJSONError(key: "provider*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let qualification = self.qualification {
			json["qualification"] = qualification.asJSON()
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional items.
 *
 *  Second tier of goods and services.
 */
public class ClaimItemDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimItemDetail" }
	}
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Total additional item cost.
	public var net: Money?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Billing Code.
	public var service: Coding?
	
	/// Additional items.
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init(json: nil)
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subDetail"] {
				presentKeys.insert("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ClaimItemDetailSubDetail.from(val, owner: self) as? [ClaimItemDetailSubDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "subDetail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = Coding.asJSONArray(modifier)
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = Coding.asJSONArray(programCode)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = ClaimItemDetailSubDetail.asJSONArray(subDetail)
		}
		if let udi = self.udi {
			json["udi"] = Reference.asJSONArray(udi)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional items.
 *
 *  Third tier of goods and services.
 */
public class ClaimItemDetailSubDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimItemDetailSubDetail" }
	}
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Net additional item cost.
	public var net: Money?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Billing Code.
	public var service: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init(json: nil)
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = Coding.asJSONArray(modifier)
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = Coding.asJSONArray(programCode)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = Reference.asJSONArray(udi)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  Prosthetic details.
 *
 *  The materials and placement date of prior fixed prosthesis.
 */
public class ClaimItemProsthesis: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimItemProsthesis" }
	}
	
	/// Is this the initial service.
	public var initial: Bool?
	
	/// Initial service Date.
	public var priorDate: Date?
	
	/// Prosthetic Material.
	public var priorMaterial: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["initial"] {
				presentKeys.insert("initial")
				if let val = exist as? Bool {
					self.initial = val
				}
				else {
					errors.append(FHIRJSONError(key: "initial", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priorDate"] {
				presentKeys.insert("priorDate")
				if let val = exist as? String {
					self.priorDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "priorDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priorMaterial"] {
				presentKeys.insert("priorMaterial")
				if let val = exist as? FHIRJSON {
					self.priorMaterial = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priorMaterial", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let initial = self.initial {
			json["initial"] = initial.asJSON()
		}
		if let priorDate = self.priorDate {
			json["priorDate"] = priorDate.asJSON()
		}
		if let priorMaterial = self.priorMaterial {
			json["priorMaterial"] = priorMaterial.asJSON()
		}
		
		return json
	}
}


/**
 *  Only if type = oral.
 *
 *  A list of teeth which would be expected but are not found due to having been previously  extracted or for other
 *  reasons.
 */
public class ClaimMissingTeeth: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimMissingTeeth" }
	}
	
	/// Date tooth was extracted if known.
	public var extractionDate: Date?
	
	/// Indicates whether it was extracted or other reason.
	public var reason: Coding?
	
	/// Tooth Code.
	public var tooth: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(tooth: Coding) {
		self.init(json: nil)
		self.tooth = tooth
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["extractionDate"] {
				presentKeys.insert("extractionDate")
				if let val = exist as? String {
					self.extractionDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "extractionDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["tooth"] {
				presentKeys.insert("tooth")
				if let val = exist as? FHIRJSON {
					self.tooth = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "tooth", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "tooth"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let extractionDate = self.extractionDate {
			json["extractionDate"] = extractionDate.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let tooth = self.tooth {
			json["tooth"] = tooth.asJSON()
		}
		
		return json
	}
}


/**
 *  Party to be paid any benefits payable.
 *
 *  The party to be reimbursed for the services.
 */
public class ClaimPayee: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimPayee" }
	}
	
	/// Party to receive the payable.
	public var partyIdentifier: Identifier?
	
	/// Party to receive the payable.
	public var partyReference: Reference?
	
	/// organization | patient | practitioner | relatedperson.
	public var resourceType: Coding?
	
	/// Type of party: Subscriber, Provider, other.
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["partyIdentifier"] {
				presentKeys.insert("partyIdentifier")
				if let val = exist as? FHIRJSON {
					self.partyIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partyIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["partyReference"] {
				presentKeys.insert("partyReference")
				if let val = exist as? FHIRJSON {
					self.partyReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partyReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["resourceType"] {
				presentKeys.insert("resourceType")
				if let val = exist as? FHIRJSON {
					self.resourceType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resourceType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let partyIdentifier = self.partyIdentifier {
			json["partyIdentifier"] = partyIdentifier.asJSON()
		}
		if let partyReference = self.partyReference {
			json["partyReference"] = partyReference.asJSON()
		}
		if let resourceType = self.resourceType {
			json["resourceType"] = resourceType.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Procedures performed.
 *
 *  Ordered list of patient procedures performed to support the adjudication.
 */
public class ClaimProcedure: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimProcedure" }
	}
	
	/// When the procedure was performed.
	public var date: DateTime?
	
	/// Patient's list of procedures performed.
	public var procedureCoding: Coding?
	
	/// Patient's list of procedures performed.
	public var procedureReference: Reference?
	
	/// Procedure sequence for reference.
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(procedureCoding: Coding, procedureReference: Reference, sequence: UInt) {
		self.init(json: nil)
		self.procedureCoding = procedureCoding
		self.procedureReference = procedureReference
		self.sequence = sequence
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["procedureCoding"] {
				presentKeys.insert("procedureCoding")
				if let val = exist as? FHIRJSON {
					self.procedureCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedureCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["procedureReference"] {
				presentKeys.insert("procedureReference")
				if let val = exist as? FHIRJSON {
					self.procedureReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedureReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.procedureCoding && nil == self.procedureReference {
				errors.append(FHIRJSONError(key: "procedure*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let procedureCoding = self.procedureCoding {
			json["procedureCoding"] = procedureCoding.asJSON()
		}
		if let procedureReference = self.procedureReference {
			json["procedureReference"] = procedureReference.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Related Claims which may be revelant to processing this claimn.
 *
 *  Other claims which are related to this claim such as prior claim versions or for related services.
 */
public class ClaimRelated: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimRelated" }
	}
	
	/// Reference to the related claim.
	public var claimIdentifier: Identifier?
	
	/// Reference to the related claim.
	public var claimReference: Reference?
	
	/// Related file or case reference.
	public var reference: Identifier?
	
	/// How the reference claim is related.
	public var relationship: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["claimIdentifier"] {
				presentKeys.insert("claimIdentifier")
				if let val = exist as? FHIRJSON {
					self.claimIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["claimReference"] {
				presentKeys.insert("claimReference")
				if let val = exist as? FHIRJSON {
					self.claimReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let claimIdentifier = self.claimIdentifier {
			json["claimIdentifier"] = claimIdentifier.asJSON()
		}
		if let claimReference = self.claimReference {
			json["claimReference"] = claimReference.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}

