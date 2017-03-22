//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Device) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Item used in healthcare.

This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare
without being substantially changed through that activity. The device may be a medical or non-medical device.  Medical
devices include durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
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
	
	/// Safety Characteristics of Device.
	public var safety: [CodeableConcept]?
	
	/// Status of the Device availability.
	public var status: FHIRDeviceStatus?
	
	/// What kind of device this is.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udi: DeviceUdi?
	
	/// Network address to contact device.
	public var url: FHIRURL?
	
	/// Version number (i.e. software).
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		expirationDate = createInstance(type: DateTime.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufactureDate = createInstance(type: DateTime.self, for: "manufactureDate", in: json, context: &instCtx, owner: self) ?? manufactureDate
		manufacturer = createInstance(type: FHIRString.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		model = createInstance(type: FHIRString.self, for: "model", in: json, context: &instCtx, owner: self) ?? model
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		owner = createInstance(type: Reference.self, for: "owner", in: json, context: &instCtx, owner: self) ?? owner
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		safety = createInstances(of: CodeableConcept.self, for: "safety", in: json, context: &instCtx, owner: self) ?? safety
		status = createEnum(type: FHIRDeviceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		udi = createInstance(type: DeviceUdi.self, for: "udi", in: json, context: &instCtx, owner: self) ?? udi
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
		arrayDecorate(json: &json, withKey: "safety", using: self.safety, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.udi?.decorate(json: &json, withKey: "udi", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Unique Device Identifier (UDI) Barcode string.

[Unique device identifier (UDI)](device.html#5.11.3.2.2) assigned to device label or package.
*/
open class DeviceUdi: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceUdi" }
	}
	
	/// UDI Machine Readable Barcode String.
	public var carrierAIDC: Base64Binary?
	
	/// UDI Human Readable Barcode String.
	public var carrierHRF: FHIRString?
	
	/// Mandatory fixed portion of UDI.
	public var deviceIdentifier: FHIRString?
	
	/// A coded entry to indicate how the data was entered.
	public var entryType: UDIEntryType?
	
	/// UDI Issuing Organization.
	public var issuer: FHIRURL?
	
	/// Regional UDI authority.
	public var jurisdiction: FHIRURL?
	
	/// Device Name as appears on UDI label.
	public var name: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		carrierAIDC = createInstance(type: Base64Binary.self, for: "carrierAIDC", in: json, context: &instCtx, owner: self) ?? carrierAIDC
		carrierHRF = createInstance(type: FHIRString.self, for: "carrierHRF", in: json, context: &instCtx, owner: self) ?? carrierHRF
		deviceIdentifier = createInstance(type: FHIRString.self, for: "deviceIdentifier", in: json, context: &instCtx, owner: self) ?? deviceIdentifier
		entryType = createEnum(type: UDIEntryType.self, for: "entryType", in: json, context: &instCtx) ?? entryType
		issuer = createInstance(type: FHIRURL.self, for: "issuer", in: json, context: &instCtx, owner: self) ?? issuer
		jurisdiction = createInstance(type: FHIRURL.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.carrierAIDC?.decorate(json: &json, withKey: "carrierAIDC", errors: &errors)
		self.carrierHRF?.decorate(json: &json, withKey: "carrierHRF", errors: &errors)
		self.deviceIdentifier?.decorate(json: &json, withKey: "deviceIdentifier", errors: &errors)
		self.entryType?.decorate(json: &json, withKey: "entryType", errors: &errors)
		self.issuer?.decorate(json: &json, withKey: "issuer", errors: &errors)
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
	}
}

