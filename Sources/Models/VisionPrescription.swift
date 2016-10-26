//
//  VisionPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2016-10-26.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["dateWritten"] {
				presentKeys.insert("dateWritten")
				if let val = exist as? String {
					self.dateWritten = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateWritten", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["dispense"] {
				presentKeys.insert("dispense")
				if let val = exist as? [FHIRJSON] {
					self.dispense = VisionPrescriptionDispense.instantiate(fromArray: val, owner: self) as? [VisionPrescriptionDispense]
				}
				else {
					errors.append(FHIRJSONError(key: "dispense", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prescriber"] {
				presentKeys.insert("prescriber")
				if let val = exist as? FHIRJSON {
					self.prescriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriber", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispense = self.dispense {
			json["dispense"] = dispense.map() { $0.asJSON() }
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(product: Coding) {
		self.init(json: nil)
		self.product = product
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["add"] {
				presentKeys.insert("add")
				if let val = exist as? NSNumber {
					self.add = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "add", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["axis"] {
				presentKeys.insert("axis")
				if let val = exist as? Int {
					self.axis = val
				}
				else {
					errors.append(FHIRJSONError(key: "axis", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["backCurve"] {
				presentKeys.insert("backCurve")
				if let val = exist as? NSNumber {
					self.backCurve = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "backCurve", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = val
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["brand"] {
				presentKeys.insert("brand")
				if let val = exist as? String {
					self.brand = val
				}
				else {
					errors.append(FHIRJSONError(key: "brand", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["color"] {
				presentKeys.insert("color")
				if let val = exist as? String {
					self.color = val
				}
				else {
					errors.append(FHIRJSONError(key: "color", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["cylinder"] {
				presentKeys.insert("cylinder")
				if let val = exist as? NSNumber {
					self.cylinder = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "cylinder", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["diameter"] {
				presentKeys.insert("diameter")
				if let val = exist as? NSNumber {
					self.diameter = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "diameter", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? FHIRJSON {
					self.duration = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["eye"] {
				presentKeys.insert("eye")
				if let val = exist as? String {
					self.eye = val
				}
				else {
					errors.append(FHIRJSONError(key: "eye", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["power"] {
				presentKeys.insert("power")
				if let val = exist as? NSNumber {
					self.power = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "power", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["prism"] {
				presentKeys.insert("prism")
				if let val = exist as? NSNumber {
					self.prism = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "prism", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? FHIRJSON {
					self.product = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "product"))
			}
			if let exist = js["sphere"] {
				presentKeys.insert("sphere")
				if let val = exist as? NSNumber {
					self.sphere = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "sphere", wants: NSNumber.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["duration"] = duration.asJSON()
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
			json["product"] = product.asJSON()
		}
		if let sphere = self.sphere {
			json["sphere"] = sphere.asJSON()
		}
		
		return json
	}
}

