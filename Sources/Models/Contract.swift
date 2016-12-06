//
//  Contract.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Contract) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Contract.

A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
*/
open class Contract: DomainResource {
	override open class var resourceType: String {
		get { return "Contract" }
	}
	
	/// Contract Action.
	public var action: [CodeableConcept]?
	
	/// Contract Action Reason.
	public var actionReason: [CodeableConcept]?
	
	/// Contract Agent.
	public var agent: [ContractAgent]?
	
	/// Effective time.
	public var applies: Period?
	
	/// Authority under which this Contract has standing.
	public var authority: [Reference]?
	
	/// Binding Contract.
	public var bindingAttachment: Attachment?
	
	/// Binding Contract.
	public var bindingReference: Reference?
	
	/// Domain in which this Contract applies.
	public var domain: [Reference]?
	
	/// Contract Friendly Language.
	public var friendly: [ContractFriendly]?
	
	/// Contract identifier.
	public var identifier: Identifier?
	
	/// When this Contract was issued.
	public var issued: DateTime?
	
	/// Contract Legal Language.
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language.
	public var rule: [ContractRule]?
	
	/// Contract Signer.
	public var signer: [ContractSigner]?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Contract Subtype.
	public var subType: [CodeableConcept]?
	
	/// Contract Target Entity.
	public var subject: [Reference]?
	
	/// Contract Term List.
	public var term: [ContractTerm]?
	
	/// Context of the Contract.
	public var topic: [Reference]?
	
	/// Contract Type.
	public var type: CodeableConcept?
	
