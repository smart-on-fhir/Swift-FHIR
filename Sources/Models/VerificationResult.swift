//
//  VerificationResult.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/VerificationResult) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Describes validation requirements, source(s), status and dates for one or more elements.
*/
open class VerificationResult: DomainResource {
	override open class var resourceType: String {
		get { return "VerificationResult" }
	}
	
	/// Information about the entity attesting to information.
	public var attestation: VerificationResultAttestation?
	
	/// fatal | warn | rec-only | none.
	public var failureAction: CodeableConcept?
	
	/// Frequency of revalidation.
	public var frequency: Timing?
	
	/// The date/time validation was last completed (including failed validations).
	public var lastPerformed: DateTime?
	
	/// none | initial | periodic.
	public var need: CodeableConcept?
	
	/// The date when target is next validated, if appropriate.
	public var nextScheduled: FHIRDate?
	
	/// Information about the primary source(s) involved in validation.
	public var primarySource: [VerificationResultPrimarySource]?
	
	/// The validation status of the target (attested; validated; in process; requires revalidation; validation failed;
	/// revalidation failed).
	public var status: Status?
	
	/// When the validation status was updated.
	public var statusDate: DateTime?
	
	/// A resource that was validated.
	public var target: [Reference]?
	
	/// The fhirpath location(s) within the resource that was validated.
	public var targetLocation: [FHIRString]?
	
	/// The primary process by which the target is validated (edit check; value set; primary source; multiple sources;
	/// standalone; in context).
	public var validationProcess: [CodeableConcept]?
	
	/// nothing | primary | multiple.
	public var validationType: CodeableConcept?
	
