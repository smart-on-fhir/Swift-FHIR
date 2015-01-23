//
//  Contract.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (contract.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
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
	public var bindingDateTime: DateTime?
	
	/// Domain
	public var domain: [Reference]?
	
	/// Trustee
	public var executor: [Reference]?
	
	/// Price scaling factor
	public var factor: NSDecimalNumber?
	
	/// Human readable contract text
	public var friendly: [Attachment]?
	
	/// Human readable contract text effective time
	public var friendlyDateTime: DateTime?
	
	/// Second Party or delegatee
	public var grantee: [Reference]?
	
	/// First Party or delegator
	public var grantor: [Reference]?
	
	/// Contract identifier
	public var identifier: [Identifier]?
	
	/// When this was issued
	public var issued: DateTime?
	
	/// Legal contract text
	public var legal: [Attachment]?
	
	/// Legal contract text date time
	public var legalDateTime: DateTime?
	
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
	public var ruleDateTime: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["applies"] as? JSONDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["author"] as? [JSONDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["authority"] as? [JSONDictionary] {
				self.authority = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["binding"] as? JSONDictionary {
				self.binding = Attachment(json: val, owner: self)
			}
			if let val = js["bindingDateTime"] as? String {
				self.bindingDateTime = DateTime(string: val)
			}
			if let val = js["domain"] as? [JSONDictionary] {
				self.domain = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["executor"] as? [JSONDictionary] {
				self.executor = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["friendly"] as? [JSONDictionary] {
				self.friendly = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["friendlyDateTime"] as? String {
				self.friendlyDateTime = DateTime(string: val)
			}
			if let val = js["grantee"] as? [JSONDictionary] {
				self.grantee = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["grantor"] as? [JSONDictionary] {
				self.grantor = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["issued"] as? String {
				self.issued = DateTime(string: val)
			}
			if let val = js["legal"] as? [JSONDictionary] {
				self.legal = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["legalDateTime"] as? String {
				self.legalDateTime = DateTime(string: val)
			}
			if let val = js["net"] as? JSONDictionary {
				self.net = Money(json: val, owner: self)
			}
			if let val = js["notary"] as? [JSONDictionary] {
				self.notary = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["points"] as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rule"] as? [JSONDictionary] {
				self.rule = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["ruleDateTime"] as? String {
				self.ruleDateTime = DateTime(string: val)
			}
			if let val = js["signer"] as? [JSONDictionary] {
				self.signer = ContractSigner.from(val, owner: self) as? [ContractSigner]
			}
			if let val = js["subject"] as? [JSONDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["subtype"] as? [JSONDictionary] {
				self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["term"] as? [JSONDictionary] {
				self.term = ContractTerm.from(val, owner: self) as? [ContractTerm]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
			if let val = js["witness"] as? [JSONDictionary] {
				self.witness = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let authority = self.authority {
			json["authority"] = Reference.asJSONArray(authority)
		}
		if let binding = self.binding {
			json["binding"] = binding.asJSON()
		}
		if let bindingDateTime = self.bindingDateTime {
			json["bindingDateTime"] = bindingDateTime.asJSON()
		}
		if let domain = self.domain {
			json["domain"] = Reference.asJSONArray(domain)
		}
		if let executor = self.executor {
			json["executor"] = Reference.asJSONArray(executor)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let friendly = self.friendly {
			json["friendly"] = Attachment.asJSONArray(friendly)
		}
		if let friendlyDateTime = self.friendlyDateTime {
			json["friendlyDateTime"] = friendlyDateTime.asJSON()
		}
		if let grantee = self.grantee {
			json["grantee"] = Reference.asJSONArray(grantee)
		}
		if let grantor = self.grantor {
			json["grantor"] = Reference.asJSONArray(grantor)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let legal = self.legal {
			json["legal"] = Attachment.asJSONArray(legal)
		}
		if let legalDateTime = self.legalDateTime {
			json["legalDateTime"] = legalDateTime.asJSON()
		}
		if let net = self.net {
			json["net"] = net.asJSON()
		}
		if let notary = self.notary {
			json["notary"] = Reference.asJSONArray(notary)
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rule = self.rule {
			json["rule"] = Attachment.asJSONArray(rule)
		}
		if let ruleDateTime = self.ruleDateTime {
			json["ruleDateTime"] = ruleDateTime.asJSON()
		}
		if let signer = self.signer {
			json["signer"] = ContractSigner.asJSONArray(signer)
		}
		if let subject = self.subject {
			json["subject"] = Reference.asJSONArray(subject)
		}
		if let subtype = self.subtype {
			json["subtype"] = CodeableConcept.asJSONArray(subtype)
		}
		if let term = self.term {
			json["term"] = ContractTerm.asJSONArray(term)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		if let witness = self.witness {
			json["witness"] = Reference.asJSONArray(witness)
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["signature"] as? String {
				self.signature = val
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = Coding.from(val, owner: self) as? [Coding]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let signature = self.signature {
			json["signature"] = signature.asJSON()
		}
		if let type = self.type {
			json["type"] = Coding.asJSONArray(type)
		}
		
		return json
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
	public var issued: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["applies"] as? JSONDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = DateTime(string: val)
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
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["subtype"] as? JSONDictionary {
				self.subtype = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
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
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let subtype = self.subtype {
			json["subtype"] = subtype.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}

