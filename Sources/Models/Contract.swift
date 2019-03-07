//
//  Contract.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Contract) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Legal Agreement.

Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
*/
open class Contract: DomainResource {
	override open class var resourceType: String {
		get { return "Contract" }
	}
	
	/// Acronym or short name.
	public var alias: [FHIRString]?
	
	/// Effective time.
	public var applies: Period?
	
	/// Source of Contract.
	public var author: Reference?
	
	/// Authority under which this Contract has standing.
	public var authority: [Reference]?
	
	/// Contract precursor content.
	public var contentDefinition: ContractContentDefinition?
	
	/// Content derived from the basal information.
	public var contentDerivative: CodeableConcept?
	
	/// A sphere of control governed by an authoritative jurisdiction, organization, or person.
	public var domain: [Reference]?
	
	/// Contract cessation cause.
	public var expirationType: CodeableConcept?
	
	/// Contract Friendly Language.
	public var friendly: [ContractFriendly]?
	
	/// Contract number.
	public var identifier: [Identifier]?
	
	/// Source Contract Definition.
	public var instantiatesCanonical: Reference?
	
	/// External Contract Definition.
	public var instantiatesUri: FHIRURL?
	
	/// When this Contract was issued.
	public var issued: DateTime?
	
	/// Contract Legal Language.
	public var legal: [ContractLegal]?
	
	/// Negotiation status.
	public var legalState: CodeableConcept?
	
	/// Binding Contract.
	public var legallyBindingAttachment: Attachment?
	
	/// Binding Contract.
	public var legallyBindingReference: Reference?
	
	/// Computer friendly designation.
	public var name: FHIRString?
	
	/// Key event in Contract History.
	public var relevantHistory: [Reference]?
	
	/// Computable Contract Language.
	public var rule: [ContractRule]?
	
	/// Range of Legal Concerns.
	public var scope: CodeableConcept?
	
	/// Contract Signatory.
	public var signer: [ContractSigner]?
	
	/// Specific Location.
	public var site: [Reference]?
	
	/// The status of the resource instance.
	public var status: ContractResourceStatusCodes?
	
	/// Subtype within the context of type.
	public var subType: [CodeableConcept]?
	
	/// Contract Target Entity.
	public var subject: [Reference]?
	
	/// Subordinate Friendly name.
	public var subtitle: FHIRString?
	
	/// Extra Information.
	public var supportingInfo: [Reference]?
	
	/// Contract Term List.
	public var term: [ContractTerm]?
	
	/// Human Friendly name.
	public var title: FHIRString?
	
	/// Focus of contract interest.
	public var topicCodeableConcept: CodeableConcept?
	
	/// Focus of contract interest.
	public var topicReference: Reference?
	
	/// Legal instrument category.
	public var type: CodeableConcept?
	
	/// Basal definition.
	public var url: FHIRURL?
	
