//
//  VisionPrescription.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (visionprescription.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Prescription for Vision correction products for a patient.
 *
 *  An authorization for the supply of glasses and/or contact lenses to a patient.
 */
public class VisionPrescription: FHIRResource
{
	override public class var resourceName: String {
		get { return "VisionPrescription" }
	}
	
	/// When prescription was authorized
	public var dateWritten: NSDate?
	
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateWritten"] as? String {
				self.dateWritten = NSDate(json: val)
			}
			if let val = js["dispense"] as? [NSDictionary] {
				self.dispense = VisionPrescriptionDispense.from(val, owner: self) as? [VisionPrescriptionDispense]
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["prescriber"] as? NSDictionary {
				self.prescriber = Reference(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? NSDictionary {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? NSDictionary {
				self.reasonReference = Reference(json: val, owner: self)
			}
		}
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
	
	public required init(json: NSDictionary?) {
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
			if let val = js["duration"] as? NSDictionary {
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
			if let val = js["product"] as? NSDictionary {
				self.product = Coding(json: val, owner: self)
			}
			if let val = js["sphere"] as? NSNumber {
				self.sphere = NSDecimalNumber(json: val)
			}
		}
	}
}

