//
//  MedicationAdministration.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Device used to administer.
	public var device: [Reference]?
	
	/// Details of how medication was taken.
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration.
	public var effectiveDateTime: DateTime?
	
	/// Start and end time of administration.
	public var effectivePeriod: Period?
	
	/// Encounter administered as part of.
	public var encounter: Reference?
	
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
	
	/// Who received medication.
	public var patient: Reference?
	
	/// Who administered substance.
	public var performer: Reference?
	
	/// Request administration performed against.
	public var prescription: Reference?
	
	/// Reason administration performed.
	public var reasonGiven: [CodeableConcept]?
	
	/// Reason administration not performed.
	public var reasonNotGiven: [CodeableConcept]?
	
	/// Condition or Observation that supports why the medication was administered.
	public var reasonReference: [Reference]?
	
	/// Will generally be set to show that the administration has been completed.  For some long running administrations
	/// such as infusions it is possible for an administration to be started but not completed or it may be paused while
	/// some other process is under way.
	public var status: MedicationAdministrationStatus?
	
	/// Additional information to support administration.
	public var supportingInformation: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(effective: Any, medication: Any, patient: Reference, status: MedicationAdministrationStatus) {
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
		self.patient = patient
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		device = try createInstances(of: Reference.self, for: "device", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? device
		dosage = try createInstance(type: MedicationAdministrationDosage.self, for: "dosage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dosage
		effectiveDateTime = try createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectiveDateTime
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		eventHistory = try createInstances(of: Reference.self, for: "eventHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventHistory
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medicationCodeableConcept = try createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationCodeableConcept
		medicationReference = try createInstance(type: Reference.self, for: "medicationReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medicationReference
		notGiven = try createInstance(type: FHIRBool.self, for: "notGiven", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? notGiven
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		prescription = try createInstance(type: Reference.self, for: "prescription", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prescription
		reasonGiven = try createInstances(of: CodeableConcept.self, for: "reasonGiven", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonGiven
		reasonNotGiven = try createInstances(of: CodeableConcept.self, for: "reasonNotGiven", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonNotGiven
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		status = createEnum(type: MedicationAdministrationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		supportingInformation = try createInstances(of: Reference.self, for: "supportingInformation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInformation
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.effectiveDateTime && nil == self.effectivePeriod {
			errors.append(FHIRValidationError(missing: "effective[x]"))
		}
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "device", using: self.device, errors: &errors)
		self.dosage?.decorate(json: &json, withKey: "dosage", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "eventHistory", using: self.eventHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		self.notGiven?.decorate(json: &json, withKey: "notGiven", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.prescription?.decorate(json: &json, withKey: "prescription", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonGiven", using: self.reasonGiven, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonNotGiven", using: self.reasonNotGiven, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		dose = try createInstance(type: Quantity.self, for: "dose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dose
		method = try createInstance(type: CodeableConcept.self, for: "method", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? method
		rateQuantity = try createInstance(type: Quantity.self, for: "rateQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateQuantity
		rateRatio = try createInstance(type: Ratio.self, for: "rateRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateRatio
		route = try createInstance(type: CodeableConcept.self, for: "route", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? route
		site = try createInstance(type: CodeableConcept.self, for: "site", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? site
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		
		return errors.isEmpty ? nil : errors
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

