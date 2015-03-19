//
//  Contract.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Contract) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Contract.
 *
 *  A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
 */
public class Contract: DomainResource
{
	override public class var resourceName: String {
		get { return "Contract" }
	}
	
	/// Contract Action
	public var action: [CodeableConcept]?
	
	/// Contract Action Reason
	public var actionReason: [CodeableConcept]?
	
	/// Contract Actor
	public var actor: [ContractActor]?
	
	/// Effective time
	public var applies: Period?
	
	/// Authority under which this Contract has standing
	public var authority: [Reference]?
	
	/// Binding Contract
	public var bindingAttachment: Attachment?
	
	/// Binding Contract
	public var bindingReference: Reference?
	
	/// Domain in which this Contract applies
	public var domain: [Reference]?
	
	/// Contract Friendly Language
	public var friendly: [ContractFriendly]?
	
	/// Contract identifier
	public var identifier: Identifier?
	
	/// When this Contract was issued
	public var issued: DateTime?
	
	/// Contract Legal Language
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language
	public var rule: [ContractRule]?
	
	/// Contract Signer
	public var signer: [ContractSigner]?
	
	/// Contract Subtype
	public var subType: [CodeableConcept]?
	
	/// Subject of this Contract
	public var subject: [Reference]?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Contract Tyoe
	public var type: CodeableConcept?
	
