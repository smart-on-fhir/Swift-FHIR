//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Explanation of Benefit resource.
 *
 *  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally
 *  account balance information, for informing the subscriber of the benefits provided.
 */
open class ExplanationOfBenefit: DomainResource {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefit" }
	}
	
	/// None.
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items.
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Insurer.
	public var authorIdentifier: Identifier?
	
	/// Insurer.
	public var authorReference: Reference?
	
	/// Balance by Benefit Category.
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Period for charge submission.
	public var billablePeriod: Period?
	
	/// Claim reference.
	public var claimIdentifier: Identifier?
	
	/// Claim reference.
	public var claimReference: Reference?
	
	/// Claim response reference.
	public var claimResponseIdentifier: Identifier?
	
	/// Claim response reference.
	public var claimResponseReference: Reference?
	
	/// Insurance or medical plan.
	public var coverage: ExplanationOfBenefitCoverage?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Diagnosis.
	public var diagnosis: [ExplanationOfBenefitDiagnosis]?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Period unable to work.
	public var employmentImpacted: Period?
	
	/// Servicing Facility.
	public var facilityIdentifier: Identifier?
	
	/// Servicing Facility.
	public var facilityReference: Reference?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// None.
	public var information: [ExplanationOfBenefitInformation]?
	
	/// Goods and Services.
	public var item: [ExplanationOfBenefitItem]?
	
	/// Only if type = oral.
	public var missingTeeth: [ExplanationOfBenefitMissingTeeth]?
	
	/// Processing notes.
	public var note: [ExplanationOfBenefitNote]?
	
	/// Responsible organization for the claim.
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization for the claim.
	public var organizationReference: Reference?
	
	/// Original Prescription.
	public var originalPrescriptionIdentifier: Identifier?
	
	/// Original Prescription.
	public var originalPrescriptionReference: Reference?
	
	/// Original specification followed.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: Coding?
	
	/// The subject of the Products and Services.
	public var patientIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var patientReference: Reference?
	
	/// Payee.
	public var payee: ExplanationOfBenefitPayee?
	
	/// None.
	public var payment: ExplanationOfBenefitPayment?
	
	/// Precedence (primary, secondary, etc.).
	public var precedence: UInt?
	
	/// Prescription.
	public var prescriptionIdentifier: Identifier?
	
	/// Prescription.
	public var prescriptionReference: Reference?
	
	/// Procedures performed.
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Responsible provider for the claim.
	public var providerIdentifier: Identifier?
	
	/// Responsible provider for the claim.
	public var providerReference: Reference?
	
	/// Treatment Referral.
	public var referralIdentifier: Identifier?
	
	/// Treatment Referral.
	public var referralReference: Reference?
	
	/// Related Claims which may be revelant to processing this claimn.
	public var related: [ExplanationOfBenefitRelated]?
	
	/// Current specification followed.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Finer grained claim type information.
	public var subType: [Coding]?
	
	/// Total benefit payable for the Claim.
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim.
	public var totalCost: Money?
	
	/// Type or discipline.
	public var type: Coding?
	
	/// Unallocated deductable.
	public var unallocDeductable: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: ExplanationOfBenefitCoverage, patientIdentifier: Identifier, patientReference: Reference, status: String, type: Coding) {
		self.init(json: nil)
		self.coverage = coverage
		self.patientIdentifier = patientIdentifier
		self.patientReference = patientReference
		self.status = status
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["accident"] {
				presentKeys.insert("accident")
				if let val = exist as? FHIRJSON {
					self.accident = ExplanationOfBenefitAccident(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accident", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["addItem"] {
				presentKeys.insert("addItem")
				if let val = exist as? [FHIRJSON] {
					self.addItem = ExplanationOfBenefitAddItem.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitAddItem]
				}
				else {
					errors.append(FHIRJSONError(key: "addItem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["authorIdentifier"] {
				presentKeys.insert("authorIdentifier")
				if let val = exist as? FHIRJSON {
					self.authorIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authorIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["authorReference"] {
				presentKeys.insert("authorReference")
				if let val = exist as? FHIRJSON {
					self.authorReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authorReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["benefitBalance"] {
				presentKeys.insert("benefitBalance")
				if let val = exist as? [FHIRJSON] {
					self.benefitBalance = ExplanationOfBenefitBenefitBalance.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitBenefitBalance]
				}
				else {
					errors.append(FHIRJSONError(key: "benefitBalance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["billablePeriod"] {
				presentKeys.insert("billablePeriod")
				if let val = exist as? FHIRJSON {
					self.billablePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "billablePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["claimIdentifier"] {
				presentKeys.insert("claimIdentifier")
				if let val = exist as? FHIRJSON {
					self.claimIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["claimReference"] {
				presentKeys.insert("claimReference")
				if let val = exist as? FHIRJSON {
					self.claimReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["claimResponseIdentifier"] {
				presentKeys.insert("claimResponseIdentifier")
				if let val = exist as? FHIRJSON {
					self.claimResponseIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponseIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["claimResponseReference"] {
				presentKeys.insert("claimResponseReference")
				if let val = exist as? FHIRJSON {
					self.claimResponseReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponseReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = ExplanationOfBenefitCoverage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "coverage"))
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
			if let exist = js["diagnosis"] {
				presentKeys.insert("diagnosis")
				if let val = exist as? [FHIRJSON] {
					self.diagnosis = ExplanationOfBenefitDiagnosis.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitDiagnosis]
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["employmentImpacted"] {
				presentKeys.insert("employmentImpacted")
				if let val = exist as? FHIRJSON {
					self.employmentImpacted = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "employmentImpacted", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["facilityIdentifier"] {
				presentKeys.insert("facilityIdentifier")
				if let val = exist as? FHIRJSON {
					self.facilityIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facilityIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["facilityReference"] {
				presentKeys.insert("facilityReference")
				if let val = exist as? FHIRJSON {
					self.facilityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facilityReference", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["hospitalization"] {
				presentKeys.insert("hospitalization")
				if let val = exist as? FHIRJSON {
					self.hospitalization = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "hospitalization", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["information"] {
				presentKeys.insert("information")
				if let val = exist as? [FHIRJSON] {
					self.information = ExplanationOfBenefitInformation.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitInformation]
				}
				else {
					errors.append(FHIRJSONError(key: "information", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ExplanationOfBenefitItem.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["missingTeeth"] {
				presentKeys.insert("missingTeeth")
				if let val = exist as? [FHIRJSON] {
					self.missingTeeth = ExplanationOfBenefitMissingTeeth.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitMissingTeeth]
				}
				else {
					errors.append(FHIRJSONError(key: "missingTeeth", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = ExplanationOfBenefitNote.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitNote]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["originalPrescriptionIdentifier"] {
				presentKeys.insert("originalPrescriptionIdentifier")
				if let val = exist as? FHIRJSON {
					self.originalPrescriptionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalPrescriptionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["originalPrescriptionReference"] {
				presentKeys.insert("originalPrescriptionReference")
				if let val = exist as? FHIRJSON {
					self.originalPrescriptionReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalPrescriptionReference", wants: FHIRJSON.self, has: type(of: exist)))
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
				if let val = exist as? FHIRJSON {
					self.outcome = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["patientIdentifier"] {
				presentKeys.insert("patientIdentifier")
				if let val = exist as? FHIRJSON {
					self.patientIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patientIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["patientReference"] {
				presentKeys.insert("patientReference")
				if let val = exist as? FHIRJSON {
					self.patientReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patientReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["payee"] {
				presentKeys.insert("payee")
				if let val = exist as? FHIRJSON {
					self.payee = ExplanationOfBenefitPayee(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "payee", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["payment"] {
				presentKeys.insert("payment")
				if let val = exist as? FHIRJSON {
					self.payment = ExplanationOfBenefitPayment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "payment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["precedence"] {
				presentKeys.insert("precedence")
				if let val = exist as? UInt {
					self.precedence = val
				}
				else {
					errors.append(FHIRJSONError(key: "precedence", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["prescriptionIdentifier"] {
				presentKeys.insert("prescriptionIdentifier")
				if let val = exist as? FHIRJSON {
					self.prescriptionIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriptionIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prescriptionReference"] {
				presentKeys.insert("prescriptionReference")
				if let val = exist as? FHIRJSON {
					self.prescriptionReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriptionReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = ExplanationOfBenefitProcedure.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitProcedure]
				}
				else {
					errors.append(FHIRJSONError(key: "procedure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["referralIdentifier"] {
				presentKeys.insert("referralIdentifier")
				if let val = exist as? FHIRJSON {
					self.referralIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referralIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["referralReference"] {
				presentKeys.insert("referralReference")
				if let val = exist as? FHIRJSON {
					self.referralReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "referralReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["related"] {
				presentKeys.insert("related")
				if let val = exist as? [FHIRJSON] {
					self.related = ExplanationOfBenefitRelated.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitRelated]
				}
				else {
					errors.append(FHIRJSONError(key: "related", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["subType"] {
				presentKeys.insert("subType")
				if let val = exist as? [FHIRJSON] {
					self.subType = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "subType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["totalBenefit"] {
				presentKeys.insert("totalBenefit")
				if let val = exist as? FHIRJSON {
					self.totalBenefit = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalBenefit", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["totalCost"] {
				presentKeys.insert("totalCost")
				if let val = exist as? FHIRJSON {
					self.totalCost = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalCost", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["unallocDeductable"] {
				presentKeys.insert("unallocDeductable")
				if let val = exist as? FHIRJSON {
					self.unallocDeductable = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unallocDeductable", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.patientIdentifier && nil == self.patientReference {
				errors.append(FHIRJSONError(key: "patient*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accident = self.accident {
			json["accident"] = accident.asJSON()
		}
		if let addItem = self.addItem {
			json["addItem"] = addItem.map() { $0.asJSON() }
		}
		if let authorIdentifier = self.authorIdentifier {
			json["authorIdentifier"] = authorIdentifier.asJSON()
		}
		if let authorReference = self.authorReference {
			json["authorReference"] = authorReference.asJSON()
		}
		if let benefitBalance = self.benefitBalance {
			json["benefitBalance"] = benefitBalance.map() { $0.asJSON() }
		}
		if let billablePeriod = self.billablePeriod {
			json["billablePeriod"] = billablePeriod.asJSON()
		}
		if let claimIdentifier = self.claimIdentifier {
			json["claimIdentifier"] = claimIdentifier.asJSON()
		}
		if let claimReference = self.claimReference {
			json["claimReference"] = claimReference.asJSON()
		}
		if let claimResponseIdentifier = self.claimResponseIdentifier {
			json["claimResponseIdentifier"] = claimResponseIdentifier.asJSON()
		}
		if let claimResponseReference = self.claimResponseReference {
			json["claimResponseReference"] = claimResponseReference.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.map() { $0.asJSON() }
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let employmentImpacted = self.employmentImpacted {
			json["employmentImpacted"] = employmentImpacted.asJSON()
		}
		if let facilityIdentifier = self.facilityIdentifier {
			json["facilityIdentifier"] = facilityIdentifier.asJSON()
		}
		if let facilityReference = self.facilityReference {
			json["facilityReference"] = facilityReference.asJSON()
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let information = self.information {
			json["information"] = information.map() { $0.asJSON() }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON() }
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = missingTeeth.map() { $0.asJSON() }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
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
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
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
		if let payment = self.payment {
			json["payment"] = payment.asJSON()
		}
		if let precedence = self.precedence {
			json["precedence"] = precedence.asJSON()
		}
		if let prescriptionIdentifier = self.prescriptionIdentifier {
			json["prescriptionIdentifier"] = prescriptionIdentifier.asJSON()
		}
		if let prescriptionReference = self.prescriptionReference {
			json["prescriptionReference"] = prescriptionReference.asJSON()
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.map() { $0.asJSON() }
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
			json["related"] = related.map() { $0.asJSON() }
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = subType.map() { $0.asJSON() }
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON()
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  An accident which resulted in the need for healthcare services.
 */
open class ExplanationOfBenefitAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAccident" }
	}
	
	/// When the accident occurred.
	public var date: FHIRDate?
	
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["locationAddress"] {
				presentKeys.insert("locationAddress")
				if let val = exist as? FHIRJSON {
					self.locationAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationAddress", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["locationReference"] {
				presentKeys.insert("locationReference")
				if let val = exist as? FHIRJSON {
					self.locationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Added items details.
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instances.
	public var sequenceLinkId: [UInt]?
	
	/// Billing Code.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ExplanationOfBenefitAddItemDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitAddItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? [UInt] {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON() }
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON() }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON()
		}
		if let sequenceLinkId = self.sequenceLinkId {
			var arr = [Any]()
			for val in sequenceLinkId {
				arr.append(val.asJSON())
			}
			json["sequenceLinkId"] = arr
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
open class ExplanationOfBenefitAddItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Billing Code.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON() }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Balance by Benefit Category.
 */
open class ExplanationOfBenefitBenefitBalance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitBenefitBalance" }
	}
	
	/// Benefit Category.
	public var category: Coding?
	
	/// Description of the benefit.
	public var description_fhir: String?
	
	/// Benefit Summary.
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
					self.financial = ExplanationOfBenefitBenefitBalanceFinancial.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitBenefitBalanceFinancial]
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
open class ExplanationOfBenefitBenefitBalanceFinancial: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitBenefitBalanceFinancial" }
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
open class ExplanationOfBenefitCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitCoverage" }
	}
	
	/// Insurance information.
	public var coverageIdentifier: Identifier?
	
	/// Insurance information.
	public var coverageReference: Reference?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["coverageIdentifier"] {
				presentKeys.insert("coverageIdentifier")
				if let val = exist as? FHIRJSON {
					self.coverageIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["coverageReference"] {
				presentKeys.insert("coverageReference")
				if let val = exist as? FHIRJSON {
					self.coverageReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["preAuthRef"] {
				presentKeys.insert("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(FHIRJSONError(key: "preAuthRef", wants: Array<String>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let coverageIdentifier = self.coverageIdentifier {
			json["coverageIdentifier"] = coverageIdentifier.asJSON()
		}
		if let coverageReference = self.coverageReference {
			json["coverageReference"] = coverageReference.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [Any]()
			for val in preAuthRef {
				arr.append(val.asJSON())
			}
			json["preAuthRef"] = arr
		}
		
		return json
	}
}


/**
 *  Diagnosis.
 *
 *  Ordered list of patient diagnosis for which care is sought.
 */
open class ExplanationOfBenefitDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitDiagnosis" }
	}
	
	/// Patient's list of diagnosis.
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["diagnosis"] {
				presentKeys.insert("diagnosis")
				if let val = exist as? FHIRJSON {
					self.diagnosis = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosis", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "diagnosis"))
			}
			if let exist = js["drg"] {
				presentKeys.insert("drg")
				if let val = exist as? FHIRJSON {
					self.drg = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "drg", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
			json["type"] = type.map() { $0.asJSON() }
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
open class ExplanationOfBenefitInformation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitInformation" }
	}
	
	/// Category of information.
	public var category: Coding?
	
	/// Type of information.
	public var code: Coding?
	
	/// When it occurred.
	public var timingDate: FHIRDate?
	
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
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
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingDate"] {
				presentKeys.insert("timingDate")
				if let val = exist as? String {
					self.timingDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timingDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingPeriod"] {
				presentKeys.insert("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: type(of: exist)))
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
open class ExplanationOfBenefitItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Service Location.
	public var bodySite: Coding?
	
	/// None.
	public var careTeam: [ExplanationOfBenefitItemCareTeam]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Additional items.
	public var detail: [ExplanationOfBenefitItemDetail]?
	
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
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Prosthetic details.
	public var prosthesis: ExplanationOfBenefitItemProsthesis?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Billing Code.
	public var service: Coding?
	
	/// Date or dates of Service.
	public var servicedDate: FHIRDate?
	
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["careTeam"] {
				presentKeys.insert("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = ExplanationOfBenefitItemCareTeam.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemCareTeam]
				}
				else {
					errors.append(FHIRJSONError(key: "careTeam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ExplanationOfBenefitItemDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["diagnosisLinkId"] {
				presentKeys.insert("diagnosisLinkId")
				if let val = exist as? [UInt] {
					self.diagnosisLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosisLinkId", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["locationAddress"] {
				presentKeys.insert("locationAddress")
				if let val = exist as? FHIRJSON {
					self.locationAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationAddress", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["locationCoding"] {
				presentKeys.insert("locationCoding")
				if let val = exist as? FHIRJSON {
					self.locationCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["locationReference"] {
				presentKeys.insert("locationReference")
				if let val = exist as? FHIRJSON {
					self.locationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "locationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["prosthesis"] {
				presentKeys.insert("prosthesis")
				if let val = exist as? FHIRJSON {
					self.prosthesis = ExplanationOfBenefitItemProsthesis(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prosthesis", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["subSite"] {
				presentKeys.insert("subSite")
				if let val = exist as? [FHIRJSON] {
					self.subSite = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "subSite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON() }
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = careTeam.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON() }
		}
		if let diagnosisLinkId = self.diagnosisLinkId {
			var arr = [Any]()
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
			json["modifier"] = modifier.map() { $0.asJSON() }
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON() }
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
			json["subSite"] = subSite.map() { $0.asJSON() }
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON() }
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  Adjudication details.
 *
 *  The adjudications results.
 */
open class ExplanationOfBenefitItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monitory value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
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
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
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
open class ExplanationOfBenefitItemCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemCareTeam" }
	}
	
	/// None.
	public var providerIdentifier: Identifier?
	
	/// None.
	public var providerReference: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: Coding?
	
	/// Billing practitioner.
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["qualification"] {
				presentKeys.insert("qualification")
				if let val = exist as? FHIRJSON {
					self.qualification = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "qualification", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responsible"] {
				presentKeys.insert("responsible")
				if let val = exist as? Bool {
					self.responsible = val
				}
				else {
					errors.append(FHIRJSONError(key: "responsible", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.providerIdentifier && nil == self.providerReference {
				errors.append(FHIRJSONError(key: "provider*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class ExplanationOfBenefitItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetail" }
	}
	
	/// Detail adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Total additional item cost.
	public var net: Money?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
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
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Group or type of product or service.
	public var type: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, type: Coding) {
		self.init(json: nil)
		self.sequence = sequence
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["subDetail"] {
				presentKeys.insert("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ExplanationOfBenefitItemDetailSubDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemDetailSubDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "subDetail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON() }
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON() }
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
			json["subDetail"] = subDetail.map() { $0.asJSON() }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON() }
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
open class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemDetailSubDetail" }
	}
	
	/// SubDetail adjudication.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Net additional item cost.
	public var net: Money?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
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
	
	/// Type of product or service.
	public var type: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, type: Coding) {
		self.init(json: nil)
		self.sequence = sequence
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["factor"] {
				presentKeys.insert("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
				}
			}
			if let exist = js["points"] {
				presentKeys.insert("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "points", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["programCode"] {
				presentKeys.insert("programCode")
				if let val = exist as? [FHIRJSON] {
					self.programCode = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["revenue"] {
				presentKeys.insert("revenue")
				if let val = exist as? FHIRJSON {
					self.revenue = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			if let exist = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? [FHIRJSON] {
					self.udi = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["unitPrice"] {
				presentKeys.insert("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON() }
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON() }
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
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON() }
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
open class ExplanationOfBenefitItemProsthesis: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemProsthesis" }
	}
	
	/// Is this the initial service.
	public var initial: Bool?
	
	/// Initial service Date.
	public var priorDate: FHIRDate?
	
	/// Prosthetic Material.
	public var priorMaterial: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["initial"] {
				presentKeys.insert("initial")
				if let val = exist as? Bool {
					self.initial = val
				}
				else {
					errors.append(FHIRJSONError(key: "initial", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["priorDate"] {
				presentKeys.insert("priorDate")
				if let val = exist as? String {
					self.priorDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "priorDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["priorMaterial"] {
				presentKeys.insert("priorMaterial")
				if let val = exist as? FHIRJSON {
					self.priorMaterial = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "priorMaterial", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class ExplanationOfBenefitMissingTeeth: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitMissingTeeth" }
	}
	
	/// Date of Extraction.
	public var extractionDate: FHIRDate?
	
	/// Reason for missing.
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["extractionDate"] {
				presentKeys.insert("extractionDate")
				if let val = exist as? String {
					self.extractionDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "extractionDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["tooth"] {
				presentKeys.insert("tooth")
				if let val = exist as? FHIRJSON {
					self.tooth = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "tooth", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "tooth"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
 *  Processing notes.
 *
 *  Note text.
 */
open class ExplanationOfBenefitNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitNote" }
	}
	
	/// Language.
	public var language: Coding?
	
	/// Note Number for this note.
	public var number: UInt?
	
	/// Note explanitory text.
	public var text: String?
	
	/// display | print | printoper.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? FHIRJSON {
					self.language = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Payee.
 *
 *  The party to be reimbursed for the services.
 */
open class ExplanationOfBenefitPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayee" }
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["partyIdentifier"] {
				presentKeys.insert("partyIdentifier")
				if let val = exist as? FHIRJSON {
					self.partyIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partyIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["partyReference"] {
				presentKeys.insert("partyReference")
				if let val = exist as? FHIRJSON {
					self.partyReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partyReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["resourceType"] {
				presentKeys.insert("resourceType")
				if let val = exist as? FHIRJSON {
					self.resourceType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "resourceType", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
 *  None.
 *
 *  Payment details for the claim if the claim has been paid.
 */
open class ExplanationOfBenefitPayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitPayment" }
	}
	
	/// Payment adjustment for non-Claim issues.
	public var adjustment: Money?
	
	/// Reason for Payment adjustment.
	public var adjustmentReason: Coding?
	
	/// Payment amount.
	public var amount: Money?
	
	/// Expected date of Payment.
	public var date: FHIRDate?
	
	/// Payment identifier.
	public var identifier: Identifier?
	
	/// Partial or Complete.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["adjustment"] {
				presentKeys.insert("adjustment")
				if let val = exist as? FHIRJSON {
					self.adjustment = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "adjustment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["adjustmentReason"] {
				presentKeys.insert("adjustmentReason")
				if let val = exist as? FHIRJSON {
					self.adjustmentReason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "adjustmentReason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjustment = self.adjustment {
			json["adjustment"] = adjustment.asJSON()
		}
		if let adjustmentReason = self.adjustmentReason {
			json["adjustmentReason"] = adjustmentReason.asJSON()
		}
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
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
open class ExplanationOfBenefitProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitProcedure" }
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["procedureCoding"] {
				presentKeys.insert("procedureCoding")
				if let val = exist as? FHIRJSON {
					self.procedureCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedureCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["procedureReference"] {
				presentKeys.insert("procedureReference")
				if let val = exist as? FHIRJSON {
					self.procedureReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "procedureReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
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
	
	override open func asJSON() -> FHIRJSON {
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
open class ExplanationOfBenefitRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitRelated" }
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
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["claimIdentifier"] {
				presentKeys.insert("claimIdentifier")
				if let val = exist as? FHIRJSON {
					self.claimIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["claimReference"] {
				presentKeys.insert("claimReference")
				if let val = exist as? FHIRJSON {
					self.claimReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

