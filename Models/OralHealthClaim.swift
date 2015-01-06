//
//  OralHealthClaim.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (oralhealthclaim.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Claim, Pre-determination or Pre-authorization.
 *
 *  A provider issued list of services and products provided, or to be provided, to a patient which is provided to an
 *  insurer for payment recovery.
 */
public class OralHealthClaim: FHIRResource
{
	override public class var resourceName: String {
		get { return "OralHealthClaim" }
	}
	
	/// Accident Date
	public var accident: NSDate?
	
	/// Accident Type
	public var accidentType: Coding?
	
	/// Additional materials, documents, etc.
	public var additionalMaterials: [Coding]?
	
	/// List of presenting Conditions
	public var condition: [Coding]?
	
	/// Insurance or medical plan
	public var coverage: [OralHealthClaimCoverage]?
	
	/// Creation date
	public var created: NSDate?
	
	/// Diagnosis
	public var diagnosis: [OralHealthClaimDiagnosis]?
	
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
	public var item: [OralHealthClaimItem]?
	
	/// Missing Teeth
	public var missingteeth: [OralHealthClaimMissingteeth]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original specification followed
	public var originalRuleset: Coding?
	
	/// Orthodontic Treatment Plan
	public var orthoPlan: OralHealthClaimOrthoPlan?
	
	/// The subject of the Products and Services
	public var patient: Reference?
	
	/// Payee
	public var payee: OralHealthClaimPayee?
	
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
	
