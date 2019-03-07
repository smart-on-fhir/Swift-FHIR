//
//  Consent.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Consent) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and
periods of time.

A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to
perform one or more actions within a given policy context, for specific purposes and periods of time.
*/
open class Consent: DomainResource {
	override open class var resourceType: String {
		get { return "Consent" }
	}
	
	/// Classification of the consent statement - for indexing/retrieval.
	public var category: [CodeableConcept]?
	
	/// When this Consent was created or indexed.
	public var dateTime: DateTime?
	
	/// Identifier for this record (external references).
	public var identifier: [Identifier]?
	
	/// Custodian of the consent.
	public var organization: [Reference]?
	
	/// Who the consent applies to.
	public var patient: Reference?
	
	/// Who is agreeing to the policy and rules.
	public var performer: [Reference]?
	
	/// Policies covered by this consent.
	public var policy: [ConsentPolicy]?
	
	/// Regulation that this consents to.
	public var policyRule: CodeableConcept?
	
	/// Constraints to the base Consent.policyRule.
	public var provision: ConsentProvision?
	
	/// Which of the four areas this resource covers (extensible).
	public var scope: CodeableConcept?
	
	/// Source from which this consent is taken.
	public var sourceAttachment: Attachment?
	
	/// Source from which this consent is taken.
	public var sourceReference: Reference?
	
	/// Indicates the current state of this consent.
	public var status: ConsentState?
	
	/// Consent Verified by patient or family.
	public var verification: [ConsentVerification]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: [CodeableConcept], scope: CodeableConcept, status: ConsentState) {
		self.init()
		self.category = category
		self.scope = scope
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		if (nil == category || category!.isEmpty) && !instCtx.containsKey("category") {
			instCtx.addError(FHIRValidationError(missing: "category"))
		}
		dateTime = createInstance(type: DateTime.self, for: "dateTime", in: json, context: &instCtx, owner: self) ?? dateTime
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstances(of: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		policy = createInstances(of: ConsentPolicy.self, for: "policy", in: json, context: &instCtx, owner: self) ?? policy
		policyRule = createInstance(type: CodeableConcept.self, for: "policyRule", in: json, context: &instCtx, owner: self) ?? policyRule
		provision = createInstance(type: ConsentProvision.self, for: "provision", in: json, context: &instCtx, owner: self) ?? provision
		scope = createInstance(type: CodeableConcept.self, for: "scope", in: json, context: &instCtx, owner: self) ?? scope
		if nil == scope && !instCtx.containsKey("scope") {
			instCtx.addError(FHIRValidationError(missing: "scope"))
		}
		sourceAttachment = createInstance(type: Attachment.self, for: "sourceAttachment", in: json, context: &instCtx, owner: self) ?? sourceAttachment
		sourceReference = createInstance(type: Reference.self, for: "sourceReference", in: json, context: &instCtx, owner: self) ?? sourceReference
		status = createEnum(type: ConsentState.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		verification = createInstances(of: ConsentVerification.self, for: "verification", in: json, context: &instCtx, owner: self) ?? verification
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		if nil == category || self.category!.isEmpty {
			errors.append(FHIRValidationError(missing: "category"))
		}
		self.dateTime?.decorate(json: &json, withKey: "dateTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "organization", using: self.organization, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "policy", using: self.policy, errors: &errors)
		self.policyRule?.decorate(json: &json, withKey: "policyRule", errors: &errors)
		self.provision?.decorate(json: &json, withKey: "provision", errors: &errors)
		self.scope?.decorate(json: &json, withKey: "scope", errors: &errors)
		if nil == self.scope {
			errors.append(FHIRValidationError(missing: "scope"))
		}
		self.sourceAttachment?.decorate(json: &json, withKey: "sourceAttachment", errors: &errors)
		self.sourceReference?.decorate(json: &json, withKey: "sourceReference", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "verification", using: self.verification, errors: &errors)
	}
}


/**
Policies covered by this consent.

The references to the policies that are included in this consent scope. Policies may be organizational, but are often
defined jurisdictionally, or in law.
*/
open class ConsentPolicy: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentPolicy" }
	}
	
	/// Enforcement source for policy.
	public var authority: FHIRURL?
	
	/// Specific policy covered by this consent.
	public var uri: FHIRURL?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authority = createInstance(type: FHIRURL.self, for: "authority", in: json, context: &instCtx, owner: self) ?? authority
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authority?.decorate(json: &json, withKey: "authority", errors: &errors)
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
	}
}


