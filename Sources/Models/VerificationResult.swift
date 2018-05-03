//
//  VerificationResult.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/VerificationResult) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	/// The result if validation fails (fatal; warning; record only; none).
	public var failureAction: FailureAction?
	
	/// Frequency of revalidation.
	public var frequency: Timing?
	
	/// The date/time validation was last completed (incl. failed validations).
	public var lastPerformed: DateTime?
	
	/// The frequency with which the target must be validated (none; initial; periodic).
	public var need: Need?
	
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
	
	/// What the target is validated against (nothing; primary source; multiple sources).
	public var validationType: ValidationType?
	
	/// Information about the entity validating information.
	public var validator: [VerificationResultValidator]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(failureAction: FailureAction, need: Need, status: Status, statusDate: DateTime, validationProcess: [CodeableConcept], validationType: ValidationType) {
		self.init()
		self.failureAction = failureAction
		self.need = need
		self.status = status
		self.statusDate = statusDate
		self.validationProcess = validationProcess
		self.validationType = validationType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attestation = createInstance(type: VerificationResultAttestation.self, for: "attestation", in: json, context: &instCtx, owner: self) ?? attestation
		failureAction = createEnum(type: FailureAction.self, for: "failureAction", in: json, context: &instCtx) ?? failureAction
		if nil == failureAction && !instCtx.containsKey("failureAction") {
			instCtx.addError(FHIRValidationError(missing: "failureAction"))
		}
		frequency = createInstance(type: Timing.self, for: "frequency", in: json, context: &instCtx, owner: self) ?? frequency
		lastPerformed = createInstance(type: DateTime.self, for: "lastPerformed", in: json, context: &instCtx, owner: self) ?? lastPerformed
		need = createEnum(type: Need.self, for: "need", in: json, context: &instCtx) ?? need
		if nil == need && !instCtx.containsKey("need") {
			instCtx.addError(FHIRValidationError(missing: "need"))
		}
		nextScheduled = createInstance(type: FHIRDate.self, for: "nextScheduled", in: json, context: &instCtx, owner: self) ?? nextScheduled
		primarySource = createInstances(of: VerificationResultPrimarySource.self, for: "primarySource", in: json, context: &instCtx, owner: self) ?? primarySource
		status = createEnum(type: Status.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		if nil == statusDate && !instCtx.containsKey("statusDate") {
			instCtx.addError(FHIRValidationError(missing: "statusDate"))
		}
		target = createInstances(of: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		targetLocation = createInstances(of: FHIRString.self, for: "targetLocation", in: json, context: &instCtx, owner: self) ?? targetLocation
		validationProcess = createInstances(of: CodeableConcept.self, for: "validationProcess", in: json, context: &instCtx, owner: self) ?? validationProcess
		if (nil == validationProcess || validationProcess!.isEmpty) && !instCtx.containsKey("validationProcess") {
			instCtx.addError(FHIRValidationError(missing: "validationProcess"))
		}
		validationType = createEnum(type: ValidationType.self, for: "validationType", in: json, context: &instCtx) ?? validationType
		if nil == validationType && !instCtx.containsKey("validationType") {
			instCtx.addError(FHIRValidationError(missing: "validationType"))
		}
		validator = createInstances(of: VerificationResultValidator.self, for: "validator", in: json, context: &instCtx, owner: self) ?? validator
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attestation?.decorate(json: &json, withKey: "attestation", errors: &errors)
		self.failureAction?.decorate(json: &json, withKey: "failureAction", errors: &errors)
		if nil == self.failureAction {
			errors.append(FHIRValidationError(missing: "failureAction"))
		}
		self.frequency?.decorate(json: &json, withKey: "frequency", errors: &errors)
		self.lastPerformed?.decorate(json: &json, withKey: "lastPerformed", errors: &errors)
		self.need?.decorate(json: &json, withKey: "need", errors: &errors)
		if nil == self.need {
			errors.append(FHIRValidationError(missing: "need"))
		}
		self.nextScheduled?.decorate(json: &json, withKey: "nextScheduled", errors: &errors)
		arrayDecorate(json: &json, withKey: "primarySource", using: self.primarySource, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		if nil == self.statusDate {
			errors.append(FHIRValidationError(missing: "statusDate"))
		}
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
		arrayDecorate(json: &json, withKey: "targetLocation", using: self.targetLocation, errors: &errors)
		arrayDecorate(json: &json, withKey: "validationProcess", using: self.validationProcess, errors: &errors)
		if nil == validationProcess || self.validationProcess!.isEmpty {
			errors.append(FHIRValidationError(missing: "validationProcess"))
		}
		self.validationType?.decorate(json: &json, withKey: "validationType", errors: &errors)
		if nil == self.validationType {
			errors.append(FHIRValidationError(missing: "validationType"))
		}
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
	
	/// The date the information was attested to.
	public var date: FHIRDate?
	
	/// Who is providing the attested information (owner; authorized representative; authorized intermediary; non-
	/// authorized source).
	public var method: CodeableConcept?
	
	/// The organization attesting to information.
	public var organization: Reference?
	
	/// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the
	/// attestation source.
	public var proxyIdentityCertificate: FHIRString?
	
	/// The individual attesting to information.
	public var source: Reference?
	
	/// A digital identity certificate associated with the attestation source.
	public var sourceIdentityCertificate: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: FHIRDate, method: CodeableConcept, organization: Reference, source: Reference) {
		self.init()
		self.date = date
		self.method = method
		self.organization = organization
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: FHIRDate.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		if nil == method && !instCtx.containsKey("method") {
			instCtx.addError(FHIRValidationError(missing: "method"))
		}
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		if nil == organization && !instCtx.containsKey("organization") {
			instCtx.addError(FHIRValidationError(missing: "organization"))
		}
		proxyIdentityCertificate = createInstance(type: FHIRString.self, for: "proxyIdentityCertificate", in: json, context: &instCtx, owner: self) ?? proxyIdentityCertificate
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		if nil == source && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
		sourceIdentityCertificate = createInstance(type: FHIRString.self, for: "sourceIdentityCertificate", in: json, context: &instCtx, owner: self) ?? sourceIdentityCertificate
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		if nil == self.method {
			errors.append(FHIRValidationError(missing: "method"))
		}
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		if nil == self.organization {
			errors.append(FHIRValidationError(missing: "organization"))
		}
		self.proxyIdentityCertificate?.decorate(json: &json, withKey: "proxyIdentityCertificate", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
		self.sourceIdentityCertificate?.decorate(json: &json, withKey: "sourceIdentityCertificate", errors: &errors)
	}
}


/**
Information about the primary source(s) involved in validation.
*/
open class VerificationResultPrimarySource: BackboneElement {
	override open class var resourceType: String {
		get { return "VerificationResultPrimarySource" }
	}
	
	/// Ability of the primary source to push updates/alerts (yes; no; undetermined).
	public var canPushUpdates: CanPushUpdates?
	
	/// URI of the primary source for validation.
	public var identifier: Identifier?
	
	/// Reference to the primary source.
	public var organization: Reference?
	
	/// Type of alerts/updates the primary source can send (specific requested changes; any changes; as defined by
	/// source).
	public var pushTypeAvailable: [PushTypeAvailable]?
	
	/// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship
	/// owner; Registration Authority; legal source; issuing source; authoritative source).
	public var type: [CodeableConcept]?
	
	/// When the target was validated against the primary source.
	public var validationDate: DateTime?
	
	/// Method for communicating with the primary source (manual; API; Push).
	public var validationProcess: [CodeableConcept]?
	
	/// Status of the validation of the target against the primary source (successful; failed; unknown).
	public var validationStatus: ValidationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(canPushUpdates: CanPushUpdates, type: [CodeableConcept], validationProcess: [CodeableConcept]) {
		self.init()
		self.canPushUpdates = canPushUpdates
		self.type = type
		self.validationProcess = validationProcess
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		canPushUpdates = createEnum(type: CanPushUpdates.self, for: "canPushUpdates", in: json, context: &instCtx) ?? canPushUpdates
		if nil == canPushUpdates && !instCtx.containsKey("canPushUpdates") {
			instCtx.addError(FHIRValidationError(missing: "canPushUpdates"))
		}
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		pushTypeAvailable = createEnums(of: PushTypeAvailable.self, for: "pushTypeAvailable", in: json, context: &instCtx) ?? pushTypeAvailable
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if (nil == type || type!.isEmpty) && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		validationDate = createInstance(type: DateTime.self, for: "validationDate", in: json, context: &instCtx, owner: self) ?? validationDate
		validationProcess = createInstances(of: CodeableConcept.self, for: "validationProcess", in: json, context: &instCtx, owner: self) ?? validationProcess
		if (nil == validationProcess || validationProcess!.isEmpty) && !instCtx.containsKey("validationProcess") {
			instCtx.addError(FHIRValidationError(missing: "validationProcess"))
		}
		validationStatus = createEnum(type: ValidationStatus.self, for: "validationStatus", in: json, context: &instCtx) ?? validationStatus
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.canPushUpdates?.decorate(json: &json, withKey: "canPushUpdates", errors: &errors)
		if nil == self.canPushUpdates {
			errors.append(FHIRValidationError(missing: "canPushUpdates"))
		}
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		arrayDecorate(json: &json, withKey: "pushTypeAvailable", using: self.pushTypeAvailable, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		if nil == type || self.type!.isEmpty {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.validationDate?.decorate(json: &json, withKey: "validationDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "validationProcess", using: self.validationProcess, errors: &errors)
		if nil == validationProcess || self.validationProcess!.isEmpty {
			errors.append(FHIRValidationError(missing: "validationProcess"))
		}
		self.validationStatus?.decorate(json: &json, withKey: "validationStatus", errors: &errors)
	}
}


/**
Information about the entity validating information.
*/
open class VerificationResultValidator: BackboneElement {
	override open class var resourceType: String {
		get { return "VerificationResultValidator" }
	}
	
	/// Date on which the validator last validated the information.
	public var dateValidated: FHIRDate?
	
	/// URI of the validator.
	public var identifier: Identifier?
	
	/// A digital identity certificate associated with the validator.
	public var identityCertificate: FHIRString?
	
	/// Reference to the organization validating information.
	public var organization: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateValidated: FHIRDate, organization: Reference) {
		self.init()
		self.dateValidated = dateValidated
		self.organization = organization
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dateValidated = createInstance(type: FHIRDate.self, for: "dateValidated", in: json, context: &instCtx, owner: self) ?? dateValidated
		if nil == dateValidated && !instCtx.containsKey("dateValidated") {
			instCtx.addError(FHIRValidationError(missing: "dateValidated"))
		}
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		identityCertificate = createInstance(type: FHIRString.self, for: "identityCertificate", in: json, context: &instCtx, owner: self) ?? identityCertificate
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		if nil == organization && !instCtx.containsKey("organization") {
			instCtx.addError(FHIRValidationError(missing: "organization"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.dateValidated?.decorate(json: &json, withKey: "dateValidated", errors: &errors)
		if nil == self.dateValidated {
			errors.append(FHIRValidationError(missing: "dateValidated"))
		}
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.identityCertificate?.decorate(json: &json, withKey: "identityCertificate", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		if nil == self.organization {
			errors.append(FHIRValidationError(missing: "organization"))
		}
	}
}