	/// Business edition.
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		applies = createInstance(type: Period.self, for: "applies", in: json, context: &instCtx, owner: self) ?? applies
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		authority = createInstances(of: Reference.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		contentDefinition = createInstance(type: ContractContentDefinition.self, for: "contentDefinition", in: json, context: &instCtx, owner: self) ?? contentDefinition
		contentDerivative = createInstance(type: CodeableConcept.self, for: "contentDerivative", in: json, context: &instCtx, owner: self) ?? contentDerivative
		domain = createInstances(of: Reference.self, for: "domain", in: json, context: &instCtx, owner: self) ?? domain
		expirationType = createInstance(type: CodeableConcept.self, for: "expirationType", in: json, context: &instCtx, owner: self) ?? expirationType
		friendly = createInstances(of: ContractFriendly.self, for: "friendly", in: json, context: &instCtx, owner: self) ?? friendly
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instantiatesCanonical = createInstance(type: Reference.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstance(type: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		issued = createInstance(type: DateTime.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		legal = createInstances(of: ContractLegal.self, for: "legal", in: json, context: &instCtx, owner: self) ?? legal
		legalState = createInstance(type: CodeableConcept.self, for: "legalState", in: json, context: &instCtx, owner: self) ?? legalState
		legallyBindingAttachment = createInstance(type: Attachment.self, for: "legallyBindingAttachment", in: json, context: &instCtx, owner: self) ?? legallyBindingAttachment
		legallyBindingReference = createInstance(type: Reference.self, for: "legallyBindingReference", in: json, context: &instCtx, owner: self) ?? legallyBindingReference
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		relevantHistory = createInstances(of: Reference.self, for: "relevantHistory", in: json, context: &instCtx, owner: self) ?? relevantHistory
		rule = createInstances(of: ContractRule.self, for: "rule", in: json, context: &instCtx, owner: self) ?? rule
		scope = createInstance(type: CodeableConcept.self, for: "scope", in: json, context: &instCtx, owner: self) ?? scope
		signer = createInstances(of: ContractSigner.self, for: "signer", in: json, context: &instCtx, owner: self) ?? signer
		site = createInstances(of: Reference.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		status = createEnum(type: ContractResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		subType = createInstances(of: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		subtitle = createInstance(type: FHIRString.self, for: "subtitle", in: json, context: &instCtx, owner: self) ?? subtitle
		supportingInfo = createInstances(of: Reference.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
		term = createInstances(of: ContractTerm.self, for: "term", in: json, context: &instCtx, owner: self) ?? term
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		topicCodeableConcept = createInstance(type: CodeableConcept.self, for: "topicCodeableConcept", in: json, context: &instCtx, owner: self) ?? topicCodeableConcept
		topicReference = createInstance(type: Reference.self, for: "topicReference", in: json, context: &instCtx, owner: self) ?? topicReference
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		self.applies?.decorate(json: &json, withKey: "applies", errors: &errors)
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		arrayDecorate(json: &json, withKey: "authority", using: self.authority, errors: &errors)
		self.contentDefinition?.decorate(json: &json, withKey: "contentDefinition", errors: &errors)
		self.contentDerivative?.decorate(json: &json, withKey: "contentDerivative", errors: &errors)
		arrayDecorate(json: &json, withKey: "domain", using: self.domain, errors: &errors)
		self.expirationType?.decorate(json: &json, withKey: "expirationType", errors: &errors)
		arrayDecorate(json: &json, withKey: "friendly", using: self.friendly, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.instantiatesCanonical?.decorate(json: &json, withKey: "instantiatesCanonical", errors: &errors)
		self.instantiatesUri?.decorate(json: &json, withKey: "instantiatesUri", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		arrayDecorate(json: &json, withKey: "legal", using: self.legal, errors: &errors)
		self.legalState?.decorate(json: &json, withKey: "legalState", errors: &errors)
		self.legallyBindingAttachment?.decorate(json: &json, withKey: "legallyBindingAttachment", errors: &errors)
		self.legallyBindingReference?.decorate(json: &json, withKey: "legallyBindingReference", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "rule", using: self.rule, errors: &errors)
		self.scope?.decorate(json: &json, withKey: "scope", errors: &errors)
		arrayDecorate(json: &json, withKey: "signer", using: self.signer, errors: &errors)
		arrayDecorate(json: &json, withKey: "site", using: self.site, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "subType", using: self.subType, errors: &errors)
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		self.subtitle?.decorate(json: &json, withKey: "subtitle", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
		arrayDecorate(json: &json, withKey: "term", using: self.term, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.topicCodeableConcept?.decorate(json: &json, withKey: "topicCodeableConcept", errors: &errors)
		self.topicReference?.decorate(json: &json, withKey: "topicReference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Contract precursor content.

Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be
associated with and transformable into a Contract.
*/
open class ContractContentDefinition: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractContentDefinition" }
	}
	
	/// Publication Ownership.
	public var copyright: FHIRString?
	
	/// When published.
	public var publicationDate: DateTime?
	
	/// None
	public var publicationStatus: ContractResourcePublicationStatusCodes?
	
	/// Publisher Entity.
	public var publisher: Reference?
	
	/// Detailed Content Type Definition.
	public var subType: CodeableConcept?
	
	/// Content structure and use.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(publicationStatus: ContractResourcePublicationStatusCodes, type: CodeableConcept) {
		self.init()
		self.publicationStatus = publicationStatus
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		publicationDate = createInstance(type: DateTime.self, for: "publicationDate", in: json, context: &instCtx, owner: self) ?? publicationDate
		publicationStatus = createEnum(type: ContractResourcePublicationStatusCodes.self, for: "publicationStatus", in: json, context: &instCtx) ?? publicationStatus
		if nil == publicationStatus && !instCtx.containsKey("publicationStatus") {
			instCtx.addError(FHIRValidationError(missing: "publicationStatus"))
		}
		publisher = createInstance(type: Reference.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.publicationDate?.decorate(json: &json, withKey: "publicationDate", errors: &errors)
		self.publicationStatus?.decorate(json: &json, withKey: "publicationStatus", errors: &errors)
		if nil == self.publicationStatus {
			errors.append(FHIRValidationError(missing: "publicationStatus"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.subType?.decorate(json: &json, withKey: "subType", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
			fhir_warn("Type “\(Swift.type(of: content))” for property “\(content)” is invalid, ignoring")
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
			fhir_warn("Type “\(Swift.type(of: content))” for property “\(content)” is invalid, ignoring")
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
			fhir_warn("Type “\(Swift.type(of: content))” for property “\(content)” is invalid, ignoring")
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
	
	/// Entity being ascribed responsibility.
	public var action: [ContractTermAction]?
	
	/// Contract Term Effective Time.
	public var applies: Period?
	
	/// Contract Term Asset List.
	public var asset: [ContractTermAsset]?
	
	/// Nested Contract Term Group.
	public var group: [ContractTerm]?
	
	/// Contract Term Number.
	public var identifier: Identifier?
	
	/// Contract Term Issue Date Time.
	public var issued: DateTime?
	
	/// Context of the Contract term.
	public var offer: ContractTermOffer?
	
	/// Protection for the Term.
	public var securityLabel: [ContractTermSecurityLabel]?
	
	/// Contract Term Type specific classification.
	public var subType: CodeableConcept?
	
	/// Term Statement.
	public var text: FHIRString?
	
	/// Term Concern.
	public var topicCodeableConcept: CodeableConcept?
	
	/// Term Concern.
	public var topicReference: Reference?
	
	/// Contract Term Type or Form.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(offer: ContractTermOffer) {
		self.init()
		self.offer = offer
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: ContractTermAction.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		applies = createInstance(type: Period.self, for: "applies", in: json, context: &instCtx, owner: self) ?? applies
		asset = createInstances(of: ContractTermAsset.self, for: "asset", in: json, context: &instCtx, owner: self) ?? asset
		group = createInstances(of: ContractTerm.self, for: "group", in: json, context: &instCtx, owner: self) ?? group
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issued = createInstance(type: DateTime.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		offer = createInstance(type: ContractTermOffer.self, for: "offer", in: json, context: &instCtx, owner: self) ?? offer
		if nil == offer && !instCtx.containsKey("offer") {
			instCtx.addError(FHIRValidationError(missing: "offer"))
		}
		securityLabel = createInstances(of: ContractTermSecurityLabel.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		subType = createInstance(type: CodeableConcept.self, for: "subType", in: json, context: &instCtx, owner: self) ?? subType
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		topicCodeableConcept = createInstance(type: CodeableConcept.self, for: "topicCodeableConcept", in: json, context: &instCtx, owner: self) ?? topicCodeableConcept
		topicReference = createInstance(type: Reference.self, for: "topicReference", in: json, context: &instCtx, owner: self) ?? topicReference
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.applies?.decorate(json: &json, withKey: "applies", errors: &errors)
		arrayDecorate(json: &json, withKey: "asset", using: self.asset, errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		self.offer?.decorate(json: &json, withKey: "offer", errors: &errors)
		if nil == self.offer {
			errors.append(FHIRValidationError(missing: "offer"))
		}
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.subType?.decorate(json: &json, withKey: "subType", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.topicCodeableConcept?.decorate(json: &json, withKey: "topicCodeableConcept", errors: &errors)
		self.topicReference?.decorate(json: &json, withKey: "topicReference", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Entity being ascribed responsibility.

An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking
place.
*/
open class ContractTermAction: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermAction" }
	}
	
	/// Episode associated with action.
	public var context: Reference?
	
	/// Pointer to specific item.
	public var contextLinkId: [FHIRString]?
	
	/// True if the term prohibits the  action.
	public var doNotPerform: FHIRBool?
	
	/// Purpose for the Contract Term Action.
	public var intent: CodeableConcept?
	
	/// Pointer to specific item.
	public var linkId: [FHIRString]?
	
	/// Comments about the action.
	public var note: [Annotation]?
	
	/// When action happens.
	public var occurrenceDateTime: DateTime?
	
	/// When action happens.
	public var occurrencePeriod: Period?
	
	/// When action happens.
	public var occurrenceTiming: Timing?
	
	/// Actor that wil execute (or not) the action.
	public var performer: Reference?
	
	/// Pointer to specific item.
	public var performerLinkId: [FHIRString]?
	
	/// Competency of the performer.
	public var performerRole: CodeableConcept?
	
	/// Kind of service performer.
	public var performerType: [CodeableConcept]?
	
	/// Why action is to be performed.
	public var reason: [FHIRString]?
	
	/// Why is action (not) needed?.
	public var reasonCode: [CodeableConcept]?
	
	/// Pointer to specific item.
	public var reasonLinkId: [FHIRString]?
	
	/// Why is action (not) needed?.
	public var reasonReference: [Reference]?
	
	/// Who asked for action.
	public var requester: [Reference]?
	
	/// Pointer to specific item.
	public var requesterLinkId: [FHIRString]?
	
	/// Action restriction numbers.
	public var securityLabelNumber: [FHIRInteger]?
	
	/// State of the action.
	public var status: CodeableConcept?
	
	/// Entity of the action.
	public var subject: [ContractTermActionSubject]?
	
	/// Type or form of the action.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: CodeableConcept, status: CodeableConcept, type: CodeableConcept) {
		self.init()
		self.intent = intent
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		contextLinkId = createInstances(of: FHIRString.self, for: "contextLinkId", in: json, context: &instCtx, owner: self) ?? contextLinkId
		doNotPerform = createInstance(type: FHIRBool.self, for: "doNotPerform", in: json, context: &instCtx, owner: self) ?? doNotPerform
		intent = createInstance(type: CodeableConcept.self, for: "intent", in: json, context: &instCtx, owner: self) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		linkId = createInstances(of: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		performerLinkId = createInstances(of: FHIRString.self, for: "performerLinkId", in: json, context: &instCtx, owner: self) ?? performerLinkId
		performerRole = createInstance(type: CodeableConcept.self, for: "performerRole", in: json, context: &instCtx, owner: self) ?? performerRole
		performerType = createInstances(of: CodeableConcept.self, for: "performerType", in: json, context: &instCtx, owner: self) ?? performerType
		reason = createInstances(of: FHIRString.self, for: "reason", in: json, context: &instCtx, owner: self) ?? reason
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonLinkId = createInstances(of: FHIRString.self, for: "reasonLinkId", in: json, context: &instCtx, owner: self) ?? reasonLinkId
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requester = createInstances(of: Reference.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		requesterLinkId = createInstances(of: FHIRString.self, for: "requesterLinkId", in: json, context: &instCtx, owner: self) ?? requesterLinkId
		securityLabelNumber = createInstances(of: FHIRInteger.self, for: "securityLabelNumber", in: json, context: &instCtx, owner: self) ?? securityLabelNumber
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstances(of: ContractTermActionSubject.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "contextLinkId", using: self.contextLinkId, errors: &errors)
		self.doNotPerform?.decorate(json: &json, withKey: "doNotPerform", errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "linkId", using: self.linkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		arrayDecorate(json: &json, withKey: "performerLinkId", using: self.performerLinkId, errors: &errors)
		self.performerRole?.decorate(json: &json, withKey: "performerRole", errors: &errors)
		arrayDecorate(json: &json, withKey: "performerType", using: self.performerType, errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonLinkId", using: self.reasonLinkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "requester", using: self.requester, errors: &errors)
		arrayDecorate(json: &json, withKey: "requesterLinkId", using: self.requesterLinkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabelNumber", using: self.securityLabelNumber, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Entity of the action.
*/
open class ContractTermActionSubject: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermActionSubject" }
	}
	
	/// Entity of the action.
	public var reference: [Reference]?
	
	/// Role type of the agent.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: [Reference]) {
		self.init()
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reference = createInstances(of: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if (nil == reference || reference!.isEmpty) && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reference", using: self.reference, errors: &errors)
		if nil == reference || self.reference!.isEmpty {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}


/**
Contract Term Asset List.
*/
open class ContractTermAsset: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermAsset" }
	}
	
	/// Response to assets.
	public var answer: [ContractTermOfferAnswer]?
	
	/// Quality desctiption of asset.
	public var condition: FHIRString?
	
	/// Circumstance of the asset.
	public var context: [ContractTermAssetContext]?
	
	/// Pointer to asset text.
	public var linkId: [FHIRString]?
	
	/// Time period of the asset.
	public var period: [Period]?
	
	/// Asset availability types.
	public var periodType: [CodeableConcept]?
	
	/// Kinship of the asset.
	public var relationship: Coding?
	
	/// Range of asset.
	public var scope: CodeableConcept?
	
	/// Asset restriction numbers.
	public var securityLabelNumber: [FHIRInteger]?
	
	/// Asset sub-category.
	public var subtype: [CodeableConcept]?
	
	/// Asset clause or question text.
	public var text: FHIRString?
	
	/// Asset category.
	public var type: [CodeableConcept]?
	
	/// Associated entities.
	public var typeReference: [Reference]?
	
	/// Time period.
	public var usePeriod: [Period]?
	
	/// Contract Valued Item List.
	public var valuedItem: [ContractTermAssetValuedItem]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		answer = createInstances(of: ContractTermOfferAnswer.self, for: "answer", in: json, context: &instCtx, owner: self) ?? answer
		condition = createInstance(type: FHIRString.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		context = createInstances(of: ContractTermAssetContext.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		linkId = createInstances(of: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		period = createInstances(of: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		periodType = createInstances(of: CodeableConcept.self, for: "periodType", in: json, context: &instCtx, owner: self) ?? periodType
		relationship = createInstance(type: Coding.self, for: "relationship", in: json, context: &instCtx, owner: self) ?? relationship
		scope = createInstance(type: CodeableConcept.self, for: "scope", in: json, context: &instCtx, owner: self) ?? scope
		securityLabelNumber = createInstances(of: FHIRInteger.self, for: "securityLabelNumber", in: json, context: &instCtx, owner: self) ?? securityLabelNumber
		subtype = createInstances(of: CodeableConcept.self, for: "subtype", in: json, context: &instCtx, owner: self) ?? subtype
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		typeReference = createInstances(of: Reference.self, for: "typeReference", in: json, context: &instCtx, owner: self) ?? typeReference
		usePeriod = createInstances(of: Period.self, for: "usePeriod", in: json, context: &instCtx, owner: self) ?? usePeriod
		valuedItem = createInstances(of: ContractTermAssetValuedItem.self, for: "valuedItem", in: json, context: &instCtx, owner: self) ?? valuedItem
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "answer", using: self.answer, errors: &errors)
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		arrayDecorate(json: &json, withKey: "context", using: self.context, errors: &errors)
		arrayDecorate(json: &json, withKey: "linkId", using: self.linkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "period", using: self.period, errors: &errors)
		arrayDecorate(json: &json, withKey: "periodType", using: self.periodType, errors: &errors)
		self.relationship?.decorate(json: &json, withKey: "relationship", errors: &errors)
		self.scope?.decorate(json: &json, withKey: "scope", errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabelNumber", using: self.securityLabelNumber, errors: &errors)
		arrayDecorate(json: &json, withKey: "subtype", using: self.subtype, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		arrayDecorate(json: &json, withKey: "typeReference", using: self.typeReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "usePeriod", using: self.usePeriod, errors: &errors)
		arrayDecorate(json: &json, withKey: "valuedItem", using: self.valuedItem, errors: &errors)
	}
}


/**
Circumstance of the asset.
*/
open class ContractTermAssetContext: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermAssetContext" }
	}
	
	/// Codeable asset context.
	public var code: [CodeableConcept]?
	
	/// Creator,custodian or owner.
	public var reference: Reference?
	
	/// Context description.
	public var text: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}


/**
Contract Valued Item List.
*/
open class ContractTermAssetValuedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermAssetValuedItem" }
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
	
	/// Pointer to specific item.
	public var linkId: [FHIRString]?
	
	/// Total Contract Valued Item Value.
	public var net: Money?
	
	/// Terms of valuation.
	public var payment: FHIRString?
	
	/// When payment is due.
	public var paymentDate: DateTime?
	
	/// Contract Valued Item Difficulty Scaling Factor.
	public var points: FHIRDecimal?
	
	/// Count of Contract Valued Items.
	public var quantity: Quantity?
	
	/// Who will receive payment.
	public var recipient: Reference?
	
	/// Who will make payment.
	public var responsible: Reference?
	
	/// Security Labels that define affected terms.
	public var securityLabelNumber: [FHIRInteger]?
	
	/// Contract Valued Item fee, charge, or cost.
	public var unitPrice: Money?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		effectiveTime = createInstance(type: DateTime.self, for: "effectiveTime", in: json, context: &instCtx, owner: self) ?? effectiveTime
		entityCodeableConcept = createInstance(type: CodeableConcept.self, for: "entityCodeableConcept", in: json, context: &instCtx, owner: self) ?? entityCodeableConcept
		entityReference = createInstance(type: Reference.self, for: "entityReference", in: json, context: &instCtx, owner: self) ?? entityReference
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		linkId = createInstances(of: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		net = createInstance(type: Money.self, for: "net", in: json, context: &instCtx, owner: self) ?? net
		payment = createInstance(type: FHIRString.self, for: "payment", in: json, context: &instCtx, owner: self) ?? payment
		paymentDate = createInstance(type: DateTime.self, for: "paymentDate", in: json, context: &instCtx, owner: self) ?? paymentDate
		points = createInstance(type: FHIRDecimal.self, for: "points", in: json, context: &instCtx, owner: self) ?? points
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		recipient = createInstance(type: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		responsible = createInstance(type: Reference.self, for: "responsible", in: json, context: &instCtx, owner: self) ?? responsible
		securityLabelNumber = createInstances(of: FHIRInteger.self, for: "securityLabelNumber", in: json, context: &instCtx, owner: self) ?? securityLabelNumber
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.effectiveTime?.decorate(json: &json, withKey: "effectiveTime", errors: &errors)
		self.entityCodeableConcept?.decorate(json: &json, withKey: "entityCodeableConcept", errors: &errors)
		self.entityReference?.decorate(json: &json, withKey: "entityReference", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "linkId", using: self.linkId, errors: &errors)
		self.net?.decorate(json: &json, withKey: "net", errors: &errors)
		self.payment?.decorate(json: &json, withKey: "payment", errors: &errors)
		self.paymentDate?.decorate(json: &json, withKey: "paymentDate", errors: &errors)
		self.points?.decorate(json: &json, withKey: "points", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.recipient?.decorate(json: &json, withKey: "recipient", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabelNumber", using: self.securityLabelNumber, errors: &errors)
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
Context of the Contract term.

The matter of concern in the context of this provision of the agrement.
*/
open class ContractTermOffer: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermOffer" }
	}
	
	/// Response to offer text.
	public var answer: [ContractTermOfferAnswer]?
	
	/// Accepting party choice.
	public var decision: CodeableConcept?
	
	/// How decision is conveyed.
	public var decisionMode: [CodeableConcept]?
	
	/// Offer business ID.
	public var identifier: [Identifier]?
	
	/// Pointer to text.
	public var linkId: [FHIRString]?
	
	/// Offer Recipient.
	public var party: [ContractTermOfferParty]?
	
	/// Offer restriction numbers.
	public var securityLabelNumber: [FHIRInteger]?
	
	/// Human readable offer text.
	public var text: FHIRString?
	
	/// Negotiable offer asset.
	public var topic: Reference?
	
	/// Contract Offer Type or Form.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		answer = createInstances(of: ContractTermOfferAnswer.self, for: "answer", in: json, context: &instCtx, owner: self) ?? answer
		decision = createInstance(type: CodeableConcept.self, for: "decision", in: json, context: &instCtx, owner: self) ?? decision
		decisionMode = createInstances(of: CodeableConcept.self, for: "decisionMode", in: json, context: &instCtx, owner: self) ?? decisionMode
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		linkId = createInstances(of: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		party = createInstances(of: ContractTermOfferParty.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		securityLabelNumber = createInstances(of: FHIRInteger.self, for: "securityLabelNumber", in: json, context: &instCtx, owner: self) ?? securityLabelNumber
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		topic = createInstance(type: Reference.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "answer", using: self.answer, errors: &errors)
		self.decision?.decorate(json: &json, withKey: "decision", errors: &errors)
		arrayDecorate(json: &json, withKey: "decisionMode", using: self.decisionMode, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "linkId", using: self.linkId, errors: &errors)
		arrayDecorate(json: &json, withKey: "party", using: self.party, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabelNumber", using: self.securityLabelNumber, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.topic?.decorate(json: &json, withKey: "topic", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Response to offer text.
*/
open class ContractTermOfferAnswer: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermOfferAnswer" }
	}
	
	/// The actual answer response.
	public var valueAttachment: Attachment?
	
	/// The actual answer response.
	public var valueBoolean: FHIRBool?
	
	/// The actual answer response.
	public var valueCoding: Coding?
	
	/// The actual answer response.
	public var valueDate: FHIRDate?
	
	/// The actual answer response.
	public var valueDateTime: DateTime?
	
	/// The actual answer response.
	public var valueDecimal: FHIRDecimal?
	
	/// The actual answer response.
	public var valueInteger: FHIRInteger?
	
	/// The actual answer response.
	public var valueQuantity: Quantity?
	
	/// The actual answer response.
	public var valueReference: Reference?
	
	/// The actual answer response.
	public var valueString: FHIRString?
	
	/// The actual answer response.
	public var valueTime: FHIRTime?
	
	/// The actual answer response.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRURL {
			self.valueUri = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBoolean && nil == self.valueDecimal && nil == self.valueInteger && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueTime && nil == self.valueString && nil == self.valueUri && nil == self.valueAttachment && nil == self.valueCoding && nil == self.valueQuantity && nil == self.valueReference {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBoolean && nil == self.valueDecimal && nil == self.valueInteger && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueTime && nil == self.valueString && nil == self.valueUri && nil == self.valueAttachment && nil == self.valueCoding && nil == self.valueQuantity && nil == self.valueReference {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Offer Recipient.
*/
open class ContractTermOfferParty: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermOfferParty" }
	}
	
	/// Referenced entity.
	public var reference: [Reference]?
	
	/// Participant engagement type.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: [Reference], role: CodeableConcept) {
		self.init()
		self.reference = reference
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reference = createInstances(of: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if (nil == reference || reference!.isEmpty) && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		if nil == role && !instCtx.containsKey("role") {
			instCtx.addError(FHIRValidationError(missing: "role"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reference", using: self.reference, errors: &errors)
		if nil == reference || self.reference!.isEmpty {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
	}
}


/**
Protection for the Term.

Security labels that protect the handling of information about the term and its elements, which may be specifically
identified..
*/
open class ContractTermSecurityLabel: BackboneElement {
	override open class var resourceType: String {
		get { return "ContractTermSecurityLabel" }
	}
	
	/// Applicable Policy.
	public var category: [Coding]?
	
	/// Confidentiality Protection.
	public var classification: Coding?
	
	/// Handling Instructions.
	public var control: [Coding]?
	
	/// Link to Security Labels.
	public var number: [FHIRInteger]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(classification: Coding) {
		self.init()
		self.classification = classification
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstances(of: Coding.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		classification = createInstance(type: Coding.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		if nil == classification && !instCtx.containsKey("classification") {
			instCtx.addError(FHIRValidationError(missing: "classification"))
		}
		control = createInstances(of: Coding.self, for: "control", in: json, context: &instCtx, owner: self) ?? control
		number = createInstances(of: FHIRInteger.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.classification?.decorate(json: &json, withKey: "classification", errors: &errors)
		if nil == self.classification {
			errors.append(FHIRValidationError(missing: "classification"))
		}
		arrayDecorate(json: &json, withKey: "control", using: self.control, errors: &errors)
		arrayDecorate(json: &json, withKey: "number", using: self.number, errors: &errors)
	}
}

