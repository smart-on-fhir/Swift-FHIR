//
//  DeviceDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DeviceDefinition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An instance of a medical-related component of a medical device.

The characteristics, operational status and capabilities of a medical-related component of a medical device.
*/
open class DeviceDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceDefinition" }
	}
	
	/// Device capabilities.
	public var capability: [DeviceDefinitionCapability]?
	
	/// Details for human/organization for support.
	public var contact: [ContactPoint]?
	
	/// A name given to the device to identify it.
	public var deviceName: [DeviceDefinitionDeviceName]?
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Language code for the human-readable text strings produced by the device (all supported).
	public var languageCode: [CodeableConcept]?
	
	/// Name of device manufacturer.
	public var manufacturerReference: Reference?
	
	/// Name of device manufacturer.
	public var manufacturerString: FHIRString?
	
	/// A substance used to create the material(s) of which the device is made.
	public var material: [DeviceDefinitionMaterial]?
	
	/// The model number for the device.
	public var modelNumber: FHIRString?
	
	/// Device notes and comments.
	public var note: [Annotation]?
	
	/// Access to on-line information.
	public var onlineInformation: FHIRURL?
	
	/// Organization responsible for device.
	public var owner: Reference?
	
	/// The parent device it can be part of.
	public var parentDevice: Reference?
	
	/// Dimensions, color etc..
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
	public var property: [DeviceDefinitionProperty]?
	
	/// The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number
	/// of devices in the same package of the medicinal product).
	public var quantity: Quantity?
	
	/// Safety characteristics of the device.
	public var safety: [CodeableConcept]?
	
	/// Shelf Life and storage information.
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose,
	/// and used for the communication.
	public var specialization: [DeviceDefinitionSpecialization]?
	
	/// What kind of device or device system this is.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udiDeviceIdentifier: [DeviceDefinitionUdiDeviceIdentifier]?
	
	/// Network address to contact device.
	public var url: FHIRURL?
	
	/// Available versions.
	public var version: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		capability = createInstances(of: DeviceDefinitionCapability.self, for: "capability", in: json, context: &instCtx, owner: self) ?? capability
		contact = createInstances(of: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		deviceName = createInstances(of: DeviceDefinitionDeviceName.self, for: "deviceName", in: json, context: &instCtx, owner: self) ?? deviceName
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		languageCode = createInstances(of: CodeableConcept.self, for: "languageCode", in: json, context: &instCtx, owner: self) ?? languageCode
		manufacturerReference = createInstance(type: Reference.self, for: "manufacturerReference", in: json, context: &instCtx, owner: self) ?? manufacturerReference
		manufacturerString = createInstance(type: FHIRString.self, for: "manufacturerString", in: json, context: &instCtx, owner: self) ?? manufacturerString
		material = createInstances(of: DeviceDefinitionMaterial.self, for: "material", in: json, context: &instCtx, owner: self) ?? material
		modelNumber = createInstance(type: FHIRString.self, for: "modelNumber", in: json, context: &instCtx, owner: self) ?? modelNumber
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		onlineInformation = createInstance(type: FHIRURL.self, for: "onlineInformation", in: json, context: &instCtx, owner: self) ?? onlineInformation
		owner = createInstance(type: Reference.self, for: "owner", in: json, context: &instCtx, owner: self) ?? owner
		parentDevice = createInstance(type: Reference.self, for: "parentDevice", in: json, context: &instCtx, owner: self) ?? parentDevice
		physicalCharacteristics = createInstance(type: ProdCharacteristic.self, for: "physicalCharacteristics", in: json, context: &instCtx, owner: self) ?? physicalCharacteristics
		property = createInstances(of: DeviceDefinitionProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		safety = createInstances(of: CodeableConcept.self, for: "safety", in: json, context: &instCtx, owner: self) ?? safety
		shelfLifeStorage = createInstances(of: ProductShelfLife.self, for: "shelfLifeStorage", in: json, context: &instCtx, owner: self) ?? shelfLifeStorage
		specialization = createInstances(of: DeviceDefinitionSpecialization.self, for: "specialization", in: json, context: &instCtx, owner: self) ?? specialization
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		udiDeviceIdentifier = createInstances(of: DeviceDefinitionUdiDeviceIdentifier.self, for: "udiDeviceIdentifier", in: json, context: &instCtx, owner: self) ?? udiDeviceIdentifier
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		version = createInstances(of: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "capability", using: self.capability, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "deviceName", using: self.deviceName, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "languageCode", using: self.languageCode, errors: &errors)
		self.manufacturerReference?.decorate(json: &json, withKey: "manufacturerReference", errors: &errors)
		self.manufacturerString?.decorate(json: &json, withKey: "manufacturerString", errors: &errors)
		arrayDecorate(json: &json, withKey: "material", using: self.material, errors: &errors)
		self.modelNumber?.decorate(json: &json, withKey: "modelNumber", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onlineInformation?.decorate(json: &json, withKey: "onlineInformation", errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		self.parentDevice?.decorate(json: &json, withKey: "parentDevice", errors: &errors)
		self.physicalCharacteristics?.decorate(json: &json, withKey: "physicalCharacteristics", errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "safety", using: self.safety, errors: &errors)
		arrayDecorate(json: &json, withKey: "shelfLifeStorage", using: self.shelfLifeStorage, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialization", using: self.specialization, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "udiDeviceIdentifier", using: self.udiDeviceIdentifier, errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "version", using: self.version, errors: &errors)
	}
}


/**
Device capabilities.
*/
open class DeviceDefinitionCapability: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionCapability" }
	}
	
	/// Description of capability.
	public var description_fhir: [CodeableConcept]?
	
	/// Type of capability.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstances(of: CodeableConcept.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "description", using: self.description_fhir, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
A name given to the device to identify it.
*/
open class DeviceDefinitionDeviceName: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionDeviceName" }
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
A substance used to create the material(s) of which the device is made.
*/
open class DeviceDefinitionMaterial: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionMaterial" }
	}
	
	/// Whether the substance is a known or suspected allergen.
	public var allergenicIndicator: FHIRBool?
	
	/// Indicates an alternative material of the device.
	public var alternate: FHIRBool?
	
	/// The substance.
	public var substance: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(substance: CodeableConcept) {
		self.init()
		self.substance = substance
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allergenicIndicator = createInstance(type: FHIRBool.self, for: "allergenicIndicator", in: json, context: &instCtx, owner: self) ?? allergenicIndicator
		alternate = createInstance(type: FHIRBool.self, for: "alternate", in: json, context: &instCtx, owner: self) ?? alternate
		substance = createInstance(type: CodeableConcept.self, for: "substance", in: json, context: &instCtx, owner: self) ?? substance
		if nil == substance && !instCtx.containsKey("substance") {
			instCtx.addError(FHIRValidationError(missing: "substance"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allergenicIndicator?.decorate(json: &json, withKey: "allergenicIndicator", errors: &errors)
		self.alternate?.decorate(json: &json, withKey: "alternate", errors: &errors)
		self.substance?.decorate(json: &json, withKey: "substance", errors: &errors)
		if nil == self.substance {
			errors.append(FHIRValidationError(missing: "substance"))
		}
	}
}


/**
The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
*/
open class DeviceDefinitionProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionProperty" }
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
open class DeviceDefinitionSpecialization: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionSpecialization" }
	}
	
	/// The standard that is used to operate and communicate.
	public var systemType: FHIRString?
	
	/// The version of the standard that is used to operate and communicate.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(systemType: FHIRString) {
		self.init()
		self.systemType = systemType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		systemType = createInstance(type: FHIRString.self, for: "systemType", in: json, context: &instCtx, owner: self) ?? systemType
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
open class DeviceDefinitionUdiDeviceIdentifier: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceDefinitionUdiDeviceIdentifier" }
	}
	
	/// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer
	/// and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
	public var deviceIdentifier: FHIRString?
	
	/// The organization that assigns the identifier algorithm.
	public var issuer: FHIRURL?
	
	/// The jurisdiction to which the deviceIdentifier applies.
	public var jurisdiction: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(deviceIdentifier: FHIRString, issuer: FHIRURL, jurisdiction: FHIRURL) {
		self.init()
		self.deviceIdentifier = deviceIdentifier
		self.issuer = issuer
		self.jurisdiction = jurisdiction
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		deviceIdentifier = createInstance(type: FHIRString.self, for: "deviceIdentifier", in: json, context: &instCtx, owner: self) ?? deviceIdentifier
		if nil == deviceIdentifier && !instCtx.containsKey("deviceIdentifier") {
			instCtx.addError(FHIRValidationError(missing: "deviceIdentifier"))
		}
		issuer = createInstance(type: FHIRURL.self, for: "issuer", in: json, context: &instCtx, owner: self) ?? issuer
		if nil == issuer && !instCtx.containsKey("issuer") {
			instCtx.addError(FHIRValidationError(missing: "issuer"))
		}
		jurisdiction = createInstance(type: FHIRURL.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		if nil == jurisdiction && !instCtx.containsKey("jurisdiction") {
			instCtx.addError(FHIRValidationError(missing: "jurisdiction"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.deviceIdentifier?.decorate(json: &json, withKey: "deviceIdentifier", errors: &errors)
		if nil == self.deviceIdentifier {
			errors.append(FHIRValidationError(missing: "deviceIdentifier"))
		}
		self.issuer?.decorate(json: &json, withKey: "issuer", errors: &errors)
		if nil == self.issuer {
			errors.append(FHIRValidationError(missing: "issuer"))
		}
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
		if nil == self.jurisdiction {
			errors.append(FHIRValidationError(missing: "jurisdiction"))
		}
	}
}

