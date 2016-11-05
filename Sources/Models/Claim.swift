//
//  Claim.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Claim) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Claim, Pre-determination or Pre-authorization.

A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
insurer for payment recovery.
*/
open class Claim: DomainResource {
	override open class var resourceType: String {
		get { return "Claim" }
	}
	
	/// Details about an accident.
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
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Funds requested to be reserved.
	public var fundsReserve: Coding?
	
	/// Period in hospital.
	public var hospitalization: Period?
	
	/// Claim number.
	public var identifier: [Identifier]?
	
	/// Exceptions, special considerations, the condition, situation, prior or concurrent issues.
	public var information: [ClaimInformation]?
	
	/// Target.
	public var insurer: Reference?
	
	/// Goods and Services.
	public var item: [ClaimItem]?
	
	/// Only if type = oral.
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Original Prescription.
	public var originalPrescription: Reference?
	
	/// Original specification followed.
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Party to be paid any benefits payable.
	public var payee: ClaimPayee?
	
	/// Prescription.
	public var prescription: Reference?
	
	/// Desired processing priority.
	public var priority: Coding?
	
	/// Procedures performed.
	public var procedure: [ClaimProcedure]?
	
	/// Responsible provider.
	public var provider: Reference?
	
	/// Treatment Referral.
	public var referral: Reference?
	
	/// Related Claims which may be revelant to processing this claimn.
	public var related: [ClaimRelated]?
	
	/// Current specification followed.
	public var ruleset: Coding?
	
	/// The status of the resource instance.
	public var status: ClaimStatus?
	
	/// Finer grained claim type information.
	public var subType: [Coding]?
	
	/// Total claim cost.
	public var total: Money?
	
	/// Type or discipline.
	public var type: Coding?
	