	/// Contract Valued Item
	public var valuedItem: [ContractValuedItem]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? [JSONDictionary] {
				self.action = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["actionReason"] as? [JSONDictionary] {
				self.actionReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["actor"] as? [JSONDictionary] {
				self.actor = ContractActor.from(val, owner: self) as? [ContractActor]
			}
			if let val = js["applies"] as? JSONDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["authority"] as? [JSONDictionary] {
				self.authority = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["bindingAttachment"] as? JSONDictionary {
				self.bindingAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["bindingReference"] as? JSONDictionary {
				self.bindingReference = Reference(json: val, owner: self)
			}
			if let val = js["domain"] as? [JSONDictionary] {
				self.domain = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["friendly"] as? [JSONDictionary] {
				self.friendly = ContractFriendly.from(val, owner: self) as? [ContractFriendly]
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = DateTime(string: val)
			}
			if let val = js["legal"] as? [JSONDictionary] {
				self.legal = ContractLegal.from(val, owner: self) as? [ContractLegal]
			}
			if let val = js["rule"] as? [JSONDictionary] {
				self.rule = ContractRule.from(val, owner: self) as? [ContractRule]
			}
			if let val = js["signer"] as? [JSONDictionary] {
				self.signer = ContractSigner.from(val, owner: self) as? [ContractSigner]
			}
			if let val = js["subType"] as? [JSONDictionary] {
				self.subType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["subject"] as? [JSONDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["term"] as? [JSONDictionary] {
				self.term = ContractTerm.from(val, owner: self) as? [ContractTerm]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valuedItem"] as? [JSONDictionary] {
				self.valuedItem = ContractValuedItem.from(val, owner: self) as? [ContractValuedItem]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = CodeableConcept.asJSONArray(action)
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = CodeableConcept.asJSONArray(actionReason)
		}
		if let actor = self.actor {
			json["actor"] = ContractActor.asJSONArray(actor)
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let authority = self.authority {
			json["authority"] = Reference.asJSONArray(authority)
		}
		if let bindingAttachment = self.bindingAttachment {
			json["bindingAttachment"] = bindingAttachment.asJSON()
		}
		if let bindingReference = self.bindingReference {
			json["bindingReference"] = bindingReference.asJSON()
		}
		if let domain = self.domain {
			json["domain"] = Reference.asJSONArray(domain)
		}
		if let friendly = self.friendly {
			json["friendly"] = ContractFriendly.asJSONArray(friendly)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let legal = self.legal {
			json["legal"] = ContractLegal.asJSONArray(legal)
		}
		if let rule = self.rule {
			json["rule"] = ContractRule.asJSONArray(rule)
		}
		if let signer = self.signer {
			json["signer"] = ContractSigner.asJSONArray(signer)
		}
		if let subType = self.subType {
			json["subType"] = CodeableConcept.asJSONArray(subType)
		}
		if let subject = self.subject {
			json["subject"] = Reference.asJSONArray(subject)
		}
		if let term = self.term {
			json["term"] = ContractTerm.asJSONArray(term)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = ContractValuedItem.asJSONArray(valuedItem)
		}
		
		return json
	}
}


/**
 *  Contract Actor.
 *
 *  List of Contract actors.
 */
public class ContractActor: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractActor" }
	}
	
	/// Contract Actor Type
	public var entity: Reference?
	
	/// Contract  Actor Role
	public var role: [CodeableConcept]?
	
	public convenience init(entity: Reference?) {
		self.init(json: nil)
		if nil != entity {
			self.entity = entity
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["entity"] as? JSONDictionary {
				self.entity = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? [JSONDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let entity = self.entity {
			json["entity"] = entity.asJSON()
		}
		if let role = self.role {
			json["role"] = CodeableConcept.asJSONArray(role)
		}
		
		return json
	}
}


/**
 *  Contract Friendly Language.
 *
 *  The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the
 *  representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by
 *  a layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing
 *  the Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
 */
public class ContractFriendly: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractFriendly" }
	}
	
	/// Easily comprehended representation of this Contract
	public var contentAttachment: Attachment?
	
	/// Easily comprehended representation of this Contract
	public var contentReference: Reference?
	
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? JSONDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? JSONDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Legal Language.
 *
 *  List of Legal expressions or representations of this Contract.
 */
public class ContractLegal: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractLegal" }
	}
	
	/// Contract Legal Text
	public var contentAttachment: Attachment?
	
	/// Contract Legal Text
	public var contentReference: Reference?
	
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? JSONDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? JSONDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Computable Contract Language.
 *
 *  List of Computable Policy Rule Language Representations of this Contract.
 */
public class ContractRule: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractRule" }
	}
	
	/// Computable Contract Rules
	public var contentAttachment: Attachment?
	
	/// Computable Contract Rules
	public var contentReference: Reference?
	
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? JSONDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? JSONDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Signer.
 *
 *  Party signing this Contract.
 */
public class ContractSigner: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractSigner" }
	}
	
	/// Contract Signatory Party
	public var party: Reference?
	
	/// Contract Documentation Signature
	public var signature: String?
	
	/// Contract Signer Type
	public var type: Coding?
	
	public convenience init(party: Reference?, signature: String?, type: Coding?) {
		self.init(json: nil)
		if nil != party {
			self.party = party
		}
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
			if let val = js["party"] as? JSONDictionary {
				self.party = Reference(json: val, owner: self)
			}
			if let val = js["signature"] as? String {
				self.signature = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let party = self.party {
			json["party"] = party.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = signature.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Term List.
 *
 *  One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
 */
public class ContractTerm: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractTerm" }
	}
	
	/// Contract Term Action
	public var action: [CodeableConcept]?
	
	/// Contract Term Action Reason
	public var actionReason: [CodeableConcept]?
	
	/// Contract Term Actor List
	public var actor: [ContractTermActor]?
	
	/// Contract Term Effective Time
	public var applies: Period?
	
	/// Contract Term identifier
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: DateTime?
	
	/// Contract Term Subtype
	public var subType: CodeableConcept?
	
	/// Subject of this Contract Term
	public var subject: Reference?
	
	/// Contract Term List
	public var term: [ContractTerm]?
	
	/// Human readable Contract term text
	public var text: String?
	
	/// Contract Term Type
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item
	public var valuedItem: [ContractTermValuedItem]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? [JSONDictionary] {
				self.action = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["actionReason"] as? [JSONDictionary] {
				self.actionReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["actor"] as? [JSONDictionary] {
				self.actor = ContractTermActor.from(val, owner: self) as? [ContractTermActor]
			}
			if let val = js["applies"] as? JSONDictionary {
				self.applies = Period(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["issued"] as? String {
				self.issued = DateTime(string: val)
			}
			if let val = js["subType"] as? JSONDictionary {
				self.subType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["term"] as? [JSONDictionary] {
				self.term = ContractTerm.from(val, owner: self) as? [ContractTerm]
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valuedItem"] as? [JSONDictionary] {
				self.valuedItem = ContractTermValuedItem.from(val, owner: self) as? [ContractTermValuedItem]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = CodeableConcept.asJSONArray(action)
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = CodeableConcept.asJSONArray(actionReason)
		}
		if let actor = self.actor {
			json["actor"] = ContractTermActor.asJSONArray(actor)
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = subType.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let term = self.term {
			json["term"] = ContractTerm.asJSONArray(term)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = ContractTermValuedItem.asJSONArray(valuedItem)
		}
		
		return json
	}
}


/**
 *  Contract Term Actor List.
 *
 *  List of actors participating in this Contract Provision.
 */
public class ContractTermActor: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractTermActor" }
	}
	
	/// Contract Term Actor
	public var entity: Reference?
	
	/// Contract Term Actor Role
	public var role: [CodeableConcept]?
	
	public convenience init(entity: Reference?) {
		self.init(json: nil)
		if nil != entity {
			self.entity = entity
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["entity"] as? JSONDictionary {
				self.entity = Reference(json: val, owner: self)
			}
			if let val = js["role"] as? [JSONDictionary] {
				self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let entity = self.entity {
			json["entity"] = entity.asJSON()
		}
		if let role = self.role {
			json["role"] = CodeableConcept.asJSONArray(role)
		}
		
		return json
	}
}


/**
 *  Contract Term Valued Item.
 *
 *  Contract Provision Valued Item List.
 */
public class ContractTermValuedItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractTermValuedItem" }
	}
	
	/// Contract Term Valued Item Effective Tiem
	public var effectiveTime: DateTime?
	
	/// Contract Term Valued Item Type
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Term Valued Item Type
	public var entityReference: Reference?
	
	/// Contract Term Valued Item Price Scaling Factor
	public var factor: NSDecimalNumber?
	
	/// Contract Term Valued Item Identifier
	public var identifier: Identifier?
	
	/// Total Contract Term Valued Item Value
	public var net: Money?
	
	/// Contract Term Valued Item Difficulty Scaling Factor
	public var points: NSDecimalNumber?
	
	/// Contract Term Valued Item Count
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost
	public var unitPrice: Money?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["effectiveTime"] as? String {
				self.effectiveTime = DateTime(string: val)
			}
			if let val = js["entityCodeableConcept"] as? JSONDictionary {
				self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["entityReference"] as? JSONDictionary {
				self.entityReference = Reference(json: val, owner: self)
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
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
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON()
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
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
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}


/**
 *  Contract Valued Item.
 *
 *  Contract Valued Item List.
 */
public class ContractValuedItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContractValuedItem" }
	}
	
	/// Contract Valued Item Effective Tiem
	public var effectiveTime: DateTime?
	
	/// Contract Valued Item Type
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Valued Item Type
	public var entityReference: Reference?
	
	/// Contract Valued Item Price Scaling Factor
	public var factor: NSDecimalNumber?
	
	/// Contract Valued Item Identifier
	public var identifier: Identifier?
	
	/// Total Contract Valued Item Value
	public var net: Money?
	
	/// Contract Valued Item Difficulty Scaling Factor
	public var points: NSDecimalNumber?
	
	/// Count of Contract Valued Items
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost
	public var unitPrice: Money?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["effectiveTime"] as? String {
				self.effectiveTime = DateTime(string: val)
			}
			if let val = js["entityCodeableConcept"] as? JSONDictionary {
				self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["entityReference"] as? JSONDictionary {
				self.entityReference = Reference(json: val, owner: self)
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
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
			if let val = js["unitPrice"] as? JSONDictionary {
				self.unitPrice = Money(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON()
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
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
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON()
		}
		
		return json
	}
}

