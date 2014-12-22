//
//  PaymentReconciliation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (paymentreconciliation.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  PaymentReconciliation resource.
 *
 *  This resource provides payment details and claim references supporting a bulk payment.
 */
public class PaymentReconciliation: FHIRResource
{
	override public class var resourceName: String {
		get { return "PaymentReconciliation" }
	}
	
	/// Creation date
	public var created: NSDate?
	
	/// Details
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Note text
	public var note: [PaymentReconciliationNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Period covered
	public var period: Period?
	
	/// Claim reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Total amount of Payment
	public var total: Money?
	
	public convenience init(total: Money?) {
		self.init(json: nil)
		if nil != total {
			self.total = total
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = PaymentReconciliationDetail.from(val, owner: self) as? [PaymentReconciliationDetail]
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["form"] as? NSDictionary {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? [NSDictionary] {
				self.note = PaymentReconciliationNote.from(val, owner: self) as? [PaymentReconciliationNote]
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? NSDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["requestOrganization"] as? NSDictionary {
				self.requestOrganization = Reference(json: val, owner: self)
			}
			if let val = js["requestProvider"] as? NSDictionary {
				self.requestProvider = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["total"] as? NSDictionary {
				self.total = Money(json: val, owner: self)
			}
		}
	}
}


/**
 *  Details.
 *
 *  List of individual settlement amounts and the corresponding transaction.
 */
public class PaymentReconciliationDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Detail amount
	public var amount: Money?
	
	/// Invoice date
	public var date: NSDate?
	
	/// Payee
	public var payee: Reference?
	
	/// Claim
	public var request: Reference?
	
	/// Claim Response
	public var responce: Reference?
	
	/// Submitter
	public var submitter: Reference?
	
	/// Type code
	public var type: Coding?
	
	public convenience init(type: Coding?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? NSDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["payee"] as? NSDictionary {
				self.payee = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["responce"] as? NSDictionary {
				self.responce = Reference(json: val, owner: self)
			}
			if let val = js["submitter"] as? NSDictionary {
				self.submitter = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}


/**
 *  Note text.
 *
 *  Suite of notes.
 */
public class PaymentReconciliationNote: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationNote" }
	}
	
	/// Notes text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

