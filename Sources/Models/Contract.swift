//
//  Contract.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Contract) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Legal Agreement.

A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
*/
open class Contract: DomainResource {
	override open class var resourceType: String {
		get { return "Contract" }
	}
	
	/// Action stipulated by this Contract.
	public var action: [CodeableConcept]?
	
	/// Rationale for the stiplulated action.
	public var actionReason: [CodeableConcept]?
	
	/// Entity being ascribed responsibility.
	public var agent: [ContractAgent]?
	
	/// Effective time.
	public var applies: Period?
	
	/// Authority under which this Contract has standing.
	public var authority: [Reference]?
	
	/// Binding Contract.
	public var bindingAttachment: Attachment?
	
	/// Binding Contract.
	public var bindingReference: Reference?
	
	/// Content derived from the basal information.
	public var contentDerivative: CodeableConcept?
	
	/// Decision by Grantor.
	public var decisionType: CodeableConcept?
	
	/// Domain in which this Contract applies.
	public var domain: [Reference]?
	
	/// Contract Friendly Language.
	public var friendly: [ContractFriendly]?
	
	/// Contract number.
	public var identifier: Identifier?
	
	/// When this Contract was issued.
	public var issued: DateTime?
	
	/// Contract Legal Language.
	public var legal: [ContractLegal]?
	
	/// Computable Contract Language.
	public var rule: [ContractRule]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// Contract Signatory.
	public var signer: [ContractSigner]?
	
	/// amended | appended | cancelled | disputed | entered-in-error | executable | executed | negotiable | offered |
	/// policy | rejected | renewed | revoked | resolved | terminated.
	public var status: FHIRString?
	
	/// Subtype within the context of type.
	public var subType: [CodeableConcept]?
	
	/// Contract Target Entity.
	public var subject: [Reference]?
	
	/// Contract Term List.
	public var term: [ContractTerm]?
	
	/// Context of the Contract.
	public var topic: [Reference]?
	
	/// Type or form.
	public var type: CodeableConcept?
	
