//
//  VisionPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Prescription for Vision correction products for a patient.
 *
 *  An authorization for the supply of glasses and/or contact lenses to a patient.
 */
public class VisionPrescription: DomainResource
{
	override public class var resourceName: String {
		get { return "VisionPrescription" }
	}
	
	/// When prescription was authorized
	public var dateWritten: DateTime?
	
	/// Vision supply authorization
	public var dispense: [VisionPrescriptionDispense]?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who authorizes the Vision product
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription
	public var reasonReference: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateWritten"] as? String {
				self.dateWritten = DateTime(string: val)
			}
			if let val = js["dispense"] as? [FHIRJSON] {
				self.dispense = VisionPrescriptionDispense.from(val, owner: self) as? [VisionPrescriptionDispense]
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["prescriber"] as? FHIRJSON {
				self.prescriber = Reference(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? FHIRJSON {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? FHIRJSON {
				self.reasonReference = Reference(json: val, owner: self)
			}
		}
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
public class VisionPrescriptionDispense: FHIRElement
{
	override public class var resourceName: String {
		get { return "VisionPrescriptionDispense" }
	}
	
	/// Lens add
	public var add: NSDecimalNumber?
	
	/// Lens axis
	public var axis: Int?
	
	/// Contact lens back curvature
	public var backCurve: NSDecimalNumber?
	
	/// up | down | in | out
	public var base: String?
	
	/// Lens add
	public var brand: String?
	
	/// Lens add
	public var color: String?
	
	/// Lens cylinder
	public var cylinder: NSDecimalNumber?
	
	/// Contact Lens diameter
	public var diameter: NSDecimalNumber?
	
	/// Lens wear duration
	public var duration: Quantity?
	
	/// right | left
	public var eye: String?
	
	/// Notes for coatings
	public var notes: String?
	
	/// Contact Lens power
	public var power: NSDecimalNumber?
	
	/// Lens prism
	public var prism: NSDecimalNumber?
	
	/// Product to be supplied
	public var product: Coding?
	
	/// Lens sphere
	public var sphere: NSDecimalNumber?
	
	public convenience init(product: Coding?) {
		self.init(json: nil)
		if nil != product {
			self.product = product
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["add"] as? NSNumber {
				self.add = NSDecimalNumber(json: val)
			}
			if let val = js["axis"] as? Int {
				self.axis = val
			}
			if let val = js["backCurve"] as? NSNumber {
				self.backCurve = NSDecimalNumber(json: val)
			}
			if let val = js["base"] as? String {
				self.base = val
			}
			if let val = js["brand"] as? String {
				self.brand = val
			}
			if let val = js["color"] as? String {
				self.color = val
			}
			if let val = js["cylinder"] as? NSNumber {
				self.cylinder = NSDecimalNumber(json: val)
			}
			if let val = js["diameter"] as? NSNumber {
				self.diameter = NSDecimalNumber(json: val)
			}
			if let val = js["duration"] as? FHIRJSON {
				self.duration = Quantity(json: val, owner: self)
			}
			if let val = js["eye"] as? String {
				self.eye = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["power"] as? NSNumber {
				self.power = NSDecimalNumber(json: val)
			}
			if let val = js["prism"] as? NSNumber {
				self.prism = NSDecimalNumber(json: val)
			}
			if let val = js["product"] as? FHIRJSON {
				self.product = Coding(json: val, owner: self)
			}
			if let val = js["sphere"] as? NSNumber {
				self.sphere = NSDecimalNumber(json: val)
			}
		}
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

