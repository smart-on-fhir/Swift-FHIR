//
//  Contract.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (contract.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A formal agreement between parties regarding the conduct of business, exchange of information or other matters..
 *
 *  A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
 */
public class Contract: FHIRResource
{
	override public class var resourceName: String {
		get { return "Contract" }
	}
	
	/// Effective time
	public var applies: Period?
	
	/// Contract author or responsible party
	public var author: [Reference]?
	
	/// Authority
	public var authority: [Reference]?
	
	/// Binding Contract
	public var binding: Attachment?
	
	/// Binding Contract effective time
	public var bindingDateTime: NSDate?
	
	/// Domain
	public var domain: [Reference]?
	
	/// Trustee
	public var executor: [Reference]?
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Human readable contract text
	public var friendly: [Attachment]?
	
	/// Human readable contract text effective time
	public var friendlyDateTime: NSDate?
	
	/// Second Party or delegatee
	public var grantee: [Reference]?
	
	/// First Party or delegator
	public var grantor: [Reference]?
	
	/// Contract identifier
	public var identifier: [Identifier]?
	
	/// When this was issued
	public var issued: NSDate?
	
	/// Legal contract text
	public var legal: [Attachment]?
	
	/// Legal contract text date time
	public var legalDateTime: NSDate?
	
	/// Total item cost
	public var net: Money?
	
	/// Notary Public
	public var notary: [Reference]?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Computable contract text
	public var rule: [Attachment]?
	
	/// Computable contract text effect time
	public var ruleDateTime: NSDate?
	
	/// Signer
	public var signer: [ContractSigner]?
	
	/// Subject
	public var subject: [Reference]?
	
	/// Subtype of contract
	public var subtype: [CodeableConcept]?
	
	/// The terms of the Contract
	public var term: [ContractTerm]?
	
	/// Type of contract
	public var type: CodeableConcept?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	/// Witness to the contract
	public var witness: [Reference]?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["applies"] as? NSDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["authority"] as? [NSDictionary] {
				self.authority = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["binding"] as? NSDictionary {
				self.binding = Attachment(json: val, owner: self)
			}
			if let val = js["bindingDateTime"] as? String {
				self.bindingDateTime = NSDate(json: val)
			}
			if let val = js["domain"] as? [NSDictionary] {
				self.domain = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["executor"] as? [NSDictionary] {
				self.executor = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["friendly"] as? [NSDictionary] {
				self.friendly = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["friendlyDateTime"] as? String {
				self.friendlyDateTime = NSDate(json: val)
			}
			if let val = js["grantee"] as? [NSDictionary] {
				self.grantee = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["grantor"] as? [NSDictionary] {
				self.grantor = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["issued"] as? String {
				self.issued = NSDate(json: val)
			}
			if let val = js["legal"] as? [NSDictionary] {
				self.legal = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["legalDateTime"] as? String {
				self.legalDateTime = NSDate(json: val)
			}
			if let val = js["net"] as? NSDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["notary"] as? [NSDictionary] {
				self.notary = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rule"] as? [NSDictionary] {
				self.rule = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["ruleDateTime"] as? String {
				self.ruleDateTime = NSDate(json: val)
			}
			if let val = js["signer"] as? [NSDictionary] {
				self.signer = ContractSigner.from(val, owner: self) as? [ContractSigner]
			}
			if let val = js["subject"] as? [NSDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["subtype"] as? [NSDictionary] {
				self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["term"] as? [NSDictionary] {
				self.term = ContractTerm.from(val, owner: self) as? [ContractTerm]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? NSDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
			if let val = js["witness"] as? [NSDictionary] {
				self.witness = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
}


/**
 *  Signer.
 *
 *  List or contract signatures.
 */
public class ContractSigner: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractSigner" }
	}
	
	/// Documentation Signature
	public var signature: String?
	
	/// Signer Type
	public var type: [Coding]?
	
	public convenience init(signature: String?, type: [Coding]?) {
		self.init(json: nil)
		if nil != signature {
			self.signature = signature
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["signature"] as? String {
				self.signature = val
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = Coding.from(val, owner: self) as? [Coding]
			}
		}
	}
}


/**
 *  The terms of the Contract.
 *
 *  The itemized terms of the contract. The legal clause or conditions of the Contract that requires or prevents either
 *  one or both parties to perform a particular requirement by some specified time.
 */
public class ContractTerm: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractTerm" }
	}
	
	/// When effective
	public var applies: Period?
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Term identifier
	public var identifier: Identifier?
	
	/// When issued
	public var issued: NSDate?
	
	/// Total item cost
	public var net: Money?
	
	/// Difficulty scaling factor
	public var points: NSDecimalNumber?
	
	/// Count of Products or Services
	public var quantity: Quantity?
	
	/// Subject for the Term
	public var subject: Reference?
	
	/// Term subtype
	public var subtype: CodeableConcept?
	
	/// Human readable Term text
	public var text: String?
	
	/// Term type
	public var type: CodeableConcept?
	
	/// Fee, charge or cost per point
	public var unitPrice: Money?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["applies"] as? NSDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = NSDate(json: val)
			}
			if let val = js["net"] as? NSDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["subtype"] as? NSDictionary {
				self.subtype = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? NSDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
}

