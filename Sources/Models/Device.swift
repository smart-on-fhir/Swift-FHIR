//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Device) on 2016-12-08.
//  2016, SMART Health IT.
//

import Foundation


/**
Item used in healthcare.

This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare
without being substantially changed through that activity. The device may be a medical or non-medical device.  Medical
devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include items such as a
machine, cellphone, computer, application, etc.
*/
open class Device: DomainResource {
	override open class var resourceType: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support.
	public var contact: [ContactPoint]?
	
	/// Date and time of expiry of this device (if applicable).
	public var expirationDate: DateTime?
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Where the resource is found.
	public var location: Reference?
	
	/// Lot number of manufacture.
	public var lotNumber: FHIRString?
	
	/// Date when the device was made.
	public var manufactureDate: DateTime?
	
	/// Name of device manufacturer.
	public var manufacturer: FHIRString?
	
	/// Model id assigned by the manufacturer.
	public var model: FHIRString?
	
	/// Device notes and comments.
	public var note: [Annotation]?
	
	/// Organization responsible for device.
	public var owner: Reference?
	
	/// Patient to whom Device is affixed.
	public var patient: Reference?
	
	/// Status of the Device availability.
	public var status: DeviceStatus?
	
	/// What kind of device this is.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udiCarrier: Identifier?
	
	/// Network address to contact device.
	public var url: FHIRURL?
	
	/// Version number (i.e. software).
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contact = try createInstances(of: ContactPoint.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		expirationDate = try createInstance(type: DateTime.self, for: "expirationDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expirationDate
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		lotNumber = try createInstance(type: FHIRString.self, for: "lotNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lotNumber
		manufactureDate = try createInstance(type: DateTime.self, for: "manufactureDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manufactureDate
		manufacturer = try createInstance(type: FHIRString.self, for: "manufacturer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manufacturer
		model = try createInstance(type: FHIRString.self, for: "model", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? model
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		owner = try createInstance(type: Reference.self, for: "owner", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? owner
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		status = createEnum(type: DeviceStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		udiCarrier = try createInstance(type: Identifier.self, for: "udiCarrier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? udiCarrier
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufactureDate?.decorate(json: &json, withKey: "manufactureDate", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		self.model?.decorate(json: &json, withKey: "model", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.udiCarrier?.decorate(json: &json, withKey: "udiCarrier", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}

