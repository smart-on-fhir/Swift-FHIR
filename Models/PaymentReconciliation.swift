//
//  PaymentReconciliation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (paymentreconciliation.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
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
	public var created: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = PaymentReconciliationDetail.from(val, owner: self) as? [PaymentReconciliationDetail]
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["form"] as? JSONDictionary {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? [JSONDictionary] {
				self.note = PaymentReconciliationNote.from(val, owner: self) as? [PaymentReconciliationNote]
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
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
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
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["total"] as? JSONDictionary {
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
	public var date: Date?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = Date(string: val)
			}
			if let val = js["payee"] as? JSONDictionary {
				self.payee = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["responce"] as? JSONDictionary {
				self.responce = Reference(json: val, owner: self)
			}
			if let val = js["submitter"] as? JSONDictionary {
				self.submitter = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