	/// Contract Valued Item.
	public var valuedItem: [ContractValuedItem]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["actionReason"] {
			presentKeys.insert("actionReason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actionReason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionReason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.agent = try ContractAgent.instantiate(fromArray: val, owner: self) as? [ContractAgent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "agent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["applies"] {
			presentKeys.insert("applies")
			if let val = exist as? FHIRJSON {
				do {
					self.applies = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "applies"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "applies", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["authority"] {
			presentKeys.insert("authority")
			if let val = exist as? [FHIRJSON] {
				do {
					self.authority = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authority"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authority", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["bindingAttachment"] {
			presentKeys.insert("bindingAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.bindingAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bindingAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bindingAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["bindingReference"] {
			presentKeys.insert("bindingReference")
			if let val = exist as? FHIRJSON {
				do {
					self.bindingReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "bindingReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "bindingReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["domain"] {
			presentKeys.insert("domain")
			if let val = exist as? [FHIRJSON] {
				do {
					self.domain = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "domain"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "domain", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["friendly"] {
			presentKeys.insert("friendly")
			if let val = exist as? [FHIRJSON] {
				do {
					self.friendly = try ContractFriendly.instantiate(fromArray: val, owner: self) as? [ContractFriendly]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "friendly"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "friendly", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["issued"] {
			presentKeys.insert("issued")
			if let val = exist as? String {
				self.issued = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "issued", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["legal"] {
			presentKeys.insert("legal")
			if let val = exist as? [FHIRJSON] {
				do {
					self.legal = try ContractLegal.instantiate(fromArray: val, owner: self) as? [ContractLegal]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "legal"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "legal", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["rule"] {
			presentKeys.insert("rule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rule = try ContractRule.instantiate(fromArray: val, owner: self) as? [ContractRule]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["signer"] {
			presentKeys.insert("signer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.signer = try ContractSigner.instantiate(fromArray: val, owner: self) as? [ContractSigner]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "signer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "signer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subType"] {
			presentKeys.insert("subType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subject = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["term"] {
			presentKeys.insert("term")
			if let val = exist as? [FHIRJSON] {
				do {
					self.term = try ContractTerm.instantiate(fromArray: val, owner: self) as? [ContractTerm]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "term"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "term", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuedItem"] {
			presentKeys.insert("valuedItem")
			if let val = exist as? [FHIRJSON] {
				do {
					self.valuedItem = try ContractValuedItem.instantiate(fromArray: val, owner: self) as? [ContractValuedItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuedItem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuedItem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = actionReason.map() { $0.asJSON(errors: &errors) }
		}
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON(errors: &errors)
		}
		if let authority = self.authority {
			json["authority"] = authority.map() { $0.asJSON(errors: &errors) }
		}
		if let bindingAttachment = self.bindingAttachment {
			json["bindingAttachment"] = bindingAttachment.asJSON(errors: &errors)
		}
		if let bindingReference = self.bindingReference {
			json["bindingReference"] = bindingReference.asJSON(errors: &errors)
		}
		if let domain = self.domain {
			json["domain"] = domain.map() { $0.asJSON(errors: &errors) }
		}
		if let friendly = self.friendly {
			json["friendly"] = friendly.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let legal = self.legal {
			json["legal"] = legal.map() { $0.asJSON(errors: &errors) }
		}
		if let rule = self.rule {
			json["rule"] = rule.map() { $0.asJSON(errors: &errors) }
		}
		if let signer = self.signer {
			json["signer"] = signer.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = subType.map() { $0.asJSON(errors: &errors) }
		}
		if let subject = self.subject {
			json["subject"] = subject.map() { $0.asJSON(errors: &errors) }
		}
		if let term = self.term {
			json["term"] = term.map() { $0.asJSON(errors: &errors) }
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = valuedItem.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Contract Agent.

An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking
place.
*/
open class ContractAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractAgent" }
	}
	
	/// Contract Agent Type.
	public var actor: Reference?
	
	/// Contract  Agent Role.
	public var role: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? FHIRJSON {
				do {
					self.actor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? [FHIRJSON] {
				do {
					self.role = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Contract Friendly Language.

The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the
representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a
layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the
Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
*/
open class ContractFriendly: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractFriendly" }
	}
	
	/// Easily comprehended representation of this Contract.
	public var contentAttachment: Attachment?
	
	/// Easily comprehended representation of this Contract.
	public var contentReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Any) {
		self.init()
		if let value = content as? Attachment {
			self.contentAttachment = value
		}
		else if let value = content as? Reference {
			self.contentReference = value
		}
		else {
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contentAttachment"] {
			presentKeys.insert("contentAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.contentAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentReference"] {
			presentKeys.insert("contentReference")
			if let val = exist as? FHIRJSON {
				do {
					self.contentReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON(errors: &errors)
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Contract Legal Language.

List of Legal expressions or representations of this Contract.
*/
open class ContractLegal: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractLegal" }
	}
	
	/// Contract Legal Text.
	public var contentAttachment: Attachment?
	
	/// Contract Legal Text.
	public var contentReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Any) {
		self.init()
		if let value = content as? Attachment {
			self.contentAttachment = value
		}
		else if let value = content as? Reference {
			self.contentReference = value
		}
		else {
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contentAttachment"] {
			presentKeys.insert("contentAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.contentAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentReference"] {
			presentKeys.insert("contentReference")
			if let val = exist as? FHIRJSON {
				do {
					self.contentReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON(errors: &errors)
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Computable Contract Language.

List of Computable Policy Rule Language Representations of this Contract.
*/
open class ContractRule: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractRule" }
	}
	
	/// Computable Contract Rules.
	public var contentAttachment: Attachment?
	
	/// Computable Contract Rules.
	public var contentReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Any) {
		self.init()
		if let value = content as? Attachment {
			self.contentAttachment = value
		}
		else if let value = content as? Reference {
			self.contentReference = value
		}
		else {
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contentAttachment"] {
			presentKeys.insert("contentAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.contentAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentReference"] {
			presentKeys.insert("contentReference")
			if let val = exist as? FHIRJSON {
				do {
					self.contentReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contentReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contentReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON(errors: &errors)
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Contract Signer.

Parties with legal standing in the Contract, including the principal parties, the grantor(s) and grantee(s), which are
any person or organization bound by the contract, and any ancillary parties, which facilitate the execution of the
contract such as a notary or witness.
*/
open class ContractSigner: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractSigner" }
	}
	
	/// Contract Signatory Party.
	public var party: Reference?
	
	/// Contract Documentation Signature.
	public var signature: [Signature]?
	
	/// Contract Signer Type.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(party: Reference, signature: [Signature], type: Coding) {
		self.init()
		self.party = party
		self.signature = signature
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["party"] {
			presentKeys.insert("party")
			if let val = exist as? FHIRJSON {
				do {
					self.party = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "party"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "party", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "party"))
		}
		if let exist = json["signature"] {
			presentKeys.insert("signature")
			if let val = exist as? [FHIRJSON] {
				do {
					self.signature = try Signature.instantiate(fromArray: val, owner: self) as? [Signature]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "signature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "signature", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "signature"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let party = self.party {
			json["party"] = party.asJSON(errors: &errors)
		}
		if let signature = self.signature {
			json["signature"] = signature.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Contract Term List.

One or more Contract Provisions, which may be related and conveyed as a group, and may contain nested groups.
*/
open class ContractTerm: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTerm" }
	}
	
	/// Contract Term Action.
	public var action: [CodeableConcept]?
	
	/// Contract Term Action Reason.
	public var actionReason: [CodeableConcept]?
	
	/// Contract Term Agent List.
	public var agent: [ContractTermAgent]?
	
	/// Contract Term Effective Time.
	public var applies: Period?
	
	/// Nested Contract Term Group.
	public var group: [ContractTerm]?
	
	/// Contract Term identifier.
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time.
	public var issued: DateTime?
	
	/// Contract Term Subtype.
	public var subType: CodeableConcept?
	
	/// Human readable Contract term text.
	public var text: String?
	
	/// Context of the Contract term.
	public var topic: [Reference]?
	
	/// Contract Term Type.
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item.
	public var valuedItem: [ContractTermValuedItem]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["actionReason"] {
			presentKeys.insert("actionReason")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actionReason = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionReason", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["agent"] {
			presentKeys.insert("agent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.agent = try ContractTermAgent.instantiate(fromArray: val, owner: self) as? [ContractTermAgent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "agent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "agent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["applies"] {
			presentKeys.insert("applies")
			if let val = exist as? FHIRJSON {
				do {
					self.applies = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "applies"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "applies", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? [FHIRJSON] {
				do {
					self.group = try ContractTerm.instantiate(fromArray: val, owner: self) as? [ContractTerm]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "group"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["issued"] {
			presentKeys.insert("issued")
			if let val = exist as? String {
				self.issued = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "issued", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subType"] {
			presentKeys.insert("subType")
			if let val = exist as? FHIRJSON {
				do {
					self.subType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuedItem"] {
			presentKeys.insert("valuedItem")
			if let val = exist as? [FHIRJSON] {
				do {
					self.valuedItem = try ContractTermValuedItem.instantiate(fromArray: val, owner: self) as? [ContractTermValuedItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuedItem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuedItem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let actionReason = self.actionReason {
			json["actionReason"] = actionReason.map() { $0.asJSON(errors: &errors) }
		}
		if let agent = self.agent {
			json["agent"] = agent.map() { $0.asJSON(errors: &errors) }
		}
		if let applies = self.applies {
			json["applies"] = applies.asJSON(errors: &errors)
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let subType = self.subType {
			json["subType"] = subType.asJSON(errors: &errors)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let valuedItem = self.valuedItem {
			json["valuedItem"] = valuedItem.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Contract Term Agent List.

An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking
place.
*/
open class ContractTermAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermAgent" }
	}
	
	/// Contract Term Agent List.
	public var actor: Reference?
	
	/// Contract Term Agent Role.
	public var role: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? FHIRJSON {
				do {
					self.actor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? [FHIRJSON] {
				do {
					self.role = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Contract Term Valued Item.

Contract Provision Valued Item List.
*/
open class ContractTermValuedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermValuedItem" }
	}
	
	/// Contract Term Valued Item Effective Tiem.
	public var effectiveTime: DateTime?
	
	/// Contract Term Valued Item Type.
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Term Valued Item Type.
	public var entityReference: Reference?
	
	/// Contract Term Valued Item Price Scaling Factor.
	public var factor: NSDecimalNumber?
	
	/// Contract Term Valued Item Identifier.
	public var identifier: Identifier?
	
	/// Total Contract Term Valued Item Value.
	public var net: Money?
	
	/// Contract Term Valued Item Difficulty Scaling Factor.
	public var points: NSDecimalNumber?
	
	/// Contract Term Valued Item Count.
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["effectiveTime"] {
			presentKeys.insert("effectiveTime")
			if let val = exist as? String {
				self.effectiveTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["entityCodeableConcept"] {
			presentKeys.insert("entityCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.entityCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entityCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entityCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["entityReference"] {
			presentKeys.insert("entityReference")
			if let val = exist as? FHIRJSON {
				do {
					self.entityReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entityReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entityReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["net"] {
			presentKeys.insert("net")
			if let val = exist as? FHIRJSON {
				do {
					self.net = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "net"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["points"] {
			presentKeys.insert("points")
			if let val = exist as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "points", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["unitPrice"] {
			presentKeys.insert("unitPrice")
			if let val = exist as? FHIRJSON {
				do {
					self.unitPrice = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unitPrice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON(errors: &errors)
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON(errors: &errors)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let net = self.net {
			json["net"] = net.asJSON(errors: &errors)
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Contract Valued Item.

Contract Valued Item List.
*/
open class ContractValuedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractValuedItem" }
	}
	
	/// Contract Valued Item Effective Tiem.
	public var effectiveTime: DateTime?
	
	/// Contract Valued Item Type.
	public var entityCodeableConcept: CodeableConcept?
	
	/// Contract Valued Item Type.
	public var entityReference: Reference?
	
	/// Contract Valued Item Price Scaling Factor.
	public var factor: NSDecimalNumber?
	
	/// Contract Valued Item Identifier.
	public var identifier: Identifier?
	
	/// Total Contract Valued Item Value.
	public var net: Money?
	
	/// Contract Valued Item Difficulty Scaling Factor.
	public var points: NSDecimalNumber?
	
	/// Count of Contract Valued Items.
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["effectiveTime"] {
			presentKeys.insert("effectiveTime")
			if let val = exist as? String {
				self.effectiveTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["entityCodeableConcept"] {
			presentKeys.insert("entityCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.entityCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entityCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entityCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["entityReference"] {
			presentKeys.insert("entityReference")
			if let val = exist as? FHIRJSON {
				do {
					self.entityReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entityReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entityReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["net"] {
			presentKeys.insert("net")
			if let val = exist as? FHIRJSON {
				do {
					self.net = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "net"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "net", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["points"] {
			presentKeys.insert("points")
			if let val = exist as? NSNumber {
				self.points = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "points", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["unitPrice"] {
			presentKeys.insert("unitPrice")
			if let val = exist as? FHIRJSON {
				do {
					self.unitPrice = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unitPrice"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unitPrice", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let effectiveTime = self.effectiveTime {
			json["effectiveTime"] = effectiveTime.asJSON()
		}
		if let entityCodeableConcept = self.entityCodeableConcept {
			json["entityCodeableConcept"] = entityCodeableConcept.asJSON(errors: &errors)
		}
		if let entityReference = self.entityReference {
			json["entityReference"] = entityReference.asJSON(errors: &errors)
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let net = self.net {
			json["net"] = net.asJSON(errors: &errors)
		}
		if let points = self.points {
			json["points"] = points.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let unitPrice = self.unitPrice {
			json["unitPrice"] = unitPrice.asJSON(errors: &errors)
		}
		
		return json
	}
}

