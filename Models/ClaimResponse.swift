//
//  ClaimResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides the adjudication details from the processing of a Claim resource.
 */
public class ClaimResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date
	public var created: DateTime?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Processing notes
	public var note: [ClaimResponseNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Party to be paid any benefits payable
	public var payeeType: Coding?
	
	/// Payment adjustment for non-Claim issues
	public var paymentAdjustment: Money?
	
	/// Reason for Payment adjustment
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount
	public var paymentAmount: Money?
	
	/// Expected data of Payment
	public var paymentDate: Date?
	
	/// Payment identifier
	public var paymentRef: Identifier?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Unallocated deductable
	public var unallocDeductable: Money?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["addItem"] as? [JSONDictionary] {
				self.addItem = ClaimResponseAddItem.from(val, owner: self) as? [ClaimResponseAddItem]
			}
			if let val = js["coverage"] as? [JSONDictionary] {
				self.coverage = ClaimResponseCoverage.from(val, owner: self) as? [ClaimResponseCoverage]
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["error"] as? [JSONDictionary] {
				self.error = ClaimResponseError.from(val, owner: self) as? [ClaimResponseError]
			}
			if let val = js["form"] as? JSONDictionary {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [JSONDictionary] {
				self.item = ClaimResponseItem.from(val, owner: self) as? [ClaimResponseItem]
			}
			if let val = js["note"] as? [JSONDictionary] {
				self.note = ClaimResponseNote.from(val, owner: self) as? [ClaimResponseNote]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["payeeType"] as? JSONDictionary {
				self.payeeType = Coding(json: val, owner: self)
			}
			if let val = js["paymentAdjustment"] as? JSONDictionary {
				self.paymentAdjustment = Money(json: val, owner: self)
			}
			if let val = js["paymentAdjustmentReason"] as? JSONDictionary {
				self.paymentAdjustmentReason = Coding(json: val, owner: self)
			}
			if let val = js["paymentAmount"] as? JSONDictionary {
				self.paymentAmount = Money(json: val, owner: self)
			}
			if let val = js["paymentDate"] as? String {
				self.paymentDate = Date(string: val)
			}
			if let val = js["paymentRef"] as? JSONDictionary {
				self.paymentRef = Identifier(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["requestOrganization"] as? JSONDictionary {
				self.requestOrganization = Reference(json: val, owner: self)
			}
			if let val = js["requestProvider"] as? JSONDictionary {
				self.requestProvider = Reference(json: val, owner: self)
			}
			if let val = js["reserved"] as? JSONDictionary {
				self.reserved = Coding(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["totalBenefit"] as? JSONDictionary {
				self.totalBenefit = Money(json: val, owner: self)
			}
			if let val = js["totalCost"] as? JSONDictionary {
				self.totalCost = Money(json: val, owner: self)
			}
			if let val = js["unallocDeductable"] as? JSONDictionary {
				self.unallocDeductable = Money(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let addItem = self.addItem {
			json["addItem"] = ClaimResponseAddItem.asJSONArray(addItem)
		}
		if let coverage = self.coverage {
			json["coverage"] = ClaimResponseCoverage.asJSONArray(coverage)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = ClaimResponseError.asJSONArray(error)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = ClaimResponseItem.asJSONArray(item)
		}
		if let note = self.note {
			json["note"] = ClaimResponseNote.asJSONArray(note)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let payeeType = self.payeeType {
			json["payeeType"] = payeeType.asJSON()
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
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON()
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON()
		}
		if let reserved = self.reserved {
			json["reserved"] = reserved.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
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
		
		return json
	}
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
public class ClaimResponseAddItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseAddItemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumberLinkId: [Int]?
	
	/// Service instances
	public var sequenceLinkId: [Int]?
	
	/// Group, Service or Product
	public var service: Coding?
	
	public convenience init(service: Coding?) {
		self.init(json: nil)
		if nil != service {
			self.service = service
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["adjudication"] as? [JSONDictionary] {
				self.adjudication = ClaimResponseAddItemAdjudication.from(val, owner: self) as? [ClaimResponseAddItemAdjudication]
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = ClaimResponseAddItemDetail.from(val, owner: self) as? [ClaimResponseAddItemDetail]
			}
			if let val = js["fee"] as? JSONDictionary {
				self.fee = Money(json: val, owner: self)
			}
			if let val = js["noteNumberLinkId"] as? [Int] {
				self.noteNumberLinkId = val
			}
			if let val = js["sequenceLinkId"] as? [Int] {
				self.sequenceLinkId = val
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseAddItemDetail.asJSONArray(detail)
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
public class ClaimResponseAddItemAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
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
public class ClaimResponseAddItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetail" }
	}
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseAddItemDetailAdjudication]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// Service or Product
	public var service: Coding?
	
	public convenience init(service: Coding?) {
		self.init(json: nil)
		if nil != service {
			self.service = service
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["adjudication"] as? [JSONDictionary] {
				self.adjudication = ClaimResponseAddItemDetailAdjudication.from(val, owner: self) as? [ClaimResponseAddItemDetailAdjudication]
			}
			if let val = js["fee"] as? JSONDictionary {
				self.fee = Money(json: val, owner: self)
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemDetailAdjudication.asJSONArray(adjudication)
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
public class ClaimResponseAddItemDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ClaimResponseCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseCoverage" }
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
			if let val = js["preAuthRef"] as? [String] {
				self.preAuthRef = val
			}
			if let val = js["relationship"] as? JSONDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
 *  Processing errors.
 *
 *  Mutually exclusive with Services Provided (Item).
 */
public class ClaimResponseError: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseError" }
	}
	
	/// Error code detailing processing issues
	public var code: Coding?
	
	/// Detail sequence number
	public var detailSequenceLinkId: Int?
	
	/// Item sequence number
	public var sequenceLinkId: Int?
	
	/// Subdetail sequence number
	public var subdetailSequenceLinkId: Int?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["detailSequenceLinkId"] as? Int {
				self.detailSequenceLinkId = val
			}
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
			if let val = js["subdetailSequenceLinkId"] as? Int {
				self.subdetailSequenceLinkId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let detailSequenceLinkId = self.detailSequenceLinkId {
			json["detailSequenceLinkId"] = detailSequenceLinkId.asJSON()
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subdetailSequenceLinkId = self.subdetailSequenceLinkId {
			json["subdetailSequenceLinkId"] = subdetailSequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Line items.
 *
 *  The first tier service adjudications for submitted services.
 */
public class ClaimResponseItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items
	public var detail: [ClaimResponseItemDetail]?
	
	/// List of note numbers which apply
	public var noteNumber: [Int]?
	
	/// Service instance
	public var sequenceLinkId: Int?
	
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["adjudication"] as? [JSONDictionary] {
				self.adjudication = ClaimResponseItemAdjudication.from(val, owner: self) as? [ClaimResponseItemAdjudication]
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = ClaimResponseItemDetail.from(val, owner: self) as? [ClaimResponseItemDetail]
			}
			if let val = js["noteNumber"] as? [Int] {
				self.noteNumber = val
			}
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseItemDetail.asJSONArray(detail)
		}
		if let noteNumber = self.noteNumber {
			var arr = [AnyObject]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Adjudication details.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Detail line items.
 *
 *  The second tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail adjudication
	public var adjudication: [ClaimResponseItemDetailAdjudication]?
	
	/// Service instance
	public var sequenceLinkId: Int?
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["adjudication"] as? [JSONDictionary] {
				self.adjudication = ClaimResponseItemDetailAdjudication.from(val, owner: self) as? [ClaimResponseItemDetailAdjudication]
			}
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
			if let val = js["subDetail"] as? [JSONDictionary] {
				self.subDetail = ClaimResponseItemDetailSubDetail.from(val, owner: self) as? [ClaimResponseItemDetailSubDetail]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = ClaimResponseItemDetailSubDetail.asJSONArray(subDetail)
		}
		
		return json
	}
}


/**
 *  Detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail line items.
 *
 *  The third tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetailSubDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail adjudication
	public var adjudication: [ClaimResponseItemDetailSubDetailAdjudication]?
	
	/// Service instance
	public var sequenceLinkId: Int?
	
	public convenience init(sequenceLinkId: Int?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["adjudication"] as? [JSONDictionary] {
				self.adjudication = ClaimResponseItemDetailSubDetailAdjudication.from(val, owner: self) as? [ClaimResponseItemDetailSubDetailAdjudication]
			}
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailSubDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailSubDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Processing notes.
 *
 *  Note text.
 */
public class ClaimResponseNote: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseNote" }
	}
	
	/// Note Number for this note
	public var number: Int?
	
	/// Note explanitory text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["number"] as? Int {
				self.number = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

