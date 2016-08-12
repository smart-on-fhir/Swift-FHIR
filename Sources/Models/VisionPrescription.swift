//
//  VisionPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Prescription for vision correction products for a patient.
 *
 *  An authorization for the supply of glasses and/or contact lenses to a patient.
 */
public class VisionPrescription: DomainResource {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["dateWritten"] {
				presentKeys.insert("dateWritten")
				if let val = exist as? String {
					self.dateWritten = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateWritten", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dispense"] {
				presentKeys.insert("dispense")
				if let val = exist as? [FHIRJSON] {
					self.dispense = VisionPrescriptionDispense.from(val, owner: self) as? [VisionPrescriptionDispense]
				}
				else {
					errors.append(FHIRJSONError(key: "dispense", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prescriber"] {
				presentKeys.insert("prescriber")
				if let val = exist as? FHIRJSON {
					self.prescriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescriber", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispense = self.dispense {
			json["dispense"] = VisionPrescriptionDispense.asJSONArray(dispense)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
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
		
		return json
	}
}


/**
 *  Vision supply authorization.
 *
 *  Deals with details of the dispense part of the supply specification.
 */
public class VisionPrescriptionDispense: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["add"] {
				presentKeys.insert("add")
				if let val = exist as? NSNumber {
					self.add = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "add", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["axis"] {
				presentKeys.insert("axis")
				if let val = exist as? Int {
					self.axis = val
				}
				else {
					errors.append(FHIRJSONError(key: "axis", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["backCurve"] {
				presentKeys.insert("backCurve")
				if let val = exist as? NSNumber {
					self.backCurve = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "backCurve", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? String {
					self.base = val
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["brand"] {
				presentKeys.insert("brand")
				if let val = exist as? String {
					self.brand = val
				}
				else {
					errors.append(FHIRJSONError(key: "brand", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["color"] {
				presentKeys.insert("color")
				if let val = exist as? String {
					self.color = val
				}
				else {
					errors.append(FHIRJSONError(key: "color", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["cylinder"] {
				presentKeys.insert("cylinder")
				if let val = exist as? NSNumber {
					self.cylinder = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "cylinder", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["diameter"] {
				presentKeys.insert("diameter")
				if let val = exist as? NSNumber {
					self.diameter = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "diameter", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? FHIRJSON {
					self.duration = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["eye"] {
				presentKeys.insert("eye")
				if let val = exist as? String {
					self.eye = val
				}
				else {
					errors.append(FHIRJSONError(key: "eye", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["power"] {
				presentKeys.insert("power")
				if let val = exist as? NSNumber {
					self.power = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "power", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prism"] {
				presentKeys.insert("prism")
				if let val = exist as? NSNumber {
					self.prism = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "prism", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? FHIRJSON {
					self.product = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "product"))
			}
			if let exist: AnyObject = js["sphere"] {
				presentKeys.insert("sphere")
				if let val = exist as? NSNumber {
					self.sphere = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "sphere", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

