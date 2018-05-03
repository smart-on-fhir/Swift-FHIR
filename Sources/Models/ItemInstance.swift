//
//  ItemInstance.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/ItemInstance) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
A physical instance of an item.

A physical, countable instance of an item, for example one box or one unit.
*/
open class ItemInstance: DomainResource {
	override open class var resourceType: String {
		get { return "ItemInstance" }
	}
	
	/// The machine-readable AIDC string in base64 encoding.
	public var carrierAIDC: FHIRString?
	
	/// The human-readable barcode string.
	public var carrierHRF: FHIRString?
	
	/// The count of items.
	public var count: FHIRInteger?
	
	/// The Software version associated with the device.
	public var currentSWVersion: FHIRString?
	
	/// The expiry or preparation date and time.
	public var expiryDate: DateTime?
	
	/// The physical location of the item.
	public var location: Reference?
	
	/// The lot or batch number.
	public var lotNumber: FHIRString?
	
	/// The manufacture or preparation date and time.
	public var manufactureDate: DateTime?
	
	/// The serial number if available.
	public var serialNumber: FHIRString?
	
	/// The patient that the item is affixed to.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(count: FHIRInteger) {
		self.init()
		self.count = count
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		carrierAIDC = createInstance(type: FHIRString.self, for: "carrierAIDC", in: json, context: &instCtx, owner: self) ?? carrierAIDC
		carrierHRF = createInstance(type: FHIRString.self, for: "carrierHRF", in: json, context: &instCtx, owner: self) ?? carrierHRF
		count = createInstance(type: FHIRInteger.self, for: "count", in: json, context: &instCtx, owner: self) ?? count
		if nil == count && !instCtx.containsKey("count") {
			instCtx.addError(FHIRValidationError(missing: "count"))
		}
		currentSWVersion = createInstance(type: FHIRString.self, for: "currentSWVersion", in: json, context: &instCtx, owner: self) ?? currentSWVersion
		expiryDate = createInstance(type: DateTime.self, for: "expiryDate", in: json, context: &instCtx, owner: self) ?? expiryDate
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufactureDate = createInstance(type: DateTime.self, for: "manufactureDate", in: json, context: &instCtx, owner: self) ?? manufactureDate
		serialNumber = createInstance(type: FHIRString.self, for: "serialNumber", in: json, context: &instCtx, owner: self) ?? serialNumber
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.carrierAIDC?.decorate(json: &json, withKey: "carrierAIDC", errors: &errors)
		self.carrierHRF?.decorate(json: &json, withKey: "carrierHRF", errors: &errors)
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		if nil == self.count {
			errors.append(FHIRValidationError(missing: "count"))
		}
		self.currentSWVersion?.decorate(json: &json, withKey: "currentSWVersion", errors: &errors)
		self.expiryDate?.decorate(json: &json, withKey: "expiryDate", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufactureDate?.decorate(json: &json, withKey: "manufactureDate", errors: &errors)
		self.serialNumber?.decorate(json: &json, withKey: "serialNumber", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}