	/// Contract Valued Item List.
	public var valuedItem: [ContractValuedItem]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		actionReason = createInstances(of: CodeableConcept.self, for: "actionReason", in: json, context: &instCtx, owner: self) ?? actionReason
		agent = createInstances(of: ContractAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		applies = createInstance(type: Period.self, for: "applies", in: json, context: &instCtx, owner: self) ?? applies
		authority = createInstances(of: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		bindingAttachment = createInstance(type: Attachment.self, for: "bindingAttachment", in: json, context: &instCtx, owner: self) ?? bindingAttachment
		bindingReference = createInstance(type: Reference.self, for: "bindingReference", in: json, context: &instCtx, owner: self) ?? bindingReference
		contentDerivative = createInstance(type: CodeableConcept.self, for: "contentDerivative", in: json, context: &instCtx, owner: self) ?? contentDerivative
		decisionType = createInstance(type: CodeableConcept.self, for: "decisionType", in: json, context: &instCtx, owner: self) ?? decisionType
		domain = createInstances(of: Reference.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		friendly = createInstances(of: ContractFriendly.self, for: "friendly", in: json, context: &instCtx, owner: self) ?? friendly
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issued = createInstance(type: DateTime.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		legal = createInstances(of: ContractLegal.self, for: "legal", in: json, context: &instCtx, owner: self) ?? legal
		rule = createInstances(of: ContractRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		signer = createInstances(of: ContractSigner.self, for: "signer", in: json, context: &instCtx, owner: self) ?? signer
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		subType = createInstances(of: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		term = createInstances(of: ContractTerm.self, for: "term", in: json, context: &instCtx, owner: self) ?? term
		topic = createInstances(of: Reference.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		valuedItem = createInstances(of: ContractValuedItem.self, for: "valuedItem", in: json, context: &instCtx, owner: self) ?? valuedItem
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		arrayDecorate(json: &json, withKey: "actionReason", using: self.actionReason, errors: &errors)
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		self.applies?.decorate(json: &json, withKey: "applies", errors: &errors)
		arrayDecorate(json: &json, withKey: "authority", using: self.authority, errors: &errors)
		self.bindingAttachment?.decorate(json: &json, withKey: "bindingAttachment", errors: &errors)
		self.bindingReference?.decorate(json: &json, withKey: "bindingReference", errors: &errors)
		self.contentDerivative?.decorate(json: &json, withKey: "contentDerivative", errors: &errors)
		self.decisionType?.decorate(json: &json, withKey: "decisionType", errors: &errors)
		arrayDecorate(json: &json, withKey: "domain", using: self.domain, errors: &errors)
		arrayDecorate(json: &json, withKey: "friendly", using: self.friendly, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		arrayDecorate(json: &json, withKey: "legal", using: self.legal, errors: &errors)
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		arrayDecorate(json: &json, withKey: "signer", using: self.signer, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "subType", using: self.subType, errors: &errors)
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		arrayDecorate(json: &json, withKey: "term", using: self.term, errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "valuedItem", using: self.valuedItem, errors: &errors)
	}
}


/**
Entity being ascribed responsibility.

An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking
place.
*/
open class ContractAgent: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractAgent" }
	}
	
	/// Contract Agent Type.
	public var actor: Reference?
	
	/// Role type of the agent.
	public var role: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		role = createInstances(of: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentAttachment = createInstance(type: Attachment.self, for: "contentAttachment", in: json, context: &instCtx, owner: self) ?? contentAttachment
		contentReference = createInstance(type: Reference.self, for: "contentReference", in: json, context: &instCtx, owner: self) ?? contentReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			instCtx.addError(FHIRValidationError(missing: "content[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentAttachment?.decorate(json: &json, withKey: "contentAttachment", errors: &errors)
		self.contentReference?.decorate(json: &json, withKey: "contentReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentAttachment = createInstance(type: Attachment.self, for: "contentAttachment", in: json, context: &instCtx, owner: self) ?? contentAttachment
		contentReference = createInstance(type: Reference.self, for: "contentReference", in: json, context: &instCtx, owner: self) ?? contentReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			instCtx.addError(FHIRValidationError(missing: "content[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentAttachment?.decorate(json: &json, withKey: "contentAttachment", errors: &errors)
		self.contentReference?.decorate(json: &json, withKey: "contentReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentAttachment = createInstance(type: Attachment.self, for: "contentAttachment", in: json, context: &instCtx, owner: self) ?? contentAttachment
		contentReference = createInstance(type: Reference.self, for: "contentReference", in: json, context: &instCtx, owner: self) ?? contentReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			instCtx.addError(FHIRValidationError(missing: "content[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentAttachment?.decorate(json: &json, withKey: "contentAttachment", errors: &errors)
		self.contentReference?.decorate(json: &json, withKey: "contentReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
	}
}


/**
Contract Signatory.

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
	
	/// Contract Signatory Role.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(party: Reference, signature: [Signature], type: Coding) {
		self.init()
		self.party = party
		self.signature = signature
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		if nil == party && !instCtx.containsKey("party") {
			instCtx.addError(FHIRValidationError(missing: "party"))
		}
		signature = createInstances(of: Signature.self, for: "signature", in: json, context: &instCtx, owner: self) ?? signature
		if (nil == signature || signature!.isEmpty) && !instCtx.containsKey("signature") {
			instCtx.addError(FHIRValidationError(missing: "signature"))
		}
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		if nil == self.party {
			errors.append(FHIRValidationError(missing: "party"))
		}
		arrayDecorate(json: &json, withKey: "signature", using: self.signature, errors: &errors)
		if nil == signature || self.signature!.isEmpty {
			errors.append(FHIRValidationError(missing: "signature"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	
	/// Contract Term Activity.
	public var action: [CodeableConcept]?
	
	/// Purpose for the Contract Term Action.
	public var actionReason: [CodeableConcept]?
	
	/// Contract Term Agent List.
	public var agent: [ContractTermAgent]?
	
	/// Contract Term Effective Time.
	public var applies: Period?
	
	/// Nested Contract Term Group.
	public var group: [ContractTerm]?
	
	/// Contract Term Number.
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time.
	public var issued: DateTime?
	
	/// Security Labels that define affected terms.
	public var securityLabel: [Coding]?
	
	/// Contract Term Type specific classification.
	public var subType: CodeableConcept?
	
	/// Human readable Contract term text.
	public var text: FHIRString?
	
	/// Context of the Contract term.
	public var topic: [Reference]?
	
	/// Contract Term Type or Form.
	public var type: CodeableConcept?
	
	/// Contract Term Valued Item List.
	public var valuedItem: [ContractTermValuedItem]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		actionReason = createInstances(of: CodeableConcept.self, for: "actionReason", in: json, context: &instCtx, owner: self) ?? actionReason
		agent = createInstances(of: ContractTermAgent.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		applies = createInstance(type: Period.self, for: "applies", in: json, context: &instCtx, owner: self) ?? applies
		group = createInstances(of: ContractTerm.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issued = createInstance(type: DateTime.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		topic = createInstances(of: Reference.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		valuedItem = createInstances(of: ContractTermValuedItem.self, for: "valuedItem", in: json, context: &instCtx, owner: self) ?? valuedItem
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		arrayDecorate(json: &json, withKey: "actionReason", using: self.actionReason, errors: &errors)
		arrayDecorate(json: &json, withKey: "agent", using: self.agent, errors: &errors)
		self.applies?.decorate(json: &json, withKey: "applies", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.subType?.decorate(json: &json, withKey: "subType", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "valuedItem", using: self.valuedItem, errors: &errors)
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
	
	/// Contract Term Agent Subject.
	public var actor: Reference?
	
	/// Type of the Contract Term Agent.
	public var role: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		role = createInstances(of: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		arrayDecorate(json: &json, withKey: "role", using: self.role, errors: &errors)
	}
}


/**
Contract Term Valued Item List.

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
	public var factor: FHIRDecimal?
	
	/// Contract Term Valued Item Number.
	public var identifier: Identifier?
	
	/// Total Contract Term Valued Item Value.
	public var net: Money?
	
	/// Contract Term Valued Item Difficulty Scaling Factor.
	public var points: FHIRDecimal?
	
	/// Contract Term Valued Item Count.
	public var quantity: Quantity?
	
	/// Contract Term Valued Item fee, charge, or cost.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		effectiveTime = createInstance(type: DateTime.self, for: "effectiveTime", in: json, context: &instCtx, owner: self) ?? effectiveTime
		entityCodeableConcept = createInstance(type: CodeableConcept.self, for: "entityCodeableConcept", in: json, context: &instCtx, owner: self) ?? entityCodeableConcept
		entityReference = createInstance(type: Reference.self, for: "entityReference", in: json, context: &instCtx, owner: self) ?? entityReference
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		points = createInstance(type: FHIRDecimal.self, for: "points", in: json, context: &instCtx, owner: self) ?? points
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.effectiveTime?.decorate(json: &json, withKey: "effectiveTime", errors: &errors)
		self.entityCodeableConcept?.decorate(json: &json, withKey: "entityCodeableConcept", errors: &errors)
		self.entityReference?.decorate(json: &json, withKey: "entityReference", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		self.points?.decorate(json: &json, withKey: "points", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
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
	public var factor: FHIRDecimal?
	
	/// Contract Valued Item Number.
	public var identifier: Identifier?
	
	/// Total Contract Valued Item Value.
	public var net: Money?
	
	/// Contract Valued Item Difficulty Scaling Factor.
	public var points: FHIRDecimal?
	
	/// Count of Contract Valued Items.
	public var quantity: Quantity?
	
	/// Contract Valued Item fee, charge, or cost.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		effectiveTime = createInstance(type: DateTime.self, for: "effectiveTime", in: json, context: &instCtx, owner: self) ?? effectiveTime
		entityCodeableConcept = createInstance(type: CodeableConcept.self, for: "entityCodeableConcept", in: json, context: &instCtx, owner: self) ?? entityCodeableConcept
		entityReference = createInstance(type: Reference.self, for: "entityReference", in: json, context: &instCtx, owner: self) ?? entityReference
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		points = createInstance(type: FHIRDecimal.self, for: "points", in: json, context: &instCtx, owner: self) ?? points
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.effectiveTime?.decorate(json: &json, withKey: "effectiveTime", errors: &errors)
		self.entityCodeableConcept?.decorate(json: &json, withKey: "entityCodeableConcept", errors: &errors)
		self.entityReference?.decorate(json: &json, withKey: "entityReference", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		self.points?.decorate(json: &json, withKey: "points", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}

