//
//  ExplanationOfBenefit.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Explanation of Benefit resource.
 *
 *  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally
 *  account balance information, for informing the subscriber of the benefits provided.
 */
public class ExplanationOfBenefit: DomainResource {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefit" }
	}
	
	/// When the accident occurred.
	public var accidentDate: Date?
	
	/// Accident Place.
	public var accidentLocationAddress: Address?
	
	/// Accident Place.
	public var accidentLocationReference: Reference?
	
	/// The nature of the accident.
	public var accidentType: Coding?
	
	/// Insurer added line items.
	public var addItem: [ExplanationOfBenefitAddItem]?
	
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
	
	/// Intervention and exception code (Pharma).
	public var interventionException: [Coding]?
	
	/// Goods and Services.
	public var item: [ExplanationOfBenefitItem]?
	
	/// Only if type = oral.
	public var missingTeeth: [ExplanationOfBenefitMissingTeeth]?
	
	/// Processing notes.
	public var note: [ExplanationOfBenefitNote]?
	
	/// Occurrence Span Codes.
	public var occurenceSpanCode: [Coding]?
	
	/// Occurrence Codes.
	public var occurrenceCode: [Coding]?
	
	/// Condition related Onset related dates and codes.
	public var onset: [ExplanationOfBenefitOnset]?
	
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
	
	/// The subject of the Products and Services.
	public var patientIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var patientReference: Reference?
	
	/// Payee.
	public var payee: ExplanationOfBenefitPayee?
	
	/// Payment adjustment for non-Claim issues.
	public var paymentAdjustment: Quantity?
	
	/// Reason for Payment adjustment.
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount.
	public var paymentAmount: Quantity?
	
	/// Expected data of Payment.
	public var paymentDate: Date?
	
	/// Payment identifier.
	public var paymentRef: Identifier?
	
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
	
	/// Funds reserved status.
	public var reserved: Coding?
	
	/// Current specification followed.
	public var ruleset: Coding?
	
	/// List of special Conditions.
	public var specialCondition: [Coding]?
	
	/// Finer grained claim type information.
	public var subType: [Coding]?
	
	/// Total benefit payable for the Claim.
	public var totalBenefit: Quantity?
	
	/// Total Cost of service from the Claim.
	public var totalCost: Quantity?
	
	/// Unallocated deductable.
	public var unallocDeductable: Quantity?
	
	/// Value Codes.
	public var valueCode: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: ExplanationOfBenefitCoverage, patientIdentifier: Identifier, patientReference: Reference) {
		self.init(json: nil)
		self.coverage = coverage
		self.patientIdentifier = patientIdentifier
		self.patientReference = patientReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["accidentDate"] {
				presentKeys.insert("accidentDate")
				if let val = exist as? String {
					self.accidentDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "accidentDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["accidentLocationAddress"] {
				presentKeys.insert("accidentLocationAddress")
				if let val = exist as? FHIRJSON {
					self.accidentLocationAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accidentLocationAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["accidentLocationReference"] {
				presentKeys.insert("accidentLocationReference")
				if let val = exist as? FHIRJSON {
					self.accidentLocationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accidentLocationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["accidentType"] {
				presentKeys.insert("accidentType")
				if let val = exist as? FHIRJSON {
					self.accidentType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "accidentType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["addItem"] {
				presentKeys.insert("addItem")
				if let val = exist as? [FHIRJSON] {
					self.addItem = ExplanationOfBenefitAddItem.from(val, owner: self) as? [ExplanationOfBenefitAddItem]
				}
				else {
					errors.append(FHIRJSONError(key: "addItem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["benefitBalance"] {
				presentKeys.insert("benefitBalance")
				if let val = exist as? [FHIRJSON] {
					self.benefitBalance = ExplanationOfBenefitBenefitBalance.from(val, owner: self) as? [ExplanationOfBenefitBenefitBalance]
				}
				else {
					errors.append(FHIRJSONError(key: "benefitBalance", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["claimResponseIdentifier"] {
				presentKeys.insert("claimResponseIdentifier")
				if let val = exist as? FHIRJSON {
					self.claimResponseIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponseIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["claimResponseReference"] {
				presentKeys.insert("claimResponseReference")
				if let val = exist as? FHIRJSON {
					self.claimResponseReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponseReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = ExplanationOfBenefitCoverage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "coverage"))
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
					self.diagnosis = ExplanationOfBenefitDiagnosis.from(val, owner: self) as? [ExplanationOfBenefitDiagnosis]
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosis", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["disposition"] {
				presentKeys.insert("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(FHIRJSONError(key: "disposition", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["form"] {
				presentKeys.insert("form")
				if let val = exist as? FHIRJSON {
					self.form = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "form", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["interventionException"] {
				presentKeys.insert("interventionException")
				if let val = exist as? [FHIRJSON] {
					self.interventionException = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "interventionException", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ExplanationOfBenefitItem.from(val, owner: self) as? [ExplanationOfBenefitItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["missingTeeth"] {
				presentKeys.insert("missingTeeth")
				if let val = exist as? [FHIRJSON] {
					self.missingTeeth = ExplanationOfBenefitMissingTeeth.from(val, owner: self) as? [ExplanationOfBenefitMissingTeeth]
				}
				else {
					errors.append(FHIRJSONError(key: "missingTeeth", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = ExplanationOfBenefitNote.from(val, owner: self) as? [ExplanationOfBenefitNote]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurenceSpanCode"] {
				presentKeys.insert("occurenceSpanCode")
				if let val = exist as? [FHIRJSON] {
					self.occurenceSpanCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "occurenceSpanCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["occurrenceCode"] {
				presentKeys.insert("occurrenceCode")
				if let val = exist as? [FHIRJSON] {
					self.occurrenceCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "occurrenceCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["onset"] {
				presentKeys.insert("onset")
				if let val = exist as? [FHIRJSON] {
					self.onset = ExplanationOfBenefitOnset.from(val, owner: self) as? [ExplanationOfBenefitOnset]
				}
				else {
					errors.append(FHIRJSONError(key: "onset", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
					self.payee = ExplanationOfBenefitPayee(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "payee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAdjustment"] {
				presentKeys.insert("paymentAdjustment")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustment = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAdjustment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAdjustmentReason"] {
				presentKeys.insert("paymentAdjustmentReason")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustmentReason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAdjustmentReason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAmount"] {
				presentKeys.insert("paymentAmount")
				if let val = exist as? FHIRJSON {
					self.paymentAmount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAmount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentDate"] {
				presentKeys.insert("paymentDate")
				if let val = exist as? String {
					self.paymentDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentRef"] {
				presentKeys.insert("paymentRef")
				if let val = exist as? FHIRJSON {
					self.paymentRef = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentRef", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["precedence"] {
				presentKeys.insert("precedence")
				if let val = exist as? UInt {
					self.precedence = val
				}
				else {
					errors.append(FHIRJSONError(key: "precedence", wants: UInt.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["procedure"] {
				presentKeys.insert("procedure")
				if let val = exist as? [FHIRJSON] {
					self.procedure = ExplanationOfBenefitProcedure.from(val, owner: self) as? [ExplanationOfBenefitProcedure]
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
					self.related = ExplanationOfBenefitRelated.from(val, owner: self) as? [ExplanationOfBenefitRelated]
				}
				else {
					errors.append(FHIRJSONError(key: "related", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reserved"] {
				presentKeys.insert("reserved")
				if let val = exist as? FHIRJSON {
					self.reserved = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reserved", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["specialCondition"] {
				presentKeys.insert("specialCondition")
				if let val = exist as? [FHIRJSON] {
					self.specialCondition = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "specialCondition", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["totalBenefit"] {
				presentKeys.insert("totalBenefit")
				if let val = exist as? FHIRJSON {
					self.totalBenefit = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalBenefit", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["totalCost"] {
				presentKeys.insert("totalCost")
				if let val = exist as? FHIRJSON {
					self.totalCost = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalCost", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unallocDeductable"] {
				presentKeys.insert("unallocDeductable")
				if let val = exist as? FHIRJSON {
					self.unallocDeductable = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unallocDeductable", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? [FHIRJSON] {
					self.valueCode = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let accidentDate = self.accidentDate {
			json["accidentDate"] = accidentDate.asJSON()
		}
		if let accidentLocationAddress = self.accidentLocationAddress {
			json["accidentLocationAddress"] = accidentLocationAddress.asJSON()
		}
		if let accidentLocationReference = self.accidentLocationReference {
			json["accidentLocationReference"] = accidentLocationReference.asJSON()
		}
		if let accidentType = self.accidentType {
			json["accidentType"] = accidentType.asJSON()
		}
		if let addItem = self.addItem {
			json["addItem"] = ExplanationOfBenefitAddItem.asJSONArray(addItem)
		}
		if let benefitBalance = self.benefitBalance {
			json["benefitBalance"] = ExplanationOfBenefitBenefitBalance.asJSONArray(benefitBalance)
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
			json["diagnosis"] = ExplanationOfBenefitDiagnosis.asJSONArray(diagnosis)
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
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let interventionException = self.interventionException {
			json["interventionException"] = Coding.asJSONArray(interventionException)
		}
		if let item = self.item {
			json["item"] = ExplanationOfBenefitItem.asJSONArray(item)
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = ExplanationOfBenefitMissingTeeth.asJSONArray(missingTeeth)
		}
		if let note = self.note {
			json["note"] = ExplanationOfBenefitNote.asJSONArray(note)
		}
		if let occurenceSpanCode = self.occurenceSpanCode {
			json["occurenceSpanCode"] = Coding.asJSONArray(occurenceSpanCode)
		}
		if let occurrenceCode = self.occurrenceCode {
			json["occurrenceCode"] = Coding.asJSONArray(occurrenceCode)
		}
		if let onset = self.onset {
			json["onset"] = ExplanationOfBenefitOnset.asJSONArray(onset)
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
		if let paymentAdjustment = self.paymentAdjustment {
			json["paymentAdjustment"] = paymentAdjustment.asJSON()
		}
		if let paymentAdjustmentReason = self.paymentAdjustmentReason {
			json["paymentAdjustmentReason"] = paymentAdjustmentReason.asJSON()
		}
		if let paymentAmount = self.paymentAmount {
			json["paymentAmount"] = paymentAmount.asJSON()
		}
		if let paymentDate = self.paymentDate {
			json["paymentDate"] = paymentDate.asJSON()
		}
		if let paymentRef = self.paymentRef {
			json["paymentRef"] = paymentRef.asJSON()
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
			json["procedure"] = ExplanationOfBenefitProcedure.asJSONArray(procedure)
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
			json["related"] = ExplanationOfBenefitRelated.asJSONArray(related)
		}
		if let reserved = self.reserved {
			json["reserved"] = reserved.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let specialCondition = self.specialCondition {
			json["specialCondition"] = Coding.asJSONArray(specialCondition)
		}
		if let subType = self.subType {
			json["subType"] = Coding.asJSONArray(subType)
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON()
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON()
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = Coding.asJSONArray(valueCode)
		}
		
		return json
	}
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
public class ExplanationOfBenefitAddItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ExplanationOfBenefitAddItemAdjudication]?
	
	/// Added items details.
	public var detail: [ExplanationOfBenefitAddItemDetail]?
	
	/// Professional fee or Product charge.
	public var fee: Quantity?
	
	/// List of note numbers which apply.
	public var noteNumberLinkId: [UInt]?
	
	/// Service instances.
	public var sequenceLinkId: [UInt]?
	
	/// Group, Service or Product.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(service: Coding) {
		self.init(json: nil)
		self.service = service
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitAddItemAdjudication.from(val, owner: self) as? [ExplanationOfBenefitAddItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ExplanationOfBenefitAddItemDetail.from(val, owner: self) as? [ExplanationOfBenefitAddItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["noteNumberLinkId"] {
				presentKeys.insert("noteNumberLinkId")
				if let val = exist as? [UInt] {
					self.noteNumberLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumberLinkId", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? [UInt] {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: Array<UInt>.self, has: exist.dynamicType))
				}
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
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ExplanationOfBenefitAddItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ExplanationOfBenefitAddItemDetail.asJSONArray(detail)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let noteNumberLinkId = self.noteNumberLinkId {
			var arr = [AnyObject]()
			for val in noteNumberLinkId {
				arr.append(val.asJSON())
			}
			json["noteNumberLinkId"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			var arr = [AnyObject]()
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
 *  Added items adjudication.
 *
 *  The adjudications results.
 */
public class ExplanationOfBenefitAddItemAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitAddItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
public class ExplanationOfBenefitAddItemDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ExplanationOfBenefitAddItemDetailAdjudication]?
	
	/// Professional fee or Product charge.
	public var fee: Quantity?
	
	/// Service or Product.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(service: Coding) {
		self.init(json: nil)
		self.service = service
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitAddItemDetailAdjudication.from(val, owner: self) as? [ExplanationOfBenefitAddItemDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ExplanationOfBenefitAddItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items detail adjudication.
 *
 *  The adjudications results.
 */
public class ExplanationOfBenefitAddItemDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitAddItemDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Balance by Benefit Category.
 */
public class ExplanationOfBenefitBenefitBalance: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitBenefitBalance" }
	}
	
	/// Benefit Category.
	public var category: Coding?
	
	/// Benefit Summary.
	public var financial: [ExplanationOfBenefitBenefitBalanceFinancial]?
	
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
			if let exist: AnyObject = js["financial"] {
				presentKeys.insert("financial")
				if let val = exist as? [FHIRJSON] {
					self.financial = ExplanationOfBenefitBenefitBalanceFinancial.from(val, owner: self) as? [ExplanationOfBenefitBenefitBalanceFinancial]
				}
				else {
					errors.append(FHIRJSONError(key: "financial", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? FHIRJSON {
					self.network = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subCategory"] {
				presentKeys.insert("subCategory")
				if let val = exist as? FHIRJSON {
					self.subCategory = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["term"] {
				presentKeys.insert("term")
				if let val = exist as? FHIRJSON {
					self.term = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "term", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unit"] {
				presentKeys.insert("unit")
				if let val = exist as? FHIRJSON {
					self.unit = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unit", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let financial = self.financial {
			json["financial"] = ExplanationOfBenefitBenefitBalanceFinancial.asJSONArray(financial)
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
public class ExplanationOfBenefitBenefitBalanceFinancial: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitBenefitBalanceFinancial" }
	}
	
	/// Benefits allowed.
	public var benefitQuantity: Quantity?
	
	/// Benefits allowed.
	public var benefitUnsignedInt: UInt?
	
	/// Benefits used.
	public var benefitUsedQuantity: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["benefitQuantity"] {
				presentKeys.insert("benefitQuantity")
				if let val = exist as? FHIRJSON {
					self.benefitQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["benefitUnsignedInt"] {
				presentKeys.insert("benefitUnsignedInt")
				if let val = exist as? UInt {
					self.benefitUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["benefitUsedQuantity"] {
				presentKeys.insert("benefitUsedQuantity")
				if let val = exist as? FHIRJSON {
					self.benefitUsedQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUsedQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["benefitUsedUnsignedInt"] {
				presentKeys.insert("benefitUsedUnsignedInt")
				if let val = exist as? UInt {
					self.benefitUsedUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "benefitUsedUnsignedInt", wants: UInt.self, has: exist.dynamicType))
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
		
		if let benefitQuantity = self.benefitQuantity {
			json["benefitQuantity"] = benefitQuantity.asJSON()
		}
		if let benefitUnsignedInt = self.benefitUnsignedInt {
			json["benefitUnsignedInt"] = benefitUnsignedInt.asJSON()
		}
		if let benefitUsedQuantity = self.benefitUsedQuantity {
			json["benefitUsedQuantity"] = benefitUsedQuantity.asJSON()
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
public class ExplanationOfBenefitCoverage: BackboneElement {
	override public class var resourceName: String {
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
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverageIdentifier: Identifier, coverageReference: Reference) {
		self.init(json: nil)
		self.coverageIdentifier = coverageIdentifier
		self.coverageReference = coverageReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			if let exist: AnyObject = js["preAuthRef"] {
				presentKeys.insert("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(FHIRJSONError(key: "preAuthRef", wants: Array<String>.self, has: exist.dynamicType))
				}
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
		
		if let coverageIdentifier = self.coverageIdentifier {
			json["coverageIdentifier"] = coverageIdentifier.asJSON()
		}
		if let coverageReference = self.coverageReference {
			json["coverageReference"] = coverageReference.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [AnyObject]()
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
public class ExplanationOfBenefitDiagnosis: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitDiagnosis" }
	}
	
	/// Patient's list of diagnosis.
	public var diagnosis: Coding?
	
	/// Number to covey order of diagnosis.
	public var sequence: UInt?
	
	
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let diagnosis = self.diagnosis {
			json["diagnosis"] = diagnosis.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Goods and Services.
 *
 *  First tier of goods and services.
 */
public class ExplanationOfBenefitItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ExplanationOfBenefitItemAdjudication]?
	
	/// Service Location.
	public var bodySite: Coding?
	
	/// Additional items.
	public var detail: [ExplanationOfBenefitItemDetail]?
	
	/// Applicable diagnoses.
	public var diagnosisLinkId: [UInt]?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// Total item cost.
	public var net: Quantity?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Place of service.
	public var place: Coding?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Prosthetic details.
	public var prosthesis: ExplanationOfBenefitItemProsthesis?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Type, classification or Specialization.
	public var providerQualification: Coding?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Item Code.
	public var service: Coding?
	
	/// Service/Product modifiers.
	public var serviceModifier: [Coding]?
	
	/// Date or dates of Service.
	public var servicedDate: Date?
	
	/// Date or dates of Service.
	public var servicedPeriod: Period?
	
	/// Service Sub-location.
	public var subSite: [Coding]?
	
	/// Supervising Practitioner.
	public var supervisorIdentifier: Identifier?
	
	/// Supervising Practitioner.
	public var supervisorReference: Reference?
	
	/// Group or type of product or service.
	public var type: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, service: Coding, type: Coding) {
		self.init(json: nil)
		self.sequence = sequence
		self.service = service
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemAdjudication.from(val, owner: self) as? [ExplanationOfBenefitItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.insert("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bodySite", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ExplanationOfBenefitItemDetail.from(val, owner: self) as? [ExplanationOfBenefitItemDetail]
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
					self.net = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "net", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["place"] {
				presentKeys.insert("place")
				if let val = exist as? FHIRJSON {
					self.place = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "place", wants: FHIRJSON.self, has: exist.dynamicType))
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
					self.prosthesis = ExplanationOfBenefitItemProsthesis(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prosthesis", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["providerQualification"] {
				presentKeys.insert("providerQualification")
				if let val = exist as? FHIRJSON {
					self.providerQualification = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerQualification", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
			if let exist: AnyObject = js["serviceModifier"] {
				presentKeys.insert("serviceModifier")
				if let val = exist as? [FHIRJSON] {
					self.serviceModifier = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceModifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["supervisorIdentifier"] {
				presentKeys.insert("supervisorIdentifier")
				if let val = exist as? FHIRJSON {
					self.supervisorIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "supervisorIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["supervisorReference"] {
				presentKeys.insert("supervisorReference")
				if let val = exist as? FHIRJSON {
					self.supervisorReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "supervisorReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
					self.unitPrice = Quantity(json: val, owner: self)
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
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ExplanationOfBenefitItemAdjudication.asJSONArray(adjudication)
		}
		if let bodySite = self.bodySite {
			json["bodySite"] = bodySite.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = ExplanationOfBenefitItemDetail.asJSONArray(detail)
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
		if let modifier = self.modifier {
			json["modifier"] = Coding.asJSONArray(modifier)
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let noteNumber = self.noteNumber {
			var arr = [AnyObject]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let place = self.place {
			json["place"] = place.asJSON()
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
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerQualification = self.providerQualification {
			json["providerQualification"] = providerQualification.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		if let serviceModifier = self.serviceModifier {
			json["serviceModifier"] = Coding.asJSONArray(serviceModifier)
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
		if let supervisorIdentifier = self.supervisorIdentifier {
			json["supervisorIdentifier"] = supervisorIdentifier.asJSON()
		}
		if let supervisorReference = self.supervisorReference {
			json["supervisorReference"] = supervisorReference.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
 *  Adjudication details.
 *
 *  The adjudications results.
 */
public class ExplanationOfBenefitItemAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Additional items.
 *
 *  Second tier of goods and services.
 */
public class ExplanationOfBenefitItemDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemDetail" }
	}
	
	/// Detail adjudication.
	public var adjudication: [ExplanationOfBenefitItemDetailAdjudication]?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Total additional item cost.
	public var net: Quantity?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Additional item codes.
	public var service: Coding?
	
	/// Additional items.
	public var subDetail: [ExplanationOfBenefitItemDetailSubDetail]?
	
	/// Group or type of product or service.
	public var type: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, service: Coding, type: Coding) {
		self.init(json: nil)
		self.sequence = sequence
		self.service = service
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemDetailAdjudication.from(val, owner: self) as? [ExplanationOfBenefitItemDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Quantity(json: val, owner: self)
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
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
			if let exist: AnyObject = js["subDetail"] {
				presentKeys.insert("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ExplanationOfBenefitItemDetailSubDetail.from(val, owner: self) as? [ExplanationOfBenefitItemDetailSubDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "subDetail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
					self.unitPrice = Quantity(json: val, owner: self)
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
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ExplanationOfBenefitItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
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
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = ExplanationOfBenefitItemDetailSubDetail.asJSONArray(subDetail)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
 *  Detail adjudication.
 *
 *  The adjudications results.
 */
public class ExplanationOfBenefitItemDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Additional items.
 *
 *  Third tier of goods and services.
 */
public class ExplanationOfBenefitItemDetailSubDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemDetailSubDetail" }
	}
	
	/// SubDetail adjudication.
	public var adjudication: [ExplanationOfBenefitItemDetailSubDetailAdjudication]?
	
	/// Price scaling factor.
	public var factor: NSDecimalNumber?
	
	/// Net additional item cost.
	public var net: Quantity?
	
	/// Difficulty scaling factor.
	public var points: NSDecimalNumber?
	
	/// Program specific reason for item inclusion.
	public var programCode: [Coding]?
	
	/// Count of Products or Services.
	public var quantity: Quantity?
	
	/// Service instance.
	public var sequence: UInt?
	
	/// Additional item codes.
	public var service: Coding?
	
	/// Type of product or service.
	public var type: Coding?
	
	/// Unique Device Identifier.
	public var udi: [Reference]?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: UInt, service: Coding, type: Coding) {
		self.init(json: nil)
		self.sequence = sequence
		self.service = service
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ExplanationOfBenefitItemDetailSubDetailAdjudication.from(val, owner: self) as? [ExplanationOfBenefitItemDetailSubDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["net"] {
				presentKeys.insert("net")
				if let val = exist as? FHIRJSON {
					self.net = Quantity(json: val, owner: self)
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
			else {
				errors.append(FHIRJSONError(key: "service"))
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
					self.unitPrice = Quantity(json: val, owner: self)
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
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ExplanationOfBenefitItemDetailSubDetailAdjudication.asJSONArray(adjudication)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
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
			json["udi"] = Reference.asJSONArray(udi)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  SubDetail adjudication.
 *
 *  The adjudications results.
 */
public class ExplanationOfBenefitItemDetailSubDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemDetailSubDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Prosthetic details.
 *
 *  The materials and placement date of prior fixed prosthesis.
 */
public class ExplanationOfBenefitItemProsthesis: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitItemProsthesis" }
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
public class ExplanationOfBenefitMissingTeeth: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitMissingTeeth" }
	}
	
	/// Date of Extraction.
	public var extractionDate: Date?
	
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
 *  Processing notes.
 *
 *  Note text.
 */
public class ExplanationOfBenefitNote: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitNote" }
	}
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
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
 *  Condition related Onset related dates and codes.
 *
 *  Period, start and last dates of aspects of the Condition or related services.
 */
public class ExplanationOfBenefitOnset: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitOnset" }
	}
	
	/// Illness, injury or treatable condition date.
	public var timeDate: Date?
	
	/// Illness, injury or treatable condition date.
	public var timePeriod: Period?
	
	/// Onset of what.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["timeDate"] {
				presentKeys.insert("timeDate")
				if let val = exist as? String {
					self.timeDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "timeDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timePeriod"] {
				presentKeys.insert("timePeriod")
				if let val = exist as? FHIRJSON {
					self.timePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
		
		if let timeDate = self.timeDate {
			json["timeDate"] = timeDate.asJSON()
		}
		if let timePeriod = self.timePeriod {
			json["timePeriod"] = timePeriod.asJSON()
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
public class ExplanationOfBenefitPayee: BackboneElement {
	override public class var resourceName: String {
		get { return "ExplanationOfBenefitPayee" }
	}
	
	/// Party to receive the payable.
	public var partyIdentifier: Identifier?
	
	/// Party to receive the payable.
	public var partyReference: Reference?
	
	/// Type of party: Subscriber, Provider, other.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
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
		
		if let partyIdentifier = self.partyIdentifier {
			json["partyIdentifier"] = partyIdentifier.asJSON()
		}
		if let partyReference = self.partyReference {
			json["partyReference"] = partyReference.asJSON()
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
public class ExplanationOfBenefitProcedure: BackboneElement {
	override public class var resourceName: String {
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
public class ExplanationOfBenefitRelated: BackboneElement {
	override public class var resourceName: String {
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

