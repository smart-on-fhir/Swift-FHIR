//
//  MedicinalProductDeviceSpec.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductDeviceSpec) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
A detailed description of a device, typically as part of a regulated medicinal product. It is not intended to relace the
Device resource, which covers use of device instances.
*/
open class MedicinalProductDeviceSpec: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductDeviceSpec" }
	}
	
	/// Batch number or expiry date of a device.
	public var batchIdentifier: [Identifier]?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// Device listing number.
	public var listingNumber: FHIRString?
	
	/// Manufacturer of this Device.
	public var manufacturer: [Reference]?
	
	/// A substance used to create the material(s) of which the device is made.
	public var material: [MedicinalProductDeviceSpecMaterial]?
	
	/// Device model or reference number.
	public var modelNumber: FHIRString?
	
	/// A nomenclature term for the device.
	public var nomenclature: [CodeableConcept]?
	
	/// Other codeable characteristics.
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Dimensions, color etc..
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity of the device present in the packaging of a medicinal product.
	public var quantity: Quantity?
	
	/// Shelf Life and storage information.
	public var shelfLife: [ProductShelfLife]?
	
	/// Whether the device must be sterilised before use.
	public var sterilisationRequirement: CodeableConcept?
	
	/// Whether the device is supplied as sterile.
	public var sterilityIndicator: CodeableConcept?
	
	/// Trade name of the device, where applicable.
	public var tradeName: FHIRString?
	
	/// The type of device.
	public var type: CodeableConcept?
	
	/// Usage pattern including the number of times that the device may be used.
	public var usage: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		batchIdentifier = createInstances(of: Identifier.self, for: "batchIdentifier", in: json, context: &instCtx, owner: self) ?? batchIdentifier
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		listingNumber = createInstance(type: FHIRString.self, for: "listingNumber", in: json, context: &instCtx, owner: self) ?? listingNumber
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		material = createInstances(of: MedicinalProductDeviceSpecMaterial.self, for: "material", in: json, context: &instCtx, owner: self) ?? material
		modelNumber = createInstance(type: FHIRString.self, for: "modelNumber", in: json, context: &instCtx, owner: self) ?? modelNumber
		nomenclature = createInstances(of: CodeableConcept.self, for: "nomenclature", in: json, context: &instCtx, owner: self) ?? nomenclature
		otherCharacteristics = createInstances(of: CodeableConcept.self, for: "otherCharacteristics", in: json, context: &instCtx, owner: self) ?? otherCharacteristics
		physicalCharacteristics = createInstance(type: ProdCharacteristic.self, for: "physicalCharacteristics", in: json, context: &instCtx, owner: self) ?? physicalCharacteristics
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		shelfLife = createInstances(of: ProductShelfLife.self, for: "shelfLife", in: json, context: &instCtx, owner: self) ?? shelfLife
		sterilisationRequirement = createInstance(type: CodeableConcept.self, for: "sterilisationRequirement", in: json, context: &instCtx, owner: self) ?? sterilisationRequirement
		sterilityIndicator = createInstance(type: CodeableConcept.self, for: "sterilityIndicator", in: json, context: &instCtx, owner: self) ?? sterilityIndicator
		tradeName = createInstance(type: FHIRString.self, for: "tradeName", in: json, context: &instCtx, owner: self) ?? tradeName
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		usage = createInstance(type: CodeableConcept.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "batchIdentifier", using: self.batchIdentifier, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.listingNumber?.decorate(json: &json, withKey: "listingNumber", errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		arrayDecorate(json: &json, withKey: "material", using: self.material, errors: &errors)
		self.modelNumber?.decorate(json: &json, withKey: "modelNumber", errors: &errors)
		arrayDecorate(json: &json, withKey: "nomenclature", using: self.nomenclature, errors: &errors)
		arrayDecorate(json: &json, withKey: "otherCharacteristics", using: self.otherCharacteristics, errors: &errors)
		self.physicalCharacteristics?.decorate(json: &json, withKey: "physicalCharacteristics", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "shelfLife", using: self.shelfLife, errors: &errors)
		self.sterilisationRequirement?.decorate(json: &json, withKey: "sterilisationRequirement", errors: &errors)
		self.sterilityIndicator?.decorate(json: &json, withKey: "sterilityIndicator", errors: &errors)
		self.tradeName?.decorate(json: &json, withKey: "tradeName", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
	}
}


/**
A substance used to create the material(s) of which the device is made.
*/
open class MedicinalProductDeviceSpecMaterial: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductDeviceSpecMaterial" }
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

