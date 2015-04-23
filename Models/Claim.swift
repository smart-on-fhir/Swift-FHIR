//
//  Claim.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Claim) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Claim, Pre-determination or Pre-authorization.
 *
 *  A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 *  insurer for payment recovery.
 */
public class Claim: DomainResource
{
	override public class var resourceName: String {
		get { return "Claim" }
	}
	
	/// Accident Date
	public var accident: Date?
	
	/// Accident Type
	public var accidentType: Coding?
	
	/// Additional materials, documents, etc.
	public var additionalMaterials: [Coding]?
	
	/// List of presenting Conditions
	public var condition: [Coding]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimCoverage]?
	
	/// Creation date
	public var created: DateTime?
	
	/// Diagnosis
	public var diagnosis: [ClaimDiagnosis]?
	
	/// Author
	public var enterer: Reference?
	
	/// Eligibility exceptions
	public var exception: [Coding]?
	
	/// Servicing Facility
	public var facility: Reference?
	
	/// Funds requested to be reserved
	public var fundsReserve: Coding?
	
	/// Claim number
	public var identifier: [Identifier]?
	
	/// Intervention and exception code (Pharma)
	public var interventionException: [Coding]?
	
	/// Goods and Services
	public var item: [ClaimItem]?
	
	/// Only if type = oral
	public var missingTeeth: [ClaimMissingTeeth]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original Prescription
	public var originalPrescription: Reference?
	
	/// Original specification followed
	public var originalRuleset: Coding?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Payee
	public var payee: ClaimPayee?
	
	/// Prescription
	public var prescription: Reference?
	
	/// Desired processing priority
	public var priority: Coding?
	
	/// Responsible provider
	public var provider: Reference?
	
	/// Treatment Referral
	public var referral: Reference?
	
	/// Current specification followed
	public var ruleset: Coding?
	
	/// Name of School
	public var school: String?
	
	/// Insurer
	public var target: Reference?
	
	/// institutional | oral | pharmacy | professional | vision
	public var type: String?
	
	/// complete | proposed | exploratory | other
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, type: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["accident"] {
				presentKeys.addObject("accident")
				if let val = exist as? String {
					self.accident = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"accident\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["accidentType"] {
				presentKeys.addObject("accidentType")
				if let val = exist as? FHIRJSON {
					self.accidentType = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"accidentType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["additionalMaterials"] {
				presentKeys.addObject("additionalMaterials")
				if let val = exist as? [FHIRJSON] {
					self.additionalMaterials = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additionalMaterials\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.addObject("condition")
				if let val = exist as? [FHIRJSON] {
					self.condition = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"condition\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.addObject("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = ClaimCoverage.from(val, owner: self) as? [ClaimCoverage]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"coverage\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["diagnosis"] {
				presentKeys.addObject("diagnosis")
				if let val = exist as? [FHIRJSON] {
					self.diagnosis = ClaimDiagnosis.from(val, owner: self) as? [ClaimDiagnosis]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"diagnosis\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["enterer"] {
				presentKeys.addObject("enterer")
				if let val = exist as? FHIRJSON {
					self.enterer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"enterer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exception"] {
				presentKeys.addObject("exception")
				if let val = exist as? [FHIRJSON] {
					self.exception = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exception\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["facility"] {
				presentKeys.addObject("facility")
				if let val = exist as? FHIRJSON {
					self.facility = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"facility\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fundsReserve"] {
				presentKeys.addObject("fundsReserve")
				if let val = exist as? FHIRJSON {
					self.fundsReserve = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fundsReserve\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["interventionException"] {
				presentKeys.addObject("interventionException")
				if let val = exist as? [FHIRJSON] {
					self.interventionException = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"interventionException\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ClaimItem.from(val, owner: self) as? [ClaimItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["missingTeeth"] {
				presentKeys.addObject("missingTeeth")
				if let val = exist as? [FHIRJSON] {
					self.missingTeeth = ClaimMissingTeeth.from(val, owner: self) as? [ClaimMissingTeeth]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"missingTeeth\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.addObject("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"organization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["originalPrescription"] {
				presentKeys.addObject("originalPrescription")
				if let val = exist as? FHIRJSON {
					self.originalPrescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalPrescription\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.addObject("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalRuleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["payee"] {
				presentKeys.addObject("payee")
				if let val = exist as? FHIRJSON {
					self.payee = ClaimPayee(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payee\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prescription"] {
				presentKeys.addObject("prescription")
				if let val = exist as? FHIRJSON {
					self.prescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prescription\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.addObject("priority")
				if let val = exist as? FHIRJSON {
					self.priority = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priority\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["provider"] {
				presentKeys.addObject("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"provider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referral"] {
				presentKeys.addObject("referral")
				if let val = exist as? FHIRJSON {
					self.referral = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referral\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.addObject("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ruleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["school"] {
				presentKeys.addObject("school")
				if let val = exist as? String {
					self.school = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"school\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.addObject("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"use\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let accident = self.accident {
			json["accident"] = accident.asJSON()
		}
		if let accidentType = self.accidentType {
			json["accidentType"] = accidentType.asJSON()
		}
		if let additionalMaterials = self.additionalMaterials {
			json["additionalMaterials"] = Coding.asJSONArray(additionalMaterials)
		}
		if let condition = self.condition {
			json["condition"] = Coding.asJSONArray(condition)
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
		if let enterer = self.enterer {
			json["enterer"] = enterer.asJSON()
		}
		if let exception = self.exception {
			json["exception"] = Coding.asJSONArray(exception)
		}
		if let facility = self.facility {
			json["facility"] = facility.asJSON()
		}
		if let fundsReserve = self.fundsReserve {
			json["fundsReserve"] = fundsReserve.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let interventionException = self.interventionException {
			json["interventionException"] = Coding.asJSONArray(interventionException)
		}
		if let item = self.item {
			json["item"] = ClaimItem.asJSONArray(item)
		}
		if let missingTeeth = self.missingTeeth {
			json["missingTeeth"] = ClaimMissingTeeth.asJSONArray(missingTeeth)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalPrescription = self.originalPrescription {
			json["originalPrescription"] = originalPrescription.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON()
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let referral = self.referral {
			json["referral"] = referral.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let school = self.school {
			json["school"] = school.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
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
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ClaimCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimCoverage" }
	}
	
	/// Business agreement
	public var businessArrangement: String?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Is the focal Coverage
	public var focal: Bool?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [String]?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Service instance identifier
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(coverage: Reference?, focal: Bool?, relationship: Coding?, sequence: UInt?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != focal {
			self.focal = focal
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["businessArrangement"] {
				presentKeys.addObject("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"businessArrangement\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["claimResponse"] {
				presentKeys.addObject("claimResponse")
				if let val = exist as? FHIRJSON {
					self.claimResponse = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"claimResponse\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.addObject("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"coverage\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"coverage\" but it is missing"))
			}
			if let exist: AnyObject = js["focal"] {
				presentKeys.addObject("focal")
				if let val = exist as? Bool {
					self.focal = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"focal\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"focal\" but it is missing"))
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.addObject("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalRuleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["preAuthRef"] {
				presentKeys.addObject("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"preAuthRef\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.addObject("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relationship\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"relationship\" but it is missing"))
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
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
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
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
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
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
public class ClaimDiagnosis: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimDiagnosis" }
	}
	
	/// Patient's list of diagnosis
	public var diagnosis: Coding?
	
	/// Sequence of diagnosis
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(diagnosis: Coding?, sequence: UInt?) {
		self.init(json: nil)
		if nil != diagnosis {
			self.diagnosis = diagnosis
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["diagnosis"] {
				presentKeys.addObject("diagnosis")
				if let val = exist as? FHIRJSON {
					self.diagnosis = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"diagnosis\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"diagnosis\" but it is missing"))
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
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
public class ClaimItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimItem" }
	}
	
	/// Service Location
	public var bodySite: Coding?
	
	/// Additional items
	public var detail: [ClaimItemDetail]?
	
	/// Diagnosis Link
	public var diagnosisLinkId: [UInt]?
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers
	public var modifier_fhir: [Coding]?
	
	/// Total item cost
	public var net: Money?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Prosthetic details
	public var prosthesis: ClaimItemProsthesis?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: UInt?
	
	/// Item Code
	public var service: Coding?
	
	/// Date of Service
	public var serviceDate: Date?
	
	/// Service Sub-location
	public var subSite: [Coding]?
	
	/// Group or type of product or service
	public var type: Coding?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequence: UInt?, service: Coding?, type: Coding?) {
		self.init(json: nil)
		if nil != sequence {
			self.sequence = sequence
		}
		if nil != service {
			self.service = service
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bodySite"] {
				presentKeys.addObject("bodySite")
				if let val = exist as? FHIRJSON {
					self.bodySite = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySite\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimItemDetail.from(val, owner: self) as? [ClaimItemDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["diagnosisLinkId"] {
				presentKeys.addObject("diagnosisLinkId")
				if let val = exist as? [UInt] {
					self.diagnosisLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"diagnosisLinkId\" to be an array of `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.addObject("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier_fhir = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.addObject("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"net\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.addObject("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"points\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prosthesis"] {
				presentKeys.addObject("prosthesis")
				if let val = exist as? FHIRJSON {
					self.prosthesis = ClaimItemProsthesis(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prosthesis\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["provider"] {
				presentKeys.addObject("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"provider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"service\" but it is missing"))
			}
			if let exist: AnyObject = js["serviceDate"] {
				presentKeys.addObject("serviceDate")
				if let val = exist as? String {
					self.serviceDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"serviceDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subSite"] {
				presentKeys.addObject("subSite")
				if let val = exist as? [FHIRJSON] {
					self.subSite = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subSite\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.addObject("udi")
				if let val = exist as? FHIRJSON {
					self.udi = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"udi\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.addObject("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unitPrice\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let modifier_fhir = self.modifier_fhir {
			json["modifier"] = Coding.asJSONArray(modifier_fhir)
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let prosthesis = self.prosthesis {
			json["prosthesis"] = prosthesis.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
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
		if let serviceDate = self.serviceDate {
			json["serviceDate"] = serviceDate.asJSON()
		}
		if let subSite = self.subSite {
			json["subSite"] = Coding.asJSONArray(subSite)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.asJSON()
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
 *  Second tier of goods and services.
 */
public class ClaimItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimItemDetail" }
	}
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Total additional item cost
	public var net: Money?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: UInt?
	
	/// Additional item codes
	public var service: Coding?
	
	/// Additional items
	public var subDetail: [ClaimItemDetailSubDetail]?
	
	/// Group or type of product or service
	public var type: Coding?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequence: UInt?, service: Coding?, type: Coding?) {
		self.init(json: nil)
		if nil != sequence {
			self.sequence = sequence
		}
		if nil != service {
			self.service = service
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.addObject("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"net\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.addObject("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"points\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"service\" but it is missing"))
			}
			if let exist: AnyObject = js["subDetail"] {
				presentKeys.addObject("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ClaimItemDetailSubDetail.from(val, owner: self) as? [ClaimItemDetailSubDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subDetail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.addObject("udi")
				if let val = exist as? FHIRJSON {
					self.udi = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"udi\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.addObject("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unitPrice\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
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
			json["subDetail"] = ClaimItemDetailSubDetail.asJSONArray(subDetail)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.asJSON()
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
public class ClaimItemDetailSubDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimItemDetailSubDetail" }
	}
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Net additional item cost
	public var net: Money?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: UInt?
	
	/// Additional item codes
	public var service: Coding?
	
	/// Type of product or service
	public var type: Coding?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequence: UInt?, service: Coding?, type: Coding?) {
		self.init(json: nil)
		if nil != sequence {
			self.sequence = sequence
		}
		if nil != service {
			self.service = service
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.addObject("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"net\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.addObject("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"points\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"service\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.addObject("udi")
				if let val = exist as? FHIRJSON {
					self.udi = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"udi\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.addObject("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unitPrice\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let points = self.points {
			json["points"] = points.asJSON()
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
			json["udi"] = udi.asJSON()
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
public class ClaimItemProsthesis: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimItemProsthesis" }
	}
	
	/// Is this the initial service
	public var initial: Bool?
	
	/// Initial service Date
	public var priorDate: Date?
	
	/// Prosthetic Material
	public var priorMaterial: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["initial"] {
				presentKeys.addObject("initial")
				if let val = exist as? Bool {
					self.initial = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"initial\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priorDate"] {
				presentKeys.addObject("priorDate")
				if let val = exist as? String {
					self.priorDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priorDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priorMaterial"] {
				presentKeys.addObject("priorMaterial")
				if let val = exist as? FHIRJSON {
					self.priorMaterial = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priorMaterial\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
public class ClaimMissingTeeth: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimMissingTeeth" }
	}
	
	/// Date of Extraction
	public var extractionDate: Date?
	
	/// Reason for missing
	public var reason: Coding?
	
	/// Tooth Code
	public var tooth: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(tooth: Coding?) {
		self.init(json: nil)
		if nil != tooth {
			self.tooth = tooth
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["extractionDate"] {
				presentKeys.addObject("extractionDate")
				if let val = exist as? String {
					self.extractionDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"extractionDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.addObject("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["tooth"] {
				presentKeys.addObject("tooth")
				if let val = exist as? FHIRJSON {
					self.tooth = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"tooth\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"tooth\" but it is missing"))
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
 *  Payee.
 *
 *  The party to be reimbursed for the services.
 */
public class ClaimPayee: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimPayee" }
	}
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Party to be paid any benefits payable
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["organization"] {
				presentKeys.addObject("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"organization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["person"] {
				presentKeys.addObject("person")
				if let val = exist as? FHIRJSON {
					self.person = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"person\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["provider"] {
				presentKeys.addObject("provider")
				if let val = exist as? FHIRJSON {
					self.provider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"provider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let person = self.person {
			json["person"] = person.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