	/// complete | proposed | exploratory | other
	public var use: String?
	
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accident"] as? String {
				self.accident = NSDate(json: val)
			}
			if let val = js["accidentType"] as? JSONDictionary {
				self.accidentType = Coding(json: val, owner: self)
			}
			if let val = js["additionalMaterials"] as? [JSONDictionary] {
				self.additionalMaterials = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["condition"] as? [JSONDictionary] {
				self.condition = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["coverage"] as? [JSONDictionary] {
				self.coverage = OralHealthClaimCoverage.from(val, owner: self) as? [OralHealthClaimCoverage]
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["diagnosis"] as? [JSONDictionary] {
				self.diagnosis = OralHealthClaimDiagnosis.from(val, owner: self) as? [OralHealthClaimDiagnosis]
			}
			if let val = js["enterer"] as? JSONDictionary {
				self.enterer = Reference(json: val, owner: self)
			}
			if let val = js["exception"] as? [JSONDictionary] {
				self.exception = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["facility"] as? JSONDictionary {
				self.facility = Reference(json: val, owner: self)
			}
			if let val = js["fundsReserve"] as? JSONDictionary {
				self.fundsReserve = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["interventionException"] as? [JSONDictionary] {
				self.interventionException = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["item"] as? [JSONDictionary] {
				self.item = OralHealthClaimItem.from(val, owner: self) as? [OralHealthClaimItem]
			}
			if let val = js["missingteeth"] as? [JSONDictionary] {
				self.missingteeth = OralHealthClaimMissingteeth.from(val, owner: self) as? [OralHealthClaimMissingteeth]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["orthoPlan"] as? JSONDictionary {
				self.orthoPlan = OralHealthClaimOrthoPlan(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["payee"] as? JSONDictionary {
				self.payee = OralHealthClaimPayee(json: val, owner: self)
			}
			if let val = js["priority"] as? JSONDictionary {
				self.priority = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["referral"] as? JSONDictionary {
				self.referral = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["school"] as? String {
				self.school = val
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["use"] as? String {
				self.use = val
			}
		}
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class OralHealthClaimCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimCoverage" }
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
	public var preauthref: [String]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["businessArrangement"] as? String {
				self.businessArrangement = val
			}
			if let val = js["claimResponse"] as? JSONDictionary {
				self.claimResponse = Reference(json: val, owner: self)
			}
			if let val = js["coverage"] as? JSONDictionary {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["focal"] as? Bool {
				self.focal = val
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["preauthref"] as? [String] {
				self.preauthref = val
			}
			if let val = js["relationship"] as? JSONDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
	}
}


/**
 *  Diagnosis.
 *
 *  Ordered list of patient diagnosis for which care is sought.
 */
public class OralHealthClaimDiagnosis: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimDiagnosis" }
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["diagnosis"] as? JSONDictionary {
				self.diagnosis = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
	}
}


/**
 *  Goods and Services.
 *
 *  First tier of goods and services.
 */
public class OralHealthClaimItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimItem" }
	}
	
	/// Service Location
	public var bodySite: Coding?
	
	/// Additional items
	public var detail: [OralHealthClaimItemDetail]?
	
	/// Diagnosis Link
	public var diagnosisLinkId: [Int]?
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Service/Product billing modifiers
	public var mod: [Coding]?
	
	/// Total item cost
	public var net: Money?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Prosthetic details
	public var prosthesis: OralHealthClaimItemProsthesis?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Service instance
	public var sequence: Int?
	
	/// Item Code
	public var service: Coding?
	
	/// Date of Service
	public var serviceDate: NSDate?
	
	/// Service Sub-location
	public var subsite: [Coding]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? JSONDictionary {
				self.bodySite = Coding(json: val, owner: self)
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = OralHealthClaimItemDetail.from(val, owner: self) as? [OralHealthClaimItemDetail]
			}
			if let val = js["diagnosisLinkId"] as? [Int] {
				self.diagnosisLinkId = val
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["modifier"] as? [JSONDictionary] {
				self.mod = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["net"] as? JSONDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["prosthesis"] as? JSONDictionary {
				self.prosthesis = OralHealthClaimItemProsthesis(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["serviceDate"] as? String {
				self.serviceDate = NSDate(json: val)
			}
			if let val = js["subsite"] as? [JSONDictionary] {
				self.subsite = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? JSONDictionary {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
}


/**
 *  Additional items.
 *
 *  Second tier of goods and services.
 */
public class OralHealthClaimItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimItemDetail" }
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
	public var subDetail: [OralHealthClaimItemDetailSubDetail]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["net"] as? JSONDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["subDetail"] as? [JSONDictionary] {
				self.subDetail = OralHealthClaimItemDetailSubDetail.from(val, owner: self) as? [OralHealthClaimItemDetailSubDetail]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? JSONDictionary {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
}


/**
 *  Additional items.
 *
 *  Third tier of goods and services.
 */
public class OralHealthClaimItemDetailSubDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimItemDetailSubDetail" }
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["net"] as? JSONDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
			if let val = js["udi"] as? JSONDictionary {
				self.udi = Coding(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
}


/**
 *  Prosthetic details.
 *
 *  The materials and placement date of prior fixed prosthesis.
 */
public class OralHealthClaimItemProsthesis: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimItemProsthesis" }
	}
	
	/// Is this the initial service
	public var initial: Bool?
	
	/// Initial service Date
	public var priorDate: NSDate?
	
	/// Prosthetic Material
	public var priorMaterial: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["initial"] as? Bool {
				self.initial = val
			}
			if let val = js["priorDate"] as? String {
				self.priorDate = NSDate(json: val)
			}
			if let val = js["priorMaterial"] as? JSONDictionary {
				self.priorMaterial = Coding(json: val, owner: self)
			}
		}
	}
}


/**
 *  Missing Teeth.
 *
 *  A list of teeth which would be expected but are not found due to having been previously  extracted or for other
 *  reasons.
 */
public class OralHealthClaimMissingteeth: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimMissingteeth" }
	}
	
	/// Date of Extraction
	public var extractiondate: NSDate?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["extractiondate"] as? String {
				self.extractiondate = NSDate(json: val)
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = Coding(json: val, owner: self)
			}
			if let val = js["tooth"] as? JSONDictionary {
				self.tooth = Coding(json: val, owner: self)
			}
		}
	}
}


/**
 *  Orthodontic Treatment Plan.
 *
 *  The high-level details of an Orthodontic Treatment Plan.
 */
public class OralHealthClaimOrthoPlan: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimOrthoPlan" }
	}
	
	/// Diagnostic phase fee
	public var diagnosticFee: Money?
	
	/// Duration in months
	public var durationMonths: Int?
	
	/// First exam fee
	public var examFee: Money?
	
	/// Initial payment
	public var initialPayment: Money?
	
	/// Anticipated number of payments
	public var paymentCount: Int?
	
	/// Anticipated payment
	public var periodicPayment: Money?
	
	/// Start date
	public var start: NSDate?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["diagnosticFee"] as? JSONDictionary {
				self.diagnosticFee = Money(json: val, owner: self)
			}
			if let val = js["durationMonths"] as? Int {
				self.durationMonths = val
			}
			if let val = js["examFee"] as? JSONDictionary {
				self.examFee = Money(json: val, owner: self)
			}
			if let val = js["initialPayment"] as? JSONDictionary {
				self.initialPayment = Money(json: val, owner: self)
			}
			if let val = js["paymentCount"] as? Int {
				self.paymentCount = val
			}
			if let val = js["periodicPayment"] as? JSONDictionary {
				self.periodicPayment = Money(json: val, owner: self)
			}
			if let val = js["start"] as? String {
				self.start = NSDate(json: val)
			}
		}
	}
}


/**
 *  Payee.
 *
 *  The party to be reimbursed for the services.
 */
public class OralHealthClaimPayee: FHIRElement
{
	override public class var resourceName: String {
		get { return "OralHealthClaimPayee" }
	}
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Party to be paid any benefits payable
	public var type: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["person"] as? JSONDictionary {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