/**
Constraints to the base Consent.policyRule.

An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
*/
open class ConsentProvision: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentProvision" }
	}
	
	/// e.g. Resource Type, Profile, CDA, etc..
	public var `class`: [Coding]?
	
	/// Actions controlled by this rule.
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this rule (or group, by role).
	public var actor: [ConsentProvisionActor]?
	
	/// e.g. LOINC or SNOMED CT code, etc. in the content.
	public var code: [CodeableConcept]?
	
	/// Data controlled by this rule.
	public var data: [ConsentProvisionData]?
	
	/// Timeframe for data controlled by this rule.
	public var dataPeriod: Period?
	
	/// Timeframe for this rule.
	public var period: Period?
	
	/// Nested Exception Rules.
	public var provision: [ConsentProvision]?
	
	/// Context of activities covered by this rule.
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// Action  to take - permit or deny - when the rule conditions are met.  Not permitted in root rule, required in
	/// all nested rules.
	public var type: ConsentProvisionType?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstances(of: Coding.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		action = createInstances(of: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		actor = createInstances(of: ConsentProvisionActor.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		data = createInstances(of: ConsentProvisionData.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		dataPeriod = createInstance(type: Period.self, for: "dataPeriod", in: json, context: &instCtx, owner: self) ?? dataPeriod
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		provision = createInstances(of: ConsentProvision.self, for: "provision", in: json, context: &instCtx, owner: self) ?? provision
		purpose = createInstances(of: Coding.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		type = createEnum(type: ConsentProvisionType.self, for: "type", in: json, context: &instCtx) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "class", using: self.`class`, errors: &errors)
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		arrayDecorate(json: &json, withKey: "actor", using: self.actor, errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "data", using: self.data, errors: &errors)
		self.dataPeriod?.decorate(json: &json, withKey: "dataPeriod", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "provision", using: self.provision, errors: &errors)
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Who|what controlled by this rule (or group, by role).

Who or what is controlled by this rule. Use group to identify a set of actors by some property they share (e.g.
'admitting officers').
*/
open class ConsentProvisionActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentProvisionActor" }
	}
	
	/// Resource for the actor (or group, by role).
	public var reference: Reference?
	
	/// How the actor is involved.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference, role: CodeableConcept) {
		self.init()
		self.reference = reference
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if nil == reference && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		if nil == role && !instCtx.containsKey("role") {
			instCtx.addError(FHIRValidationError(missing: "role"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
		if nil == self.role {
			errors.append(FHIRValidationError(missing: "role"))
		}
	}
}


/**
Data controlled by this rule.

The resources controlled by this rule if specific resources are referenced.
*/
open class ConsentProvisionData: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentProvisionData" }
	}
	
	/// How the resource reference is interpreted when testing consent restrictions.
	public var meaning: ConsentDataMeaning?
	
	/// The actual data reference.
	public var reference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(meaning: ConsentDataMeaning, reference: Reference) {
		self.init()
		self.meaning = meaning
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		meaning = createEnum(type: ConsentDataMeaning.self, for: "meaning", in: json, context: &instCtx) ?? meaning
		if nil == meaning && !instCtx.containsKey("meaning") {
			instCtx.addError(FHIRValidationError(missing: "meaning"))
		}
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if nil == reference && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.meaning?.decorate(json: &json, withKey: "meaning", errors: &errors)
		if nil == self.meaning {
			errors.append(FHIRValidationError(missing: "meaning"))
		}
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		if nil == self.reference {
			errors.append(FHIRValidationError(missing: "reference"))
		}
	}
}


/**
Consent Verified by patient or family.

Whether a treatment instruction (e.g. artificial respiration yes or no) was verified with the patient, his/her family or
another authorized person.
*/
open class ConsentVerification: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentVerification" }
	}
	
	/// When consent verified.
	public var verificationDate: DateTime?
	
	/// Has been verified.
	public var verified: FHIRBool?
	
	/// Person who verified.
	public var verifiedWith: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(verified: FHIRBool) {
		self.init()
		self.verified = verified
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		verificationDate = createInstance(type: DateTime.self, for: "verificationDate", in: json, context: &instCtx, owner: self) ?? verificationDate
		verified = createInstance(type: FHIRBool.self, for: "verified", in: json, context: &instCtx, owner: self) ?? verified
		if nil == verified && !instCtx.containsKey("verified") {
			instCtx.addError(FHIRValidationError(missing: "verified"))
		}
		verifiedWith = createInstance(type: Reference.self, for: "verifiedWith", in: json, context: &instCtx, owner: self) ?? verifiedWith
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.verificationDate?.decorate(json: &json, withKey: "verificationDate", errors: &errors)
		self.verified?.decorate(json: &json, withKey: "verified", errors: &errors)
		if nil == self.verified {
			errors.append(FHIRValidationError(missing: "verified"))
		}
		self.verifiedWith?.decorate(json: &json, withKey: "verifiedWith", errors: &errors)
	}
}

