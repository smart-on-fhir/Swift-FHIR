//
//  Consent.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Consent) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A healthcare consumer's policy choices to permits or denies recipients or roles to perform actions for specific purposes
and periods of time.

A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient role(s)
to perform one or more actions within a given policy context, for specific purposes and periods of time.
*/
open class Consent: DomainResource {
	override open class var resourceType: String {
		get { return "Consent" }
	}
	
	/// Actions controlled by this consent.
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this consent (or group, by role).
	public var actor: [ConsentActor]?
	
	/// Classification of the consent statement - for indexing/retrieval.
	public var category: [CodeableConcept]?
	
	/// Who is agreeing to the policy and exceptions.
	public var consentingParty: [Reference]?
	
	/// Data controlled by this consent.
	public var data: [ConsentData]?
	
	/// Timeframe for data controlled by this consent.
	public var dataPeriod: Period?
	
	/// When this Consent was created or indexed.
	public var dateTime: DateTime?
	
	/// Additional rule -  addition or removal of permissions.
	public var except: [ConsentExcept]?
	
	/// Identifier for this record (external references).
	public var identifier: Identifier?
	
	/// Custodian of the consent.
	public var organization: [Reference]?
	
	/// Who the consent applies to.
	public var patient: Reference?
	
	/// Period that this consent applies.
	public var period: Period?
	
	/// Policies covered by this consent.
	public var policy: [ConsentPolicy]?
	
	/// Policy that this consents to.
	public var policyRule: FHIRURL?
	
	/// Context of activities for which the agreement is made.
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// Source from which this consent is taken.
	public var sourceAttachment: Attachment?
	
	/// Source from which this consent is taken.
	public var sourceIdentifier: Identifier?
	
	/// Source from which this consent is taken.
	public var sourceReference: Reference?
	
	/// Indicates the current state of this consent.
	public var status: ConsentState?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, status: ConsentState) {
		self.init()
		self.patient = patient
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		actor = createInstances(of: ConsentActor.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		consentingParty = createInstances(of: Reference.self, for: "consentingParty", in: json, context: &instCtx, owner: self) ?? consentingParty
		data = createInstances(of: ConsentData.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		dataPeriod = createInstance(type: Period.self, for: "dataPeriod", in: json, context: &instCtx, owner: self) ?? dataPeriod
		dateTime = createInstance(type: DateTime.self, for: "dateTime", in: json, context: &instCtx, owner: self) ?? dateTime
		except = createInstances(of: ConsentExcept.self, for: "except", in: json, context: &instCtx, owner: self) ?? except
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstances(of: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		policy = createInstances(of: ConsentPolicy.self, for: "policy", in: json, context: &instCtx, owner: self) ?? policy
		policyRule = createInstance(type: FHIRURL.self, for: "policyRule", in: json, context: &instCtx, owner: self) ?? policyRule
		purpose = createInstances(of: Coding.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		sourceAttachment = createInstance(type: Attachment.self, for: "sourceAttachment", in: json, context: &instCtx, owner: self) ?? sourceAttachment
		sourceIdentifier = createInstance(type: Identifier.self, for: "sourceIdentifier", in: json, context: &instCtx, owner: self) ?? sourceIdentifier
		sourceReference = createInstance(type: Reference.self, for: "sourceReference", in: json, context: &instCtx, owner: self) ?? sourceReference
		status = createEnum(type: ConsentState.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		arrayDecorate(json: &json, withKey: "actor", using: self.actor, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "consentingParty", using: self.consentingParty, errors: &errors)
		arrayDecorate(json: &json, withKey: "data", using: self.data, errors: &errors)
		self.dataPeriod?.decorate(json: &json, withKey: "dataPeriod", errors: &errors)
		self.dateTime?.decorate(json: &json, withKey: "dateTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "except", using: self.except, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "organization", using: self.organization, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "policy", using: self.policy, errors: &errors)
		self.policyRule?.decorate(json: &json, withKey: "policyRule", errors: &errors)
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.sourceAttachment?.decorate(json: &json, withKey: "sourceAttachment", errors: &errors)
		self.sourceIdentifier?.decorate(json: &json, withKey: "sourceIdentifier", errors: &errors)
		self.sourceReference?.decorate(json: &json, withKey: "sourceReference", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Who|what controlled by this consent (or group, by role).

Who or what is controlled by this consent. Use group to identify a set of actors by some property they share (e.g.
'admitting officers').
*/
open class ConsentActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentActor" }
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
		if nil == reference && !instCtx.containsKey("reference") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		if nil == role && !instCtx.containsKey("role") && !_isSummaryResource {
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
Data controlled by this consent.

The resources controlled by this consent, if specific resources are referenced.
*/
open class ConsentData: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentData" }
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
Additional rule -  addition or removal of permissions.

An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
*/
open class ConsentExcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExcept" }
	}
	
	/// e.g. Resource Type, Profile, or CDA etc.
	public var `class`: [Coding]?
	
	/// Actions controlled by this exception.
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this exception (or group, by role).
	public var actor: [ConsentExceptActor]?
	
	/// e.g. LOINC or SNOMED CT code, etc in the content.
	public var code: [Coding]?
	
	/// Data controlled by this exception.
	public var data: [ConsentExceptData]?
	
	/// Timeframe for data controlled by this exception.
	public var dataPeriod: Period?
	
	/// Timeframe for this exception.
	public var period: Period?
	
	/// Context of activities covered by this exception.
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// Action  to take - permit or deny - when the exception conditions are met.
	public var type: ConsentExceptType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: ConsentExceptType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstances(of: Coding.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		action = createInstances(of: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		actor = createInstances(of: ConsentExceptActor.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		data = createInstances(of: ConsentExceptData.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		dataPeriod = createInstance(type: Period.self, for: "dataPeriod", in: json, context: &instCtx, owner: self) ?? dataPeriod
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		purpose = createInstances(of: Coding.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		securityLabel = createInstances(of: Coding.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		type = createEnum(type: ConsentExceptType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
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
		arrayDecorate(json: &json, withKey: "purpose", using: self.purpose, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Who|what controlled by this exception (or group, by role).

Who or what is controlled by this Exception. Use group to identify a set of actors by some property they share (e.g.
'admitting officers').
*/
open class ConsentExceptActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptActor" }
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
		if nil == reference && !instCtx.containsKey("reference") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
		if nil == role && !instCtx.containsKey("role") && !_isSummaryResource {
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
Data controlled by this exception.

The resources controlled by this exception, if specific resources are referenced.
*/
open class ConsentExceptData: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptData" }
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

