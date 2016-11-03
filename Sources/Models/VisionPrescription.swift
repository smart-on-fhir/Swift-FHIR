//
//  VisionPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Prescription for vision correction products for a patient.
 *
 *  An authorization for the supply of glasses and/or contact lenses to a patient.
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
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["dateWritten"] {
			presentKeys.insert("dateWritten")
			if let val = exist as? String {
				self.dateWritten = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateWritten", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["dispense"] {
			presentKeys.insert("dispense")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dispense = try VisionPrescriptionDispense.instantiate(fromArray: val, owner: self) as? [VisionPrescriptionDispense]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dispense"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dispense", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["prescriber"] {
			presentKeys.insert("prescriber")
			if let val = exist as? FHIRJSON {
				do {
					self.prescriber = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "prescriber"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "prescriber", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCodeableConcept"] {
			presentKeys.insert("reasonCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispense = self.dispense {
			json["dispense"] = dispense.map() { $0.asJSON(errors: &errors) }
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON(errors: &errors)
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON(errors: &errors)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Vision supply authorization.
 *
 *  Deals with details of the dispense part of the supply specification.
 */
open class VisionPrescriptionDispense: BackboneElement {
	override open class var resourceType: String {
		get { return "VisionPrescriptionDispense" }
	}
	
	/// Lens add.
	public var add: NSDecimalNumber?
	
	/// Lens axis.
	public var axis: Int?
	
	/// Contact lens back curvature.
	public var backCurve: NSDecimalNumber?
	
	/// up | down | in | out.
	public var base: String?
	
	/// Brand required.
	public var brand: String?
	
	/// Color required.
	public var color: String?
	
	/// Lens cylinder.
	public var cylinder: NSDecimalNumber?
	
	/// Contact lens diameter.
	public var diameter: NSDecimalNumber?
	
	/// Lens wear duration.
	public var duration: Quantity?
	
	/// right | left.
	public var eye: String?
	
	/// Notes for coatings.
	public var notes: String?
	
	/// Contact lens power.
	public var power: NSDecimalNumber?
	
	/// Lens prism.
	public var prism: NSDecimalNumber?
	
	/// Product to be supplied.
	public var product: Coding?
	
	/// Lens sphere.
	public var sphere: NSDecimalNumber?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(product: Coding) {
		self.init()
		self.product = product
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["add"] {
			presentKeys.insert("add")
			if let val = exist as? NSNumber {
				self.add = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "add", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["axis"] {
			presentKeys.insert("axis")
			if let val = exist as? Int {
				self.axis = val
			}
			else {
				errors.append(FHIRValidationError(key: "axis", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["backCurve"] {
			presentKeys.insert("backCurve")
			if let val = exist as? NSNumber {
				self.backCurve = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "backCurve", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["base"] {
			presentKeys.insert("base")
			if let val = exist as? String {
				self.base = val
			}
			else {
				errors.append(FHIRValidationError(key: "base", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["brand"] {
			presentKeys.insert("brand")
			if let val = exist as? String {
				self.brand = val
			}
			else {
				errors.append(FHIRValidationError(key: "brand", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["color"] {
			presentKeys.insert("color")
			if let val = exist as? String {
				self.color = val
			}
			else {
				errors.append(FHIRValidationError(key: "color", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["cylinder"] {
			presentKeys.insert("cylinder")
			if let val = exist as? NSNumber {
				self.cylinder = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "cylinder", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["diameter"] {
			presentKeys.insert("diameter")
			if let val = exist as? NSNumber {
				self.diameter = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "diameter", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["duration"] {
			presentKeys.insert("duration")
			if let val = exist as? FHIRJSON {
				do {
					self.duration = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "duration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "duration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["eye"] {
			presentKeys.insert("eye")
			if let val = exist as? String {
				self.eye = val
			}
			else {
				errors.append(FHIRValidationError(key: "eye", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["notes"] {
			presentKeys.insert("notes")
			if let val = exist as? String {
				self.notes = val
			}
			else {
				errors.append(FHIRValidationError(key: "notes", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["power"] {
			presentKeys.insert("power")
			if let val = exist as? NSNumber {
				self.power = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "power", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["prism"] {
			presentKeys.insert("prism")
			if let val = exist as? NSNumber {
				self.prism = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "prism", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["product"] {
			presentKeys.insert("product")
			if let val = exist as? FHIRJSON {
				do {
					self.product = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "product"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "product", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "product"))
		}
		if let exist = json["sphere"] {
			presentKeys.insert("sphere")
			if let val = exist as? NSNumber {
				self.sphere = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sphere", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let add = self.add {
			json["add"] = add.asJSON()
		}
		if let axis = self.axis {
			json["axis"] = axis.asJSON()
		}
		if let backCurve = self.backCurve {
			json["backCurve"] = backCurve.asJSON()
		}
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let brand = self.brand {
			json["brand"] = brand.asJSON()
		}
		if let color = self.color {
			json["color"] = color.asJSON()
		}
		if let cylinder = self.cylinder {
			json["cylinder"] = cylinder.asJSON()
		}
		if let diameter = self.diameter {
			json["diameter"] = diameter.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON(errors: &errors)
		}
		if let eye = self.eye {
			json["eye"] = eye.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let power = self.power {
			json["power"] = power.asJSON()
		}
		if let prism = self.prism {
			json["prism"] = prism.asJSON()
		}
		if let product = self.product {
			json["product"] = product.asJSON(errors: &errors)
		}
		if let sphere = self.sphere {
			json["sphere"] = sphere.asJSON()
		}
		
		return json
	}
}

