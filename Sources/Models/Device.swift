//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Device) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Item used in healthcare.

A type of a manufactured item that is used in the provision of healthcare without being substantially changed through
that activity. The device may be a medical or non-medical device.
*/
open class Device: DomainResource {
	override open class var resourceType: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support.
	public var contact: [ContactPoint]?
	
	/// The reference to the definition for the device.
	public var definition: Reference?
	
	/// The name of the device as given by the manufacturer.
	public var deviceName: [DeviceDeviceName]?
	
	/// The distinct identification string.
	public var distinctIdentifier: FHIRString?
	
	/// Date and time of expiry of this device (if applicable).
	public var expirationDate: DateTime?
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Where the device is found.
	public var location: Reference?
	
	/// Lot number of manufacture.
	public var lotNumber: FHIRString?
	
	/// Date when the device was made.
	public var manufactureDate: DateTime?
	
	/// Name of device manufacturer.
	public var manufacturer: FHIRString?
	
	/// The model number for the device.
	public var modelNumber: FHIRString?
	
	/// Device notes and comments.
	public var note: [Annotation]?
	
	/// Organization responsible for device.
	public var owner: Reference?
	
	/// The parent device.
	public var parent: Reference?
	
	/// The part number of the device.
	public var partNumber: FHIRString?
	
	/// Patient to whom Device is affixed.
	public var patient: Reference?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
	public var property: [DeviceProperty]?
	
	/// Safety Characteristics of Device.
	public var safety: [CodeableConcept]?
	
	/// Serial number assigned by the manufacturer.
	public var serialNumber: FHIRString?
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication.
	public var specialization: [DeviceSpecialization]?
	
	/// Status of the Device availability.
	public var status: FHIRDeviceStatus?
	
	/// online | paused | standby | offline | not-ready | transduc-discon | hw-discon | off.
	public var statusReason: [CodeableConcept]?
	
	/// The kind or type of device.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udiCarrier: [DeviceUdiCarrier]?
	
	/// Network address to contact device.
	public var url: FHIRURL?
	
