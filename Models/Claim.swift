//
//  Claim.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Claim) on 2015-03-25.
//  2015, SMART Platforms.
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
	
	public convenience init(patient: Reference?, type: String?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accident"] as? String {
				self.accident = Date(string: val)
			}
			if let val = js["accidentType"] as? FHIRJSON {
				self.accidentType = Coding(json: val, owner: self)
			}
			if let val = js["additionalMaterials"] as? [FHIRJSON] {
				self.additionalMaterials = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["condition"] as? [FHIRJSON] {
				self.condition = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["coverage"] as? [FHIRJSON] {
				self.coverage = ClaimCoverage.from(val, owner: self) as? [ClaimCoverage]
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["diagnosis"] as? [FHIRJSON] {
				self.diagnosis = ClaimDiagnosis.from(val, owner: self) as? [ClaimDiagnosis]
			}
			if let val = js["enterer"] as? FHIRJSON {
				self.enterer = Reference(json: val, owner: self)
			}
			if let val = js["exception"] as? [FHIRJSON] {
				self.exception = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["facility"] as? FHIRJSON {
				self.facility = Reference(json: val, owner: self)
			}
			if let val = js["fundsReserve"] as? FHIRJSON {
				self.fundsReserve = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["interventionException"] as? [FHIRJSON] {
				self.interventionException = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["item"] as? [FHIRJSON] {
				self.item = ClaimItem.from(val, owner: self) as? [ClaimItem]
			}
			if let val = js["missingTeeth"] as? [FHIRJSON] {
				self.missingTeeth = ClaimMissingTeeth.from(val, owner: self) as? [ClaimMissingTeeth]
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalPrescription"] as? FHIRJSON {
				self.originalPrescription = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["payee"] as? FHIRJSON {
				self.payee = ClaimPayee(json: val, owner: self)
			}
			if let val = js["prescription"] as? FHIRJSON {
				self.prescription = Reference(json: val, owner: self)
			}
			if let val = js["priority"] as? FHIRJSON {
				self.priority = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? FHIRJSON {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["referral"] as? FHIRJSON {
				self.referral = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? FHIRJSON {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["school"] as? String {
				self.school = val
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
		}
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
	public var sequence: Int?
	
	public convenience init(coverage: Reference?, focal: Bool?, relationship: Coding?, sequence: Int?) {
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["businessArrangement"] as? String {
				self.businessArrangement = val
			}
			if let val = js["claimResponse"] as? FHIRJSON {
				self.claimResponse = Reference(json: val, owner: self)
			}
			if let val = js["coverage"] as? FHIRJSON {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["focal"] as? Bool {
				self.focal = val
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["preAuthRef"] as? [String] {
				self.preAuthRef = val
			}
			if let val = js["relationship"] as? FHIRJSON {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
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
	public var sequence: Int?
	
	public convenience init(diagnosis: Coding?, sequence: Int?) {
		self.init(json: nil)
		if nil != diagnosis {
			self.diagnosis = diagnosis
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["diagnosis"] as? FHIRJSON {
				self.diagnosis = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
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
	public var diagnosisLinkId: [Int]?
	
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
	public var sequence: Int?
	
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
	
	public convenience init(sequence: Int?, service: Coding?, type: Coding?) {
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? FHIRJSON {
				self.bodySite = Coding(json: val, owner: self)
			}
			if let val = js["detail"] as? [FHIRJSON] {
				self.detail = ClaimItemDetail.from(val, owner: self) as? [ClaimItemDetail]
			}
			if let val = js["diagnosisLinkId"] as? [Int] {
				self.diagnosisLinkId = val
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["modifier"] as? [FHIRJSON] {
				self.modifier_fhir = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["net"] as? FHIRJSON {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["prosthesis"] as? FHIRJSON {
				self.prosthesis = ClaimItemProsthesis(json: val, owner: self)
			}
			if let val = js["provider"] as? FHIRJSON {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? FHIRJSON {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["serviceDate"] as? String {
				self.serviceDate = Date(string: val)
			}
			if let val = js["subSite"] as? [FHIRJSON] {
				self.subSite = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? FHIRJSON {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? FHIRJSON {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
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
	public var sequence: Int?
	
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
	
	public convenience init(sequence: Int?, service: Coding?, type: Coding?) {
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["net"] as? FHIRJSON {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? FHIRJSON {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["subDetail"] as? [FHIRJSON] {
				self.subDetail = ClaimItemDetailSubDetail.from(val, owner: self) as? [ClaimItemDetailSubDetail]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? FHIRJSON {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? FHIRJSON {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
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
	public var sequence: Int?
	
	/// Additional item codes
	public var service: Coding?
	
	/// Type of product or service
	public var type: Coding?
	
	/// Unique Device Identifier
	public var udi: Coding?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	public convenience init(sequence: Int?, service: Coding?, type: Coding?) {
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["net"] as? FHIRJSON {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? FHIRJSON {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? FHIRJSON {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? FHIRJSON {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["initial"] as? Bool {
				self.initial = val
			}
			if let val = js["priorDate"] as? String {
				self.priorDate = Date(string: val)
			}
			if let val = js["priorMaterial"] as? FHIRJSON {
				self.priorMaterial = Coding(json: val, owner: self)
			}
		}
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
	
	public convenience init(tooth: Coding?) {
		self.init(json: nil)
		if nil != tooth {
			self.tooth = tooth
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["extractionDate"] as? String {
				self.extractionDate = Date(string: val)
			}
			if let val = js["reason"] as? FHIRJSON {
				self.reason = Coding(json: val, owner: self)
			}
			if let val = js["tooth"] as? FHIRJSON {
				self.tooth = Coding(json: val, owner: self)
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["person"] as? FHIRJSON {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["provider"] as? FHIRJSON {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
		}
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

