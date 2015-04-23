//
//  Contract.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Contract) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.addObject("action")
				if let val = exist as? [FHIRJSON] {
					self.action = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"action\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["actionReason"] {
				presentKeys.addObject("actionReason")
				if let val = exist as? [FHIRJSON] {
					self.actionReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actionReason\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["actor"] {
				presentKeys.addObject("actor")
				if let val = exist as? [FHIRJSON] {
					self.actor = ContractActor.from(val, owner: self) as? [ContractActor]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actor\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["applies"] {
				presentKeys.addObject("applies")
				if let val = exist as? FHIRJSON {
					self.applies = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"applies\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["authority"] {
				presentKeys.addObject("authority")
				if let val = exist as? [FHIRJSON] {
					self.authority = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authority\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bindingAttachment"] {
				presentKeys.addObject("bindingAttachment")
				if let val = exist as? FHIRJSON {
					self.bindingAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bindingAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bindingReference"] {
				presentKeys.addObject("bindingReference")
				if let val = exist as? FHIRJSON {
					self.bindingReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bindingReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["domain"] {
				presentKeys.addObject("domain")
				if let val = exist as? [FHIRJSON] {
					self.domain = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"domain\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["friendly"] {
				presentKeys.addObject("friendly")
				if let val = exist as? [FHIRJSON] {
					self.friendly = ContractFriendly.from(val, owner: self) as? [ContractFriendly]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"friendly\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["issued"] {
				presentKeys.addObject("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issued\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["legal"] {
				presentKeys.addObject("legal")
				if let val = exist as? [FHIRJSON] {
					self.legal = ContractLegal.from(val, owner: self) as? [ContractLegal]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"legal\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rule"] {
				presentKeys.addObject("rule")
				if let val = exist as? [FHIRJSON] {
					self.rule = ContractRule.from(val, owner: self) as? [ContractRule]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rule\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["signer"] {
				presentKeys.addObject("signer")
				if let val = exist as? [FHIRJSON] {
					self.signer = ContractSigner.from(val, owner: self) as? [ContractSigner]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"signer\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subType"] {
				presentKeys.addObject("subType")
				if let val = exist as? [FHIRJSON] {
					self.subType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subType\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? [FHIRJSON] {
					self.subject = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["term"] {
				presentKeys.addObject("term")
				if let val = exist as? [FHIRJSON] {
					self.term = ContractTerm.from(val, owner: self) as? [ContractTerm]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"term\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valuedItem"] {
				presentKeys.addObject("valuedItem")
				if let val = exist as? [FHIRJSON] {
					self.valuedItem = ContractValuedItem.from(val, owner: self) as? [ContractValuedItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valuedItem\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(entity: Reference?) {
		self.init(json: nil)
		if nil != entity {
			self.entity = entity
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["entity"] {
				presentKeys.addObject("entity")
				if let val = exist as? FHIRJSON {
					self.entity = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"entity\" but it is missing"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contentAttachment"] {
				presentKeys.addObject("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.addObject("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"content[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contentAttachment"] {
				presentKeys.addObject("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.addObject("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"content[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contentAttachment"] {
				presentKeys.addObject("contentAttachment")
				if let val = exist as? FHIRJSON {
					self.contentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.addObject("contentReference")
				if let val = exist as? FHIRJSON {
					self.contentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contentReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.contentAttachment && nil == self.contentReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"content[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["party"] {
				presentKeys.addObject("party")
				if let val = exist as? FHIRJSON {
					self.party = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"party\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"party\" but it is missing"))
			}
			if let exist: AnyObject = js["signature"] {
				presentKeys.addObject("signature")
				if let val = exist as? String {
					self.signature = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"signature\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"signature\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	/// Nested Contract Term Group
	public var group: [ContractTerm]?
	
	/// Contract Term identifier
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time
	public var issued: DateTime?
	
	/// Contract Term Subtype
	public var subType: CodeableConcept?
	
	/// Subject of this Contract Term
	public var subject: Reference?
	
	/// Human readable Contract term text
	public var text: String?
	
	/// Contract Term Type
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item
	public var valuedItem: [ContractTermValuedItem]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.addObject("action")
				if let val = exist as? [FHIRJSON] {
					self.action = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"action\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["actionReason"] {
				presentKeys.addObject("actionReason")
				if let val = exist as? [FHIRJSON] {
					self.actionReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actionReason\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["actor"] {
				presentKeys.addObject("actor")
				if let val = exist as? [FHIRJSON] {
					self.actor = ContractTermActor.from(val, owner: self) as? [ContractTermActor]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actor\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["applies"] {
				presentKeys.addObject("applies")
				if let val = exist as? FHIRJSON {
					self.applies = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"applies\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? [FHIRJSON] {
					self.group = ContractTerm.from(val, owner: self) as? [ContractTerm]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["issued"] {
				presentKeys.addObject("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issued\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subType"] {
				presentKeys.addObject("subType")
				if let val = exist as? FHIRJSON {
					self.subType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valuedItem"] {
				presentKeys.addObject("valuedItem")
				if let val = exist as? [FHIRJSON] {
					self.valuedItem = ContractTermValuedItem.from(val, owner: self) as? [ContractTermValuedItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valuedItem\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let group = self.group {
			json["group"] = ContractTerm.asJSONArray(group)
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(entity: Reference?) {
		self.init(json: nil)
		if nil != entity {
			self.entity = entity
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["entity"] {
				presentKeys.addObject("entity")
				if let val = exist as? FHIRJSON {
					self.entity = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"entity\" but it is missing"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? [FHIRJSON] {
					self.role = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["effectiveTime"] {
				presentKeys.addObject("effectiveTime")
				if let val = exist as? String {
					self.effectiveTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"effectiveTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entityCodeableConcept"] {
				presentKeys.addObject("entityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entityCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entityReference"] {
				presentKeys.addObject("entityReference")
				if let val = exist as? FHIRJSON {
					self.entityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entityReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.addObject("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"net\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.addObject("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"points\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.addObject("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unitPrice\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["effectiveTime"] {
				presentKeys.addObject("effectiveTime")
				if let val = exist as? String {
					self.effectiveTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"effectiveTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entityCodeableConcept"] {
				presentKeys.addObject("entityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.entityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entityCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entityReference"] {
				presentKeys.addObject("entityReference")
				if let val = exist as? FHIRJSON {
					self.entityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entityReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["net"] {
				presentKeys.addObject("net")
				if let val = exist as? FHIRJSON {
					self.net = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"net\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["points"] {
				presentKeys.addObject("points")
				if let val = exist as? NSNumber {
					self.points = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"points\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unitPrice"] {
				presentKeys.addObject("unitPrice")
				if let val = exist as? FHIRJSON {
					self.unitPrice = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unitPrice\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