	/// The actual design of the device or software version running on the device.
	public var version: [DeviceVersion]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		definition = createInstance(type: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		deviceName = createInstances(of: DeviceDeviceName.self, for: "deviceName", in: json, context: &instCtx, owner: self) ?? deviceName
		distinctIdentifier = createInstance(type: FHIRString.self, for: "distinctIdentifier", in: json, context: &instCtx, owner: self) ?? distinctIdentifier
		expirationDate = createInstance(type: DateTime.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
		manufactureDate = createInstance(type: DateTime.self, for: "manufactureDate", in: json, context: &instCtx, owner: self) ?? manufactureDate
		manufacturer = createInstance(type: FHIRString.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		modelNumber = createInstance(type: FHIRString.self, for: "modelNumber", in: json, context: &instCtx, owner: self) ?? modelNumber
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		owner = createInstance(type: Reference.self, for: "owner", in: json, context: &instCtx, owner: self) ?? owner
		parent = createInstance(type: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		partNumber = createInstance(type: FHIRString.self, for: "partNumber", in: json, context: &instCtx, owner: self) ?? partNumber
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		property = createInstances(of: DeviceProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		safety = createInstances(of: CodeableConcept.self, for: "safety", in: json, context: &instCtx, owner: self) ?? safety
		serialNumber = createInstance(type: FHIRString.self, for: "serialNumber", in: json, context: &instCtx, owner: self) ?? serialNumber
		specialization = createInstances(of: DeviceSpecialization.self, for: "specialization", in: json, context: &instCtx, owner: self) ?? specialization
		status = createEnum(type: FHIRDeviceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		statusReason = createInstances(of: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		udiCarrier = createInstances(of: DeviceUdiCarrier.self, for: "udiCarrier", in: json, context: &instCtx, owner: self) ?? udiCarrier
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		version = createInstances(of: DeviceVersion.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "deviceName", using: self.deviceName, errors: &errors)
		self.distinctIdentifier?.decorate(json: &json, withKey: "distinctIdentifier", errors: &errors)
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
		self.manufactureDate?.decorate(json: &json, withKey: "manufactureDate", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		self.modelNumber?.decorate(json: &json, withKey: "modelNumber", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		self.partNumber?.decorate(json: &json, withKey: "partNumber", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		arrayDecorate(json: &json, withKey: "safety", using: self.safety, errors: &errors)
		self.serialNumber?.decorate(json: &json, withKey: "serialNumber", errors: &errors)
		arrayDecorate(json: &json, withKey: "specialization", using: self.specialization, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "statusReason", using: self.statusReason, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "udiCarrier", using: self.udiCarrier, errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "version", using: self.version, errors: &errors)
	}
}


/**
The name of the device as given by the manufacturer.

This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person
describing the Device.  This typically would be used when a person provides the name(s) or when the device represents
one of the names available from DeviceDefinition.
*/
open class DeviceDeviceName: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDeviceName" }
	}
	
	/// The name of the device.
	public var name: FHIRString?
	
	/// The type of deviceName.
	/// UDILabelName | UserFriendlyName | PatientReportedName | ManufactureDeviceName | ModelName.
	public var type: DeviceNameType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString, type: DeviceNameType) {
		self.init()
		self.name = name
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		type = createEnum(type: DeviceNameType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
*/
open class DeviceProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceProperty" }
	}
	
	/// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
	public var type: CodeableConcept?
	
	/// Property value as a code, e.g., NTP4 (synced to NTP).
	public var valueCode: [CodeableConcept]?
	
	/// Property value as a quantity.
	public var valueQuantity: [Quantity]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueCode = createInstances(of: CodeableConcept.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueQuantity = createInstances(of: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		arrayDecorate(json: &json, withKey: "valueCode", using: self.valueCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "valueQuantity", using: self.valueQuantity, errors: &errors)
	}
}


/**
The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used
for the communication.
*/
open class DeviceSpecialization: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceSpecialization" }
	}
	
	/// The standard that is used to operate and communicate.
	public var systemType: CodeableConcept?
	
	/// The version of the standard that is used to operate and communicate.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(systemType: CodeableConcept) {
		self.init()
		self.systemType = systemType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		systemType = createInstance(type: CodeableConcept.self, for: "systemType", in: json, context: &instCtx, owner: self) ?? systemType
		if nil == systemType && !instCtx.containsKey("systemType") {
			instCtx.addError(FHIRValidationError(missing: "systemType"))
		}
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.systemType?.decorate(json: &json, withKey: "systemType", errors: &errors)
		if nil == self.systemType {
			errors.append(FHIRValidationError(missing: "systemType"))
		}
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Unique Device Identifier (UDI) Barcode string.

Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple
udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions
it could have been sold.
*/
open class DeviceUdiCarrier: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceUdiCarrier" }
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		carrierAIDC = createInstance(type: Base64Binary.self, for: "carrierAIDC", in: json, context: &instCtx, owner: self) ?? carrierAIDC
		carrierHRF = createInstance(type: FHIRString.self, for: "carrierHRF", in: json, context: &instCtx, owner: self) ?? carrierHRF
		deviceIdentifier = createInstance(type: FHIRString.self, for: "deviceIdentifier", in: json, context: &instCtx, owner: self) ?? deviceIdentifier
		entryType = createEnum(type: UDIEntryType.self, for: "entryType", in: json, context: &instCtx) ?? entryType
		issuer = createInstance(type: FHIRURL.self, for: "issuer", in: json, context: &instCtx, owner: self) ?? issuer
		jurisdiction = createInstance(type: FHIRURL.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.carrierAIDC?.decorate(json: &json, withKey: "carrierAIDC", errors: &errors)
		self.carrierHRF?.decorate(json: &json, withKey: "carrierHRF", errors: &errors)
		self.deviceIdentifier?.decorate(json: &json, withKey: "deviceIdentifier", errors: &errors)
		self.entryType?.decorate(json: &json, withKey: "entryType", errors: &errors)
		self.issuer?.decorate(json: &json, withKey: "issuer", errors: &errors)
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
	}
}


/**
The actual design of the device or software version running on the device.
*/
open class DeviceVersion: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceVersion" }
	}
	
	/// A single component of the device version.
	public var component: Identifier?
	
	/// The type of the device version.
	public var type: CodeableConcept?
	
	/// The version text.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: FHIRString) {
		self.init()
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		component = createInstance(type: Identifier.self, for: "component", in: json, context: &instCtx, owner: self) ?? component
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.component?.decorate(json: &json, withKey: "component", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

