//
//  MedicationAdministration.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Administration of medication to a patient.

Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing
prescription, and the specific encounter between patient and health care practitioner.
*/
open class MedicationAdministration: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationAdministration" }
	}
	
	/// Type of medication usage.
	public var category: CodeableConcept?
	
	/// Encounter or Episode of Care administered as part of.
	public var context: Reference?
	
	/// Instantiates protocol or definition.
	public var definition: [Reference]?
	
	/// Device used to administer.
	public var device: [Reference]?
	
	/// Details of how medication was taken.
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration.
	public var effectiveDateTime: DateTime?
	
	/// Start and end time of administration.
	public var effectivePeriod: Period?
	
	/// A list of events of interest in the lifecycle.
	public var eventHistory: [Reference]?
	
	/// External identifier.
	public var identifier: [Identifier]?
	
	/// What was administered.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// What was administered.
	public var medicationReference: Reference?
	
	/// True if medication not administered.
	public var notGiven: FHIRBool?
	
	/// Information about the administration.
	public var note: [Annotation]?
	
	/// Part of referenced event.
	public var partOf: [Reference]?
	
	/// Who administered substance.
	public var performer: [MedicationAdministrationPerformer]?
	
	/// Request administration performed against.
	public var prescription: Reference?
	
	/// Reason administration performed.
	public var reasonCode: [CodeableConcept]?
	
	/// Reason administration not performed.
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Condition or Observation that supports why the medication was administered.
	public var reasonReference: [Reference]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions it is possible for an administration to be started but not completed or it may be paused while
	/// some other process is under way.
	public var status: MedicationAdministrationStatus?
	
	/// Who received medication.
	public var subject: Reference?
	
	/// Additional information to support administration.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(effective: Any, medication: Any, status: MedicationAdministrationStatus, subject: Reference) {
		self.init()
		if let value = effective as? DateTime {
			self.effectiveDateTime = value
		}
		else if let value = effective as? Period {
			self.effectivePeriod = value
		}
		else {
			fhir_warn("Type “\(type(of: effective))” for property “\(effective)” is invalid, ignoring")
		}
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		device = createInstances(of: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		dosage = createInstance(type: MedicationAdministrationDosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		eventHistory = createInstances(of: Reference.self, for: "eventHistory", in: json, context: &instCtx, owner: self) ?? eventHistory
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		notGiven = createInstance(type: FHIRBool.self, for: "notGiven", in: json, context: &instCtx, owner: self) ?? notGiven
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		performer = createInstances(of: MedicationAdministrationPerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		prescription = createInstance(type: Reference.self, for: "prescription", in: json, context: &instCtx, owner: self) ?? prescription
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonNotGiven = createInstances(of: CodeableConcept.self, for: "reasonNotGiven", in: json, context: &instCtx, owner: self) ?? reasonNotGiven
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		status = createEnum(type: MedicationAdministrationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		supportingInformation = createInstances(of: Reference.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.effectiveDateTime && nil == self.effectivePeriod {
			instCtx.addError(FHIRValidationError(missing: "effective[x]"))
		}
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		arrayDecorate(json: &json, withKey: "device", using: self.device, errors: &errors)
		self.dosage?.decorate(json: &json, withKey: "dosage", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		self.notGiven?.decorate(json: &json, withKey: "notGiven", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotGiven", using: self.reasonNotGiven, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInformation", using: self.supportingInformation, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.effectiveDateTime && nil == self.effectivePeriod {
			errors.append(FHIRValidationError(missing: "effective[x]"))
		}
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
	}
}


/**
Details of how medication was taken.

Describes the medication dosage information details e.g. dose, rate, site, route, etc.
*/
open class MedicationAdministrationDosage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationAdministrationDosage" }
	}
	
	/// Amount of medication per dose.
	public var dose: Quantity?
	
	/// How drug was administered.
	public var method: CodeableConcept?
	
	/// Dose quantity per unit of time.
	public var rateQuantity: Quantity?
	
	/// Dose quantity per unit of time.
	public var rateRatio: Ratio?
	
	/// Path of substance into body.
	public var route: CodeableConcept?
	
	/// Body site administered to.
	public var site: CodeableConcept?
	
	/// Free text dosage instructions e.g. SIG.
	public var text: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dose = createInstance(type: Quantity.self, for: "dose", in: json, context: &instCtx, owner: self) ?? dose
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		rateQuantity = createInstance(type: Quantity.self, for: "rateQuantity", in: json, context: &instCtx, owner: self) ?? rateQuantity
		rateRatio = createInstance(type: Ratio.self, for: "rateRatio", in: json, context: &instCtx, owner: self) ?? rateRatio
		route = createInstance(type: CodeableConcept.self, for: "route", in: json, context: &instCtx, owner: self) ?? route
		site = createInstance(type: CodeableConcept.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.dose?.decorate(json: &json, withKey: "dose", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.rateQuantity?.decorate(json: &json, withKey: "rateQuantity", errors: &errors)
		self.rateRatio?.decorate(json: &json, withKey: "rateRatio", errors: &errors)
		self.route?.decorate(json: &json, withKey: "route", errors: &errors)
		self.site?.decorate(json: &json, withKey: "site", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}


/**
Who administered substance.

The individual who was responsible for giving the medication to the patient.
*/
open class MedicationAdministrationPerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationAdministrationPerformer" }
	}
	
	/// Individual who was performing.
	public var actor: Reference?
	
	/// Organization organization was acting for.
	public var onBehalfOf: Reference?
	
	
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
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}