	/// Information about the entity validating information.
	public var validator: [VerificationResultValidator]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: Status) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attestation = createInstance(type: VerificationResultAttestation.self, for: "attestation", in: json, context: &instCtx, owner: self) ?? attestation
		failureAction = createInstance(type: CodeableConcept.self, for: "failureAction", in: json, context: &instCtx, owner: self) ?? failureAction
		frequency = createInstance(type: Timing.self, for: "frequency", in: json, context: &instCtx, owner: self) ?? frequency
		lastPerformed = createInstance(type: DateTime.self, for: "lastPerformed", in: json, context: &instCtx, owner: self) ?? lastPerformed
		need = createInstance(type: CodeableConcept.self, for: "need", in: json, context: &instCtx, owner: self) ?? need
		nextScheduled = createInstance(type: FHIRDate.self, for: "nextScheduled", in: json, context: &instCtx, owner: self) ?? nextScheduled
		primarySource = createInstances(of: VerificationResultPrimarySource.self, for: "primarySource", in: json, context: &instCtx, owner: self) ?? primarySource
		status = createEnum(type: Status.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		target = createInstances(of: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		targetLocation = createInstances(of: FHIRString.self, for: "targetLocation", in: json, context: &instCtx, owner: self) ?? targetLocation
		validationProcess = createInstances(of: CodeableConcept.self, for: "validationProcess", in: json, context: &instCtx, owner: self) ?? validationProcess
		validationType = createInstance(type: CodeableConcept.self, for: "validationType", in: json, context: &instCtx, owner: self) ?? validationType
		validator = createInstances(of: VerificationResultValidator.self, for: "validator", in: json, context: &instCtx, owner: self) ?? validator
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attestation?.decorate(json: &json, withKey: "attestation", errors: &errors)
		self.failureAction?.decorate(json: &json, withKey: "failureAction", errors: &errors)
		self.frequency?.decorate(json: &json, withKey: "frequency", errors: &errors)
		self.lastPerformed?.decorate(json: &json, withKey: "lastPerformed", errors: &errors)
		self.need?.decorate(json: &json, withKey: "need", errors: &errors)
		self.nextScheduled?.decorate(json: &json, withKey: "nextScheduled", errors: &errors)
		arrayDecorate(json: &json, withKey: "primarySource", using: self.primarySource, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
		arrayDecorate(json: &json, withKey: "targetLocation", using: self.targetLocation, errors: &errors)
		arrayDecorate(json: &json, withKey: "validationProcess", using: self.validationProcess, errors: &errors)
		self.validationType?.decorate(json: &json, withKey: "validationType", errors: &errors)
		arrayDecorate(json: &json, withKey: "validator", using: self.validator, errors: &errors)
	}
}


/**
Information about the entity attesting to information.
*/
open class VerificationResultAttestation: BackboneElement {
	override open class var resourceType: String {
		get { return "VerificationResultAttestation" }
	}
	
	/// The method by which attested information was submitted/retrieved.
	public var communicationMethod: CodeableConcept?
	
	/// The date the information was attested to.
	public var date: FHIRDate?
	
	/// When the who is asserting on behalf of another (organization or individual).
	public var onBehalfOf: Reference?
	
	/// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the
	/// attestation source.
	public var proxyIdentityCertificate: FHIRString?
	
	/// Proxy signature.
	public var proxySignature: Signature?
	
	/// A digital identity certificate associated with the attestation source.
	public var sourceIdentityCertificate: FHIRString?
	
	/// Attester signature.
	public var sourceSignature: Signature?
	
	/// The individual or organization attesting to information.
	public var who: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		communicationMethod = createInstance(type: CodeableConcept.self, for: "communicationMethod", in: json, context: &instCtx, owner: self) ?? communicationMethod
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
		proxyIdentityCertificate = createInstance(type: FHIRString.self, for: "proxyIdentityCertificate", in: json, context: &instCtx, owner: self) ?? proxyIdentityCertificate
		proxySignature = createInstance(type: Signature.self, for: "proxySignature", in: json, context: &instCtx, owner: self) ?? proxySignature
		sourceIdentityCertificate = createInstance(type: FHIRString.self, for: "sourceIdentityCertificate", in: json, context: &instCtx, owner: self) ?? sourceIdentityCertificate
		sourceSignature = createInstance(type: Signature.self, for: "sourceSignature", in: json, context: &instCtx, owner: self) ?? sourceSignature
		who = createInstance(type: Reference.self, for: "who", in: json, context: &instCtx, owner: self) ?? who
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.communicationMethod?.decorate(json: &json, withKey: "communicationMethod", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.proxyIdentityCertificate?.decorate(json: &json, withKey: "proxyIdentityCertificate", errors: &errors)
		self.proxySignature?.decorate(json: &json, withKey: "proxySignature", errors: &errors)
		self.sourceIdentityCertificate?.decorate(json: &json, withKey: "sourceIdentityCertificate", errors: &errors)
		self.sourceSignature?.decorate(json: &json, withKey: "sourceSignature", errors: &errors)
		self.who?.decorate(json: &json, withKey: "who", errors: &errors)
	}
}


/**
Information about the primary source(s) involved in validation.
*/
open class VerificationResultPrimarySource: BackboneElement {
	override open class var resourceType: String {
		get { return "VerificationResultPrimarySource" }
	}
	
	/// yes | no | undetermined.
	public var canPushUpdates: CodeableConcept?
	
	/// Method for exchanging information with the primary source.
	public var communicationMethod: [CodeableConcept]?
	
	/// specific | any | source.
	public var pushTypeAvailable: [CodeableConcept]?
	
	/// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship
	/// owner; Registration Authority; legal source; issuing source; authoritative source).
	public var type: [CodeableConcept]?
	
	/// When the target was validated against the primary source.
	public var validationDate: DateTime?
	
	/// successful | failed | unknown.
	public var validationStatus: CodeableConcept?
	
	/// Reference to the primary source.
	public var who: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		canPushUpdates = createInstance(type: CodeableConcept.self, for: "canPushUpdates", in: json, context: &instCtx, owner: self) ?? canPushUpdates
		communicationMethod = createInstances(of: CodeableConcept.self, for: "communicationMethod", in: json, context: &instCtx, owner: self) ?? communicationMethod
		pushTypeAvailable = createInstances(of: CodeableConcept.self, for: "pushTypeAvailable", in: json, context: &instCtx, owner: self) ?? pushTypeAvailable
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		validationDate = createInstance(type: DateTime.self, for: "validationDate", in: json, context: &instCtx, owner: self) ?? validationDate
		validationStatus = createInstance(type: CodeableConcept.self, for: "validationStatus", in: json, context: &instCtx, owner: self) ?? validationStatus
		who = createInstance(type: Reference.self, for: "who", in: json, context: &instCtx, owner: self) ?? who
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.canPushUpdates?.decorate(json: &json, withKey: "canPushUpdates", errors: &errors)
		arrayDecorate(json: &json, withKey: "communicationMethod", using: self.communicationMethod, errors: &errors)
		arrayDecorate(json: &json, withKey: "pushTypeAvailable", using: self.pushTypeAvailable, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		self.validationDate?.decorate(json: &json, withKey: "validationDate", errors: &errors)
		self.validationStatus?.decorate(json: &json, withKey: "validationStatus", errors: &errors)
		self.who?.decorate(json: &json, withKey: "who", errors: &errors)
	}
}


/**
Information about the entity validating information.
*/
open class VerificationResultValidator: BackboneElement {
	override open class var resourceType: String {
		get { return "VerificationResultValidator" }
	}
	
	/// Validator signature.
	public var attestationSignature: Signature?
	
	/// A digital identity certificate associated with the validator.
	public var identityCertificate: FHIRString?
	
	/// Reference to the organization validating information.
	public var organization: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(organization: Reference) {
		self.init()
		self.organization = organization
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attestationSignature = createInstance(type: Signature.self, for: "attestationSignature", in: json, context: &instCtx, owner: self) ?? attestationSignature
		identityCertificate = createInstance(type: FHIRString.self, for: "identityCertificate", in: json, context: &instCtx, owner: self) ?? identityCertificate
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		if nil == organization && !instCtx.containsKey("organization") {
			instCtx.addError(FHIRValidationError(missing: "organization"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attestationSignature?.decorate(json: &json, withKey: "attestationSignature", errors: &errors)
		self.identityCertificate?.decorate(json: &json, withKey: "identityCertificate", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		if nil == self.organization {
			errors.append(FHIRValidationError(missing: "organization"))
		}
	}
}

