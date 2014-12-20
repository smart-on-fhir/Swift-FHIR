//
//  ConsentDirective.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (consentdirective-consentdirective.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  None.
 */
public class ConsentDirective: Contract
{
	override public class var resourceName: String {
		get { return "ConsentDirective" }
	}
	
	/// Effective time of the Consent Directive.
	public var applies: Period?
	
	/// Author of the Consent Directive.
	public var author: [ConsentDirectiveAuthor]?
	
	/// Authority by which this Consent Directive is obtained.
	public var authority: Reference?
	
	/// The legally binding text of the consent directive.
	public var binding: Attachment?
	
	/// The date that the legally binding text was created.
	public var bindingDateTime: NSDate?
	
	/// Organizational Domain for which this Consent Directive applies.
	public var domain: [Reference]?
	
	/// Enforcing agent of the Consent Directive.
	public var executor: [ConsentDirectiveExecutor]?
	
	/// None
	public var factor: ConsentDirectiveFactor?
	
	/// The patient friendly text that represents the meaning of the consent directive.
	public var friendly: [Attachment]?
	
	/// The date that the patient friendly text was created.
	public var friendlyDateTime: NSDate?
	
	/// Consent Directive Grantee or Grantor Delegate (isn't a grantor delegate by definition the grantee?).
	public var grantee: [ConsentDirectiveGrantee]?
	
	/// Consenter, Deegator, or Substitute Decision Maker.
	public var grantor: [ConsentDirectiveGrantor]?
	
	/// Unique Identifier of this Consent Directive.
	public var identifier: Identifier?
	
	/// When the Consent Directive was issued.
	public var issued: NSDate?
	
	/// The legal language of the consent directive.
	public var legal: [Attachment]?
	
	/// The date that the legal text was created.
	public var legalDateTime: NSDate?
	
	/// None
	public var net: ConsentDirectiveNet?
	
	/// Notary Public that witness the consent directive (How is this not just a type of witness?).
	public var notary: [ConsentDirectiveNotary]?
	
	/// None
	public var points: ConsentDirectivePoints?
	
	/// None
	public var quantity: ConsentDirectiveQuantity?
	
	/// Computer processable rules that represent the consent directive meaning.
	public var rule: [Attachment]?
	
	/// The date that the computer processable rules were published.
	public var ruleDateTime: NSDate?
	
	/// Digital signature across the consent.
	public var signer: [ConsentDirectiveSigner]?
	
	/// Subject of this Consent Directive (The Patient).
	public var subject: [Reference]?
	
	/// Subtype of the Consent Directive.
	public var subtype: [CodeableConcept]?
	
	/// The terms of the consent directive.
	public var term: [Terms]?
	
	/// Type of Consent Directive (I presume this is going to be a fixed value?).
	public var type: CodeableConcept?
	
	/// None
	public var unitPrice: ConsentDirectiveUnitPrice?
	
	/// Witness to the Consent Directive.
	public var witness: [ConsentDirectiveWitness]?
	
	public convenience init(grantee: [ConsentDirectiveGrantee]?, grantor: [ConsentDirectiveGrantor]?, issued: NSDate?, subject: [Reference]?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != grantee {
			self.grantee = grantee
		}
		if nil != grantor {
			self.grantor = grantor
		}
		if nil != issued {
			self.issued = issued
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["applies"] as? NSDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = ConsentDirectiveAuthor.from(val, owner: self) as? [ConsentDirectiveAuthor]
			}
			if let val = js["authority"] as? NSDictionary {
				self.authority = Reference(json: val, owner: self)
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
				self.executor = ConsentDirectiveExecutor.from(val, owner: self) as? [ConsentDirectiveExecutor]
			}
			if let val = js["factor"] as? NSDictionary {
				self.factor = ConsentDirectiveFactor(json: val, owner: self)
			}
			if let val = js["friendly"] as? [NSDictionary] {
				self.friendly = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["friendlyDateTime"] as? String {
				self.friendlyDateTime = NSDate(json: val)
			}
			if let val = js["grantee"] as? [NSDictionary] {
				self.grantee = ConsentDirectiveGrantee.from(val, owner: self) as? [ConsentDirectiveGrantee]
			}
			if let val = js["grantor"] as? [NSDictionary] {
				self.grantor = ConsentDirectiveGrantor.from(val, owner: self) as? [ConsentDirectiveGrantor]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
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
				self.net = ConsentDirectiveNet(json: val, owner: self)
			}
			if let val = js["notary"] as? [NSDictionary] {
				self.notary = ConsentDirectiveNotary.from(val, owner: self) as? [ConsentDirectiveNotary]
			}
			if let val = js["points"] as? NSDictionary {
				self.points = ConsentDirectivePoints(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = ConsentDirectiveQuantity(json: val, owner: self)
			}
			if let val = js["rule"] as? [NSDictionary] {
				self.rule = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["ruleDateTime"] as? String {
				self.ruleDateTime = NSDate(json: val)
			}
			if let val = js["signer"] as? [NSDictionary] {
				self.signer = ConsentDirectiveSigner.from(val, owner: self) as? [ConsentDirectiveSigner]
			}
			if let val = js["subject"] as? [NSDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["subtype"] as? [NSDictionary] {
				self.subtype = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["term"] as? [NSDictionary] {
				self.term = Terms.from(val, owner: self) as? [Terms]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitPrice"] as? NSDictionary {
				self.unitPrice = ConsentDirectiveUnitPrice(json: val, owner: self)
			}
			if let val = js["witness"] as? [NSDictionary] {
				self.witness = ConsentDirectiveWitness.from(val, owner: self) as? [ConsentDirectiveWitness]
			}
		}
	}
}


/**
 *  Digital signature across the consent..
 *
 *  Digital signature across the consent.
 */
public class ConsentDirectiveSigner: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConsentDirectiveSigner" }
	}
	
	/// The Digital-Signature block in base64 encoding of the XML-Signature format.
	public var signature: String?
	
	/// Type  of digital signature, duplicate of type of digital signature found within the signature block.
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
 *  The terms of the consent directive..
 *
 *  The terms of the consent directive.
 */
public class ConsentDirectiveTerm: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConsentDirectiveTerm" }
	}
	
	/// The effective date over which the consent directive term applies.
	public var applies: Period?
	
	/// None
	public var factor: NSDecimalNumber?
	
	/// The identifier of this term of the consent directive.
	public var identifier: Identifier?
	
	/// The consent directive term date issued.
	public var issued: NSDate?
	
	/// None
	public var net: Money?
	
	/// None
	public var points: NSDecimalNumber?
	
	/// None
	public var quantity: Quantity?
	
	/// The consent directive term subject.
	public var subject: Reference?
	
	/// The consent directive term sub-type.
	public var subtype: CodeableConcept?
	
	/// The consent directive term in a human readable  text.
	public var text: String?
	
	/// The consent directive term type.
	public var type: CodeableConcept?
	
	/// None
	public var unitPrice: Money?
	
	public convenience init(applies: Period?, issued: NSDate?, subject: Reference?) {
		self.init(json: nil)
		if nil != applies {
			self.applies = applies
		}
		if nil != issued {
			self.issued = issued
		}
		if nil != subject {
			self.subject = subject
		}
	}	

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

