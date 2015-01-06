//
//  ClaimResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (claimresponse.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides the adjudication details from the processing of a Claim resource.
 */
public class ClaimResponse: FHIRResource
{
	override public class var resourceName: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items
	public var additem: [ClaimResponseAdditem]?
	
	/// Creation date
	public var created: NSDate?
	
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
	public var paymentDate: NSDate?
	
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
			if let val = js["additem"] as? [JSONDictionary] {
				self.additem = ClaimResponseAdditem.from(val, owner: self) as? [ClaimResponseAdditem]
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
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
				self.paymentDate = NSDate(json: val)
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
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
public class ClaimResponseAdditem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAdditem" }
	}
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseAdditemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAdditemDetail]?
	
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
				self.adjudication = ClaimResponseAdditemAdjudication.from(val, owner: self) as? [ClaimResponseAdditemAdjudication]
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = ClaimResponseAdditemDetail.from(val, owner: self) as? [ClaimResponseAdditemDetail]
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
}


/**
 *  Added items adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAdditemAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAdditemAdjudication" }
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
}


/**
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
public class ClaimResponseAdditemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAdditemDetail" }
	}
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseAdditemDetailAdjudication]?
	
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
				self.adjudication = ClaimResponseAdditemDetailAdjudication.from(val, owner: self) as? [ClaimResponseAdditemDetailAdjudication]
			}
			if let val = js["fee"] as? JSONDictionary {
				self.fee = Money(json: val, owner: self)
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = Coding(json: val, owner: self)
			}
		}
	}
}


/**
 *  Added items detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAdditemDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAdditemDetailAdjudication" }
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
	public var subdetail: [ClaimResponseItemDetailSubdetail]?
	
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
			if let val = js["subdetail"] as? [JSONDictionary] {
				self.subdetail = ClaimResponseItemDetailSubdetail.from(val, owner: self) as? [ClaimResponseItemDetailSubdetail]
			}
		}
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
}


/**
 *  Subdetail line items.
 *
 *  The third tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetailSubdetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubdetail" }
	}
	
	/// Subdetail adjudication
	public var adjudication: [ClaimResponseItemDetailSubdetailAdjudication]?
	
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
				self.adjudication = ClaimResponseItemDetailSubdetailAdjudication.from(val, owner: self) as? [ClaimResponseItemDetailSubdetailAdjudication]
			}
			if let val = js["sequenceLinkId"] as? Int {
				self.sequenceLinkId = val
			}
		}
	}
}


/**
 *  Subdetail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailSubdetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubdetailAdjudication" }
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
}