	/// Complete (Bill or Claim), Proposed (Pre-Authorization), Exploratory (Pre-determination).
	public var use: Use?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, status: ClaimStatus, type: Coding) {
		self.init()
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
					self.accident = try ClaimAccident(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "accident"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "accident", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? [FHIRJSON] {
				do {
					self.coverage = try ClaimCoverage.instantiate(fromArray: val, owner: self) as? [ClaimCoverage]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["diagnosis"] {
			presentKeys.insert("diagnosis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.diagnosis = try ClaimDiagnosis.instantiate(fromArray: val, owner: self) as? [ClaimDiagnosis]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "diagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "diagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["fundsReserve"] {
			presentKeys.insert("fundsReserve")
			if let val = exist as? FHIRJSON {
				do {
					self.fundsReserve = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fundsReserve"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fundsReserve", wants: FHIRJSON.self, has: type(of: exist)))
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
					self.information = try ClaimInformation.instantiate(fromArray: val, owner: self) as? [ClaimInformation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "information"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "information", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try ClaimItem.instantiate(fromArray: val, owner: self) as? [ClaimItem]
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
					self.missingTeeth = try ClaimMissingTeeth.instantiate(fromArray: val, owner: self) as? [ClaimMissingTeeth]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "missingTeeth"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "missingTeeth", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
					self.payee = try ClaimPayee(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payee", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["procedure"] {
			presentKeys.insert("procedure")
			if let val = exist as? [FHIRJSON] {
				do {
					self.procedure = try ClaimProcedure.instantiate(fromArray: val, owner: self) as? [ClaimProcedure]
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
					self.related = try ClaimRelated.instantiate(fromArray: val, owner: self) as? [ClaimRelated]
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
				if let enumval = ClaimStatus(rawValue: val) {
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
		if let exist = json["total"] {
			presentKeys.insert("total")
			if let val = exist as? FHIRJSON {
				do {
					self.total = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "total"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "total", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				if let enumval = Use(rawValue: val) {
					self.use = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "use", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let accident = self.accident {
			json["accident"] = accident.asJSON(errors: &errors)
		}
		if let billablePeriod = self.billablePeriod {
			json["billablePeriod"] = billablePeriod.asJSON(errors: &errors)
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.map() { $0.asJSON(errors: &errors) }
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.map() { $0.asJSON(errors: &errors) }
		}
		if let employmentImpacted = self.employmentImpacted {
			json["employmentImpacted"] = employmentImpacted.asJSON(errors: &errors)
		}
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON(errors: &errors)
		}
		if let facility = self.facility {
			json["facility"] = facility.asJSON(errors: &errors)
		}
		if let fundsReserve = self.fundsReserve {
			json["fundsReserve"] = fundsReserve.asJSON(errors: &errors)
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
		if let insurer = self.insurer {
			json["insurer"] = insurer.asJSON(errors: &errors)
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = missingTeeth.map() { $0.asJSON(errors: &errors) }
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
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON(errors: &errors)
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON(errors: &errors)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON(errors: &errors)
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
		if let total = self.total {
			json["total"] = total.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let use = self.use {
			json["use"] = use.rawValue
		}
		
		return json
	}
}


/**
Details about an accident.

An accident which resulted in the need for healthcare services.
*/
open class ClaimAccident: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimAccident" }
	}
	
	/// When the accident occurred
	/// see information codes
	/// see information codes.
	public var date: FHIRDate?
	
	/// Accident Place.
	public var locationAddress: Address?
	
	/// Accident Place.
	public var locationReference: Reference?
	
	/// The nature of the accident.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: FHIRDate) {
		self.init()
		self.date = date
	}
	
	
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
		else {
			errors.append(FHIRValidationError(missing: "date"))
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
Insurance or medical plan.

Financial instrument by which payment information for health care.
*/
open class ClaimCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimCoverage" }
	}
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Is the focal Coverage.
	public var focal: Bool?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	/// Service instance identifier.
	public var sequence: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, focal: Bool, sequence: UInt) {
		self.init()
		self.coverage = coverage
		self.focal = focal
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["businessArrangement"] {
			presentKeys.insert("businessArrangement")
			if let val = exist as? String {
				self.businessArrangement = val
			}
			else {
				errors.append(FHIRValidationError(key: "businessArrangement", wants: String.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		if let exist = json["focal"] {
			presentKeys.insert("focal")
			if let val = exist as? Bool {
				self.focal = val
			}
			else {
				errors.append(FHIRValidationError(key: "focal", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "focal"))
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
		if let exist = json["preAuthRef"] {
			presentKeys.insert("preAuthRef")
			if let val = exist as? [String] {
				self.preAuthRef = val
			}
			else {
				errors.append(FHIRValidationError(key: "preAuthRef", wants: Array<String>.self, has: type(of: exist)))
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON(errors: &errors)
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let preAuthRef = self.preAuthRef {
			json["preAuthRef"] = preAuthRef.map() { $0.asJSON() }
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
Diagnosis.

Ordered list of patient diagnosis for which care is sought.
*/
open class ClaimDiagnosis: BackboneElement {
	override open class var resourceType: String {
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
open class ClaimInformation: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimInformation" }
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
open class ClaimItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItem" }
	}
	
	/// Service Location.
	public var bodySite: Coding?
	
	/// Members of the care team.
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
					self.careTeam = try ClaimItemCareTeam.instantiate(fromArray: val, owner: self) as? [ClaimItemCareTeam]
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
					self.detail = try ClaimItemDetail.instantiate(fromArray: val, owner: self) as? [ClaimItemDetail]
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
					self.prosthesis = try ClaimItemProsthesis(json: val, owner: self)
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
Members of the care team.

The members of the team who provided the overall service as well as their role and whether responsible and
qualifications.
*/
open class ClaimItemCareTeam: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemCareTeam" }
	}
	
	/// Provider individual or organization.
	public var provider: Reference?
	
	/// Type, classification or Specialization.
	public var qualification: Coding?
	
	/// Billing provider.
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
open class ClaimItemDetail: BackboneElement {
	override open class var resourceType: String {
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init()
		self.sequence = sequence
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
					self.subDetail = try ClaimItemDetailSubDetail.instantiate(fromArray: val, owner: self) as? [ClaimItemDetailSubDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subDetail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subDetail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
open class ClaimItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt) {
		self.init()
		self.sequence = sequence
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
open class ClaimItemProsthesis: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimItemProsthesis" }
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
open class ClaimMissingTeeth: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimMissingTeeth" }
	}
	
	/// Date tooth was extracted if known.
	public var extractionDate: FHIRDate?
	
	/// Indicates whether it was extracted or other reason.
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
Party to be paid any benefits payable.

The party to be reimbursed for the services.
*/
open class ClaimPayee: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimPayee" }
	}
	
	/// Party to receive the payable.
	public var party: Reference?
	
	/// organization | patient | practitioner | relatedperson.
	public var resourceType: Coding?
	
	/// Type of party: Subscriber, Provider, other.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: Coding) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["party"] {
			presentKeys.insert("party")
			if let val = exist as? FHIRJSON {
				do {
					self.party = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "party"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "party", wants: FHIRJSON.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let party = self.party {
			json["party"] = party.asJSON(errors: &errors)
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
Procedures performed.

Ordered list of patient procedures performed to support the adjudication.
*/
open class ClaimProcedure: BackboneElement {
	override open class var resourceType: String {
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
open class ClaimRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimRelated" }
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

