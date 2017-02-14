//
//  VisionPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Prescription for vision correction products for a patient.

An authorization for the supply of glasses and/or contact lenses to a patient.
*/
open class VisionPrescription: DomainResource {
	override open class var resourceType: String {
		get { return "VisionPrescription" }
	}
	
	/// When prescription was authorized.
	public var dateWritten: DateTime?
	
	/// Vision supply authorization.
	public var dispense: [VisionPrescriptionDispense]?
	
	/// Created during encounter / admission / stay.
	public var encounter: Reference?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Who prescription is for.
	public var patient: Reference?
	
	/// Who authorizes the vision product.
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription.
	public var reasonReference: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		dateWritten = try createInstance(type: DateTime.self, for: "dateWritten", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateWritten
		dispense = try createInstances(of: VisionPrescriptionDispense.self, for: "dispense", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dispense
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		prescriber = try createInstance(type: Reference.self, for: "prescriber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prescriber
		reasonCodeableConcept = try createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCodeableConcept
		reasonReference = try createInstance(type: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.dateWritten?.decorate(json: &json, withKey: "dateWritten", errors: &errors)
		arrayDecorate(json: &json, withKey: "dispense", using: self.dispense, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.prescriber?.decorate(json: &json, withKey: "prescriber", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Vision supply authorization.

Deals with details of the dispense part of the supply specification.
*/
open class VisionPrescriptionDispense: BackboneElement {
	override open class var resourceType: String {
		get { return "VisionPrescriptionDispense" }
	}
	
	/// Lens add.
	public var add: FHIRDecimal?
	
	/// Lens axis.
	public var axis: FHIRInteger?
	
	/// Contact lens back curvature.
	public var backCurve: FHIRDecimal?
	
	/// The relative base, or reference lens edge, for the prism.
	public var base: VisionBase?
	
	/// Brand required.
	public var brand: FHIRString?
	
	/// Color required.
	public var color: FHIRString?
	
	/// Lens cylinder.
	public var cylinder: FHIRDecimal?
	
	/// Contact lens diameter.
	public var diameter: FHIRDecimal?
	
	/// Lens wear duration.
	public var duration: Quantity?
	
	/// The eye for which the lens applies.
	public var eye: VisionEyes?
	
	/// Notes for coatings.
	public var note: [Annotation]?
	
	/// Contact lens power.
	public var power: FHIRDecimal?
	
	/// Lens prism.
	public var prism: FHIRDecimal?
	
	/// Product to be supplied.
	public var product: CodeableConcept?
	
	/// Lens sphere.
	public var sphere: FHIRDecimal?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		add = try createInstance(type: FHIRDecimal.self, for: "add", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? add
		axis = try createInstance(type: FHIRInteger.self, for: "axis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? axis
		backCurve = try createInstance(type: FHIRDecimal.self, for: "backCurve", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? backCurve
		base = createEnum(type: VisionBase.self, for: "base", in: json, presentKeys: &presentKeys, errors: &errors) ?? base
		brand = try createInstance(type: FHIRString.self, for: "brand", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? brand
		color = try createInstance(type: FHIRString.self, for: "color", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? color
		cylinder = try createInstance(type: FHIRDecimal.self, for: "cylinder", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? cylinder
		diameter = try createInstance(type: FHIRDecimal.self, for: "diameter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? diameter
		duration = try createInstance(type: Quantity.self, for: "duration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? duration
		eye = createEnum(type: VisionEyes.self, for: "eye", in: json, presentKeys: &presentKeys, errors: &errors) ?? eye
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		power = try createInstance(type: FHIRDecimal.self, for: "power", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? power
		prism = try createInstance(type: FHIRDecimal.self, for: "prism", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prism
		product = try createInstance(type: CodeableConcept.self, for: "product", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? product
		sphere = try createInstance(type: FHIRDecimal.self, for: "sphere", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sphere
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.add?.decorate(json: &json, withKey: "add", errors: &errors)
		self.axis?.decorate(json: &json, withKey: "axis", errors: &errors)
		self.backCurve?.decorate(json: &json, withKey: "backCurve", errors: &errors)
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		self.brand?.decorate(json: &json, withKey: "brand", errors: &errors)
		self.color?.decorate(json: &json, withKey: "color", errors: &errors)
		self.cylinder?.decorate(json: &json, withKey: "cylinder", errors: &errors)
		self.diameter?.decorate(json: &json, withKey: "diameter", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.eye?.decorate(json: &json, withKey: "eye", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.power?.decorate(json: &json, withKey: "power", errors: &errors)
		self.prism?.decorate(json: &json, withKey: "prism", errors: &errors)
		self.product?.decorate(json: &json, withKey: "product", errors: &errors)
		self.sphere?.decorate(json: &json, withKey: "sphere", errors: &errors)
	}
}

