//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Explanation of Benefit resource.

This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account
balance information, for informing the subscriber of the benefits provided.
*/
open class ExplanationOfBenefit: DomainResource {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefit" }
	}
	
	/// Details of an accident.
	public var accident: ExplanationOfBenefitAccident?
	
	/// Insurer added line items.
	public var addItem: [ExplanationOfBenefitAddItem]?
	
	/// Insurer.
	public var author: Reference?
	
	/// Balance by Benefit Category.
	public var benefitBalance: [ExplanationOfBenefitBenefitBalance]?
	
	/// Period for charge submission.
	public var billablePeriod: Period?
	
	/// Claim reference.
	public var claim: Reference?
	
	/// Claim response reference.
	public var claimResponse: Reference?
	
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
	public var facility: Reference?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues.
	public var information: [ExplanationOfBenefitInformation]?
	
	/// Goods and Services.
	public var item: [ExplanationOfBenefitItem]?
	
	/// Only if type = oral.
	public var missingTeeth: [ExplanationOfBenefitMissingTeeth]?
	
	/// Processing notes.
	public var note: [ExplanationOfBenefitNote]?
	
	/// Responsible organization for the claim.
	public var organization: Reference?
	
	/// Original Prescription.
	public var originalPrescription: Reference?
	
	/// Original specification followed.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: Coding?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Payee.
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment (if paid).
	public var payment: ExplanationOfBenefitPayment?
	
	/// Precedence (primary, secondary, etc.).
	public var precedence: UInt?
	
	/// Prescription.
	public var prescription: Reference?
	
	/// Procedures performed.
	public var procedure: [ExplanationOfBenefitProcedure]?
	
	/// Responsible provider for the claim.
	public var provider: Reference?
	
	/// Treatment Referral.
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claimn.
	public var related: [ExplanationOfBenefitRelated]?
	
	/// Current specification followed.
	public var ruleset: Coding?
	
	/// The status of the resource instance.
	public var status: ExplanationOfBenefitStatus?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: ExplanationOfBenefitCoverage, patient: Reference, status: ExplanationOfBenefitStatus, type: Coding) {
		self.init()
		self.coverage = coverage
		self.patient = patient
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["accident"] {
			presentKeys.insert("accident")
			if let val = exist as? FHIRJSON {
				do {
					self.accident = try ExplanationOfBenefitAccident(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "accident"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "accident", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["addItem"] {
			presentKeys.insert("addItem")
			if let val = exist as? [FHIRJSON] {
				do {
					self.addItem = try ExplanationOfBenefitAddItem.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitAddItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "addItem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "addItem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["benefitBalance"] {
			presentKeys.insert("benefitBalance")
			if let val = exist as? [FHIRJSON] {
				do {
					self.benefitBalance = try ExplanationOfBenefitBenefitBalance.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitBenefitBalance]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "benefitBalance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "benefitBalance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["billablePeriod"] {
			presentKeys.insert("billablePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.billablePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "billablePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "billablePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["claim"] {
			presentKeys.insert("claim")
			if let val = exist as? FHIRJSON {
				do {
					self.claim = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "claim"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "claim", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["claimResponse"] {
			presentKeys.insert("claimResponse")
			if let val = exist as? FHIRJSON {
				do {
					self.claimResponse = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "claimResponse"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "claimResponse", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? FHIRJSON {
				do {
					self.coverage = try ExplanationOfBenefitCoverage(json: val, owner: self)
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
		if let exist = json["diagnosis"] {
			presentKeys.insert("diagnosis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.diagnosis = try ExplanationOfBenefitDiagnosis.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitDiagnosis]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "diagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "diagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["employmentImpacted"] {
			presentKeys.insert("employmentImpacted")
			if let val = exist as? FHIRJSON {
				do {
					self.employmentImpacted = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "employmentImpacted"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "employmentImpacted", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["hospitalization"] {
			presentKeys.insert("hospitalization")
			if let val = exist as? FHIRJSON {
				do {
					self.hospitalization = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "hospitalization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "hospitalization", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["information"] {
			presentKeys.insert("information")
			if let val = exist as? [FHIRJSON] {
				do {
					self.information = try ExplanationOfBenefitInformation.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitInformation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "information"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "information", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try ExplanationOfBenefitItem.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["missingTeeth"] {
			presentKeys.insert("missingTeeth")
			if let val = exist as? [FHIRJSON] {
				do {
					self.missingTeeth = try ExplanationOfBenefitMissingTeeth.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitMissingTeeth]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "missingTeeth"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "missingTeeth", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try ExplanationOfBenefitNote.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitNote]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["originalPrescription"] {
			presentKeys.insert("originalPrescription")
			if let val = exist as? FHIRJSON {
				do {
					self.originalPrescription = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "originalPrescription"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "originalPrescription", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["payee"] {
			presentKeys.insert("payee")
			if let val = exist as? FHIRJSON {
				do {
					self.payee = try ExplanationOfBenefitPayee(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payee", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["payment"] {
			presentKeys.insert("payment")
			if let val = exist as? FHIRJSON {
				do {
					self.payment = try ExplanationOfBenefitPayment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["precedence"] {
			presentKeys.insert("precedence")
			if let val = exist as? UInt {
				self.precedence = val
			}
			else {
				errors.append(FHIRValidationError(key: "precedence", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["prescription"] {
			presentKeys.insert("prescription")
			if let val = exist as? FHIRJSON {
				do {
					self.prescription = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prescription"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prescription", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["procedure"] {
			presentKeys.insert("procedure")
			if let val = exist as? [FHIRJSON] {
				do {
					self.procedure = try ExplanationOfBenefitProcedure.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitProcedure]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "procedure"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "procedure", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["referral"] {
			presentKeys.insert("referral")
			if let val = exist as? FHIRJSON {
				do {
					self.referral = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "referral"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "referral", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["related"] {
			presentKeys.insert("related")
			if let val = exist as? [FHIRJSON] {
				do {
					self.related = try ExplanationOfBenefitRelated.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitRelated]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "related"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "related", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
				if let enumval = ExplanationOfBenefitStatus(rawValue: val) {
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
		if let exist = json["subType"] {
			presentKeys.insert("subType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subType = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["totalBenefit"] {
			presentKeys.insert("totalBenefit")
			if let val = exist as? FHIRJSON {
				do {
					self.totalBenefit = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "totalBenefit"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "totalBenefit", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["totalCost"] {
			presentKeys.insert("totalCost")
			if let val = exist as? FHIRJSON {
				do {
					self.totalCost = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "totalCost"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "totalCost", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["unallocDeductable"] {
			presentKeys.insert("unallocDeductable")
			if let val = exist as? FHIRJSON {
				do {
					self.unallocDeductable = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unallocDeductable"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unallocDeductable", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let accident = self.accident {
			json["accident"] = accident.asJSON(errors: &errors)
		}
		if let addItem = self.addItem {
			json["addItem"] = addItem.map() { $0.asJSON(errors: &errors) }
		}
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let benefitBalance = self.benefitBalance {
			json["benefitBalance"] = benefitBalance.map() { $0.asJSON(errors: &errors) }
		}
		if let billablePeriod = self.billablePeriod {
			json["billablePeriod"] = billablePeriod.asJSON(errors: &errors)
		}
		if let claim = self.claim {
			json["claim"] = claim.asJSON(errors: &errors)
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON(errors: &errors)
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.map() { $0.asJSON(errors: &errors) }
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let employmentImpacted = self.employmentImpacted {
			json["employmentImpacted"] = employmentImpacted.asJSON(errors: &errors)
		}
		if let facility = self.facility {
			json["facility"] = facility.asJSON(errors: &errors)
		}
		if let form = self.form {
			json["form"] = form.asJSON(errors: &errors)
		}
		if let hospitalization = self.hospitalization {
			json["hospitalization"] = hospitalization.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let information = self.information {
			json["information"] = information.map() { $0.asJSON(errors: &errors) }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = missingTeeth.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let originalPrescription = self.originalPrescription {
			json["originalPrescription"] = originalPrescription.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON(errors: &errors)
		}
		if let payment = self.payment {
			json["payment"] = payment.asJSON(errors: &errors)
		}
		if let precedence = self.precedence {
			json["precedence"] = precedence.asJSON()
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON(errors: &errors)
		}
		if let procedure = self.procedure {
			json["procedure"] = procedure.map() { $0.asJSON(errors: &errors) }
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON(errors: &errors)
		}
		if let referral = self.referral {
			json["referral"] = referral.asJSON(errors: &errors)
		}
		if let related = self.related {
			json["related"] = related.map() { $0.asJSON(errors: &errors) }
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subType = self.subType {
			json["subType"] = subType.map() { $0.asJSON(errors: &errors) }
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON(errors: &errors)
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Details of an accident.

An accident which resulted in the need for healthcare services.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["locationAddress"] {
			presentKeys.insert("locationAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.locationAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "locationAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "locationAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["locationReference"] {
			presentKeys.insert("locationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.locationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "locationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "locationReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let locationAddress = self.locationAddress {
			json["locationAddress"] = locationAddress.asJSON(errors: &errors)
		}
		if let locationReference = self.locationReference {
			json["locationReference"] = locationReference.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Insurer added line items.

The first tier service adjudications for payor added services.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try ExplanationOfBenefitAddItemDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitAddItemDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["fee"] {
			presentKeys.insert("fee")
			if let val = exist as? FHIRJSON {
				do {
					self.fee = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? [UInt] {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			json["noteNumber"] = noteNumber.map() { $0.asJSON() }
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.map() { $0.asJSON() }
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Added items details.

The second tier service adjudications for payor added services.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["fee"] {
			presentKeys.insert("fee")
			if let val = exist as? FHIRJSON {
				do {
					self.fee = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			json["noteNumber"] = noteNumber.map() { $0.asJSON() }
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Balance by Benefit Category.
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
					self.financial = try ExplanationOfBenefitBenefitBalanceFinancial.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitBenefitBalanceFinancial]
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
Benefit Summary.

Benefits Used to date.
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
Insurance or medical plan.

Financial instrument by which payment information for health care.
*/
open class ExplanationOfBenefitCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitCoverage" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	
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
		if let exist = json["preAuthRef"] {
			presentKeys.insert("preAuthRef")
			if let val = exist as? [String] {
				self.preAuthRef = val
			}
			else {
				errors.append(FHIRValidationError(key: "preAuthRef", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let preAuthRef = self.preAuthRef {
			json["preAuthRef"] = preAuthRef.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
Diagnosis.

Ordered list of patient diagnosis for which care is sought.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(diagnosis: Coding, sequence: UInt) {
		self.init()
		self.diagnosis = diagnosis
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["diagnosis"] {
			presentKeys.insert("diagnosis")
			if let val = exist as? FHIRJSON {
				do {
					self.diagnosis = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "diagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "diagnosis", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "diagnosis"))
		}
		if let exist = json["drg"] {
			presentKeys.insert("drg")
			if let val = exist as? FHIRJSON {
				do {
					self.drg = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "drg"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "drg", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.asJSON(errors: &errors)
		}
		if let drg = self.drg {
			json["drg"] = drg.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Exceptions, special considerations, the condition, situation, prior or concurrent issues.

Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent
issues. Often there are mutiple jurisdiction specific valuesets which are required.
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
		if let exist = json["timingDate"] {
			presentKeys.insert("timingDate")
			if let val = exist as? String {
				self.timingDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "timingDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingPeriod"] {
			presentKeys.insert("timingPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.timingPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let timingDate = self.timingDate {
			json["timingDate"] = timingDate.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON(errors: &errors)
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		
		return json
	}
}


/**
Goods and Services.

First tier of goods and services.
*/
open class ExplanationOfBenefitItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Service Location.
	public var bodySite: Coding?
	
	/// Care Team members.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init()
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["bodySite"] {
			presentKeys.insert("bodySite")
			if let val = exist as? FHIRJSON {
				do {
					self.bodySite = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bodySite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bodySite", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["careTeam"] {
			presentKeys.insert("careTeam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.careTeam = try ExplanationOfBenefitItemCareTeam.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemCareTeam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "careTeam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "careTeam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try ExplanationOfBenefitItemDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["diagnosisLinkId"] {
			presentKeys.insert("diagnosisLinkId")
			if let val = exist as? [UInt] {
				self.diagnosisLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "diagnosisLinkId", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["locationAddress"] {
			presentKeys.insert("locationAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.locationAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "locationAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "locationAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["locationCoding"] {
			presentKeys.insert("locationCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.locationCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "locationCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "locationCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["locationReference"] {
			presentKeys.insert("locationReference")
			if let val = exist as? FHIRJSON {
				do {
					self.locationReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "locationReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "locationReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["net"] {
			presentKeys.insert("net")
			if let val = exist as? FHIRJSON {
				do {
					self.net = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "net"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["points"] {
			presentKeys.insert("points")
			if let val = exist as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "points", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["programCode"] {
			presentKeys.insert("programCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.programCode = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "programCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["prosthesis"] {
			presentKeys.insert("prosthesis")
			if let val = exist as? FHIRJSON {
				do {
					self.prosthesis = try ExplanationOfBenefitItemProsthesis(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prosthesis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prosthesis", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["subSite"] {
			presentKeys.insert("subSite")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subSite = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subSite"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subSite", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["udi"] {
			presentKeys.insert("udi")
			if let val = exist as? [FHIRJSON] {
				do {
					self.udi = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "udi"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["unitPrice"] {
			presentKeys.insert("unitPrice")
			if let val = exist as? FHIRJSON {
				do {
					self.unitPrice = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unitPrice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON(errors: &errors)
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = careTeam.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let diagnosisLinkId = self.diagnosisLinkId {
			json["diagnosisLinkId"] = diagnosisLinkId.map() { $0.asJSON() }
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let locationAddress = self.locationAddress {
			json["locationAddress"] = locationAddress.asJSON(errors: &errors)
		}
		if let locationCoding = self.locationCoding {
			json["locationCoding"] = locationCoding.asJSON(errors: &errors)
		}
		if let locationReference = self.locationReference {
			json["locationReference"] = locationReference.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let net = self.net {
			json["net"] = net.asJSON(errors: &errors)
		}
		if let noteNumber = self.noteNumber {
			json["noteNumber"] = noteNumber.map() { $0.asJSON() }
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON(errors: &errors) }
		}
		if let prosthesis = self.prosthesis {
			json["prosthesis"] = prosthesis.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		if let servicedDate = self.servicedDate {
			json["servicedDate"] = servicedDate.asJSON()
		}
		if let servicedPeriod = self.servicedPeriod {
			json["servicedPeriod"] = servicedPeriod.asJSON(errors: &errors)
		}
		if let subSite = self.subSite {
			json["subSite"] = subSite.map() { $0.asJSON(errors: &errors) }
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON(errors: &errors) }
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Adjudication details.

The adjudications results.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
Care Team members.

The members of the team who provided the overall service as well as their role and whether responsible and
qualifications.
*/
open class ExplanationOfBenefitItemCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitItemCareTeam" }
	}
	
	/// Member of the Care Team.
	public var provider: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: Coding?
	
	/// Billing practitioner.
	public var responsible: Bool?
	
	/// Role on the team.
	public var role: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(provider: Reference) {
		self.init()
		self.provider = provider
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		else {
			errors.append(FHIRValidationError(missing: "provider"))
		}
		if let exist = json["qualification"] {
			presentKeys.insert("qualification")
			if let val = exist as? FHIRJSON {
				do {
					self.qualification = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "qualification"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "qualification", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["responsible"] {
			presentKeys.insert("responsible")
			if let val = exist as? Bool {
				self.responsible = val
			}
			else {
				errors.append(FHIRValidationError(key: "responsible", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? FHIRJSON {
				do {
					self.role = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let provider = self.provider {
			json["provider"] = provider.asJSON(errors: &errors)
		}
		if let qualification = self.qualification {
			json["qualification"] = qualification.asJSON(errors: &errors)
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Additional items.

Second tier of goods and services.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, type: Coding) {
		self.init()
		self.sequence = sequence
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["net"] {
			presentKeys.insert("net")
			if let val = exist as? FHIRJSON {
				do {
					self.net = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "net"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["points"] {
			presentKeys.insert("points")
			if let val = exist as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "points", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["programCode"] {
			presentKeys.insert("programCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.programCode = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "programCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subDetail"] {
			presentKeys.insert("subDetail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subDetail = try ExplanationOfBenefitItemDetailSubDetail.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemDetailSubDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subDetail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subDetail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["udi"] {
			presentKeys.insert("udi")
			if let val = exist as? [FHIRJSON] {
				do {
					self.udi = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "udi"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["unitPrice"] {
			presentKeys.insert("unitPrice")
			if let val = exist as? FHIRJSON {
				do {
					self.unitPrice = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unitPrice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let net = self.net {
			json["net"] = net.asJSON(errors: &errors)
		}
		if let noteNumber = self.noteNumber {
			json["noteNumber"] = noteNumber.map() { $0.asJSON() }
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON(errors: &errors) }
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = subDetail.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON(errors: &errors) }
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Additional items.

Third tier of goods and services.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, type: Coding) {
		self.init()
		self.sequence = sequence
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ExplanationOfBenefitItemAdjudication.instantiate(fromArray: val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["net"] {
			presentKeys.insert("net")
			if let val = exist as? FHIRJSON {
				do {
					self.net = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "net"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["points"] {
			presentKeys.insert("points")
			if let val = exist as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "points", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["programCode"] {
			presentKeys.insert("programCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.programCode = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "programCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "programCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["udi"] {
			presentKeys.insert("udi")
			if let val = exist as? [FHIRJSON] {
				do {
					self.udi = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "udi"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "udi", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["unitPrice"] {
			presentKeys.insert("unitPrice")
			if let val = exist as? FHIRJSON {
				do {
					self.unitPrice = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unitPrice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let net = self.net {
			json["net"] = net.asJSON(errors: &errors)
		}
		if let noteNumber = self.noteNumber {
			json["noteNumber"] = noteNumber.map() { $0.asJSON() }
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let programCode = self.programCode {
			json["programCode"] = programCode.map() { $0.asJSON(errors: &errors) }
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let udi = self.udi {
			json["udi"] = udi.map() { $0.asJSON(errors: &errors) }
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Prosthetic details.

The materials and placement date of prior fixed prosthesis.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["initial"] {
			presentKeys.insert("initial")
			if let val = exist as? Bool {
				self.initial = val
			}
			else {
				errors.append(FHIRValidationError(key: "initial", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["priorDate"] {
			presentKeys.insert("priorDate")
			if let val = exist as? String {
				self.priorDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "priorDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["priorMaterial"] {
			presentKeys.insert("priorMaterial")
			if let val = exist as? FHIRJSON {
				do {
					self.priorMaterial = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "priorMaterial"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "priorMaterial", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let initial = self.initial {
			json["initial"] = initial.asJSON()
		}
		if let priorDate = self.priorDate {
			json["priorDate"] = priorDate.asJSON()
		}
		if let priorMaterial = self.priorMaterial {
			json["priorMaterial"] = priorMaterial.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Only if type = oral.

A list of teeth which would be expected but are not found due to having been previously  extracted or for other reasons.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(tooth: Coding) {
		self.init()
		self.tooth = tooth
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["extractionDate"] {
			presentKeys.insert("extractionDate")
			if let val = exist as? String {
				self.extractionDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "extractionDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["tooth"] {
			presentKeys.insert("tooth")
			if let val = exist as? FHIRJSON {
				do {
					self.tooth = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "tooth"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "tooth", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "tooth"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let extractionDate = self.extractionDate {
			json["extractionDate"] = extractionDate.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let tooth = self.tooth {
			json["tooth"] = tooth.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Processing notes.

Note text.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? FHIRJSON {
				do {
					self.language = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "language"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["number"] {
			presentKeys.insert("number")
			if let val = exist as? UInt {
				self.number = val
			}
			else {
				errors.append(FHIRValidationError(key: "number", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON(errors: &errors)
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Payee.

The party to be reimbursed for the services.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["partyIdentifier"] {
			presentKeys.insert("partyIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.partyIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partyIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partyIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["partyReference"] {
			presentKeys.insert("partyReference")
			if let val = exist as? FHIRJSON {
				do {
					self.partyReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partyReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partyReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["resourceType"] {
			presentKeys.insert("resourceType")
			if let val = exist as? FHIRJSON {
				do {
					self.resourceType = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resourceType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resourceType", wants: FHIRJSON.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let partyIdentifier = self.partyIdentifier {
			json["partyIdentifier"] = partyIdentifier.asJSON(errors: &errors)
		}
		if let partyReference = self.partyReference {
			json["partyReference"] = partyReference.asJSON(errors: &errors)
		}
		if let resourceType = self.resourceType {
			json["resourceType"] = resourceType.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Payment (if paid).

Payment details for the claim if the claim has been paid.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjustment"] {
			presentKeys.insert("adjustment")
			if let val = exist as? FHIRJSON {
				do {
					self.adjustment = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjustment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjustment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["adjustmentReason"] {
			presentKeys.insert("adjustmentReason")
			if let val = exist as? FHIRJSON {
				do {
					self.adjustmentReason = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjustmentReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjustmentReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjustment = self.adjustment {
			json["adjustment"] = adjustment.asJSON(errors: &errors)
		}
		if let adjustmentReason = self.adjustmentReason {
			json["adjustmentReason"] = adjustmentReason.asJSON(errors: &errors)
		}
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Procedures performed.

Ordered list of patient procedures performed to support the adjudication.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(procedure: Any, sequence: UInt) {
		self.init()
		if let value = procedure as? Coding {
			self.procedureCoding = value
		}
		else if let value = procedure as? Reference {
			self.procedureReference = value
		}
		else {
			fhir_warn("Type “\(type(of: procedure))” for property “\(procedure)” is invalid, ignoring")
		}
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["procedureCoding"] {
			presentKeys.insert("procedureCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.procedureCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "procedureCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "procedureCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["procedureReference"] {
			presentKeys.insert("procedureReference")
			if let val = exist as? FHIRJSON {
				do {
					self.procedureReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "procedureReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "procedureReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.procedureCoding && nil == self.procedureReference {
			errors.append(FHIRValidationError(missing: "procedure[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let procedureCoding = self.procedureCoding {
			json["procedureCoding"] = procedureCoding.asJSON(errors: &errors)
		}
		if let procedureReference = self.procedureReference {
			json["procedureReference"] = procedureReference.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
Related Claims which may be revelant to processing this claimn.

Other claims which are related to this claim such as prior claim versions or for related services.
*/
open class ExplanationOfBenefitRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ExplanationOfBenefitRelated" }
	}
	
	/// Reference to the related claim.
	public var claim: Reference?
	
	/// Related file or case reference.
	public var reference: Identifier?
	
	/// How the reference claim is related.
	public var relationship: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["claim"] {
			presentKeys.insert("claim")
			if let val = exist as? FHIRJSON {
				do {
					self.claim = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "claim"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "claim", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? FHIRJSON {
				do {
					self.reference = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? FHIRJSON {
				do {
					self.relationship = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let claim = self.claim {
			json["claim"] = claim.asJSON(errors: &errors)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON(errors: &errors)
		}
		
		return json
	}
}

