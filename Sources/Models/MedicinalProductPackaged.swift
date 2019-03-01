//
//  MedicinalProductPackaged.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A medicinal product in a container or package.
*/
open class MedicinalProductPackaged: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductPackaged" }
	}
	
	/// Batch numbering.
	public var batchIdentifier: [MedicinalProductPackagedBatchIdentifier]?
	
	/// Textual description.
	public var description_fhir: FHIRString?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// The legal status of supply of the medicinal product as classified by the regulator.
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Manufacturer of this Package Item.
	public var manufacturer: [Reference]?
	
	/// Manufacturer of this Package Item.
	public var marketingAuthorization: Reference?
	
	/// Marketing information.
	public var marketingStatus: [MarketingStatus]?
	
	/// A packaging item, as a contained for medicine, possibly with other packaging items within.
	public var packageItem: [MedicinalProductPackagedPackageItem]?
	
	/// The product with this is a pack for.
	public var subject: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(packageItem: [MedicinalProductPackagedPackageItem]) {
		self.init()
		self.packageItem = packageItem
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		batchIdentifier = createInstances(of: MedicinalProductPackagedBatchIdentifier.self, for: "batchIdentifier", in: json, context: &instCtx, owner: self) ?? batchIdentifier
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		legalStatusOfSupply = createInstance(type: CodeableConcept.self, for: "legalStatusOfSupply", in: json, context: &instCtx, owner: self) ?? legalStatusOfSupply
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		marketingAuthorization = createInstance(type: Reference.self, for: "marketingAuthorization", in: json, context: &instCtx, owner: self) ?? marketingAuthorization
		marketingStatus = createInstances(of: MarketingStatus.self, for: "marketingStatus", in: json, context: &instCtx, owner: self) ?? marketingStatus
		packageItem = createInstances(of: MedicinalProductPackagedPackageItem.self, for: "packageItem", in: json, context: &instCtx, owner: self) ?? packageItem
		if (nil == packageItem || packageItem!.isEmpty) && !instCtx.containsKey("packageItem") {
			instCtx.addError(FHIRValidationError(missing: "packageItem"))
		}
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "batchIdentifier", using: self.batchIdentifier, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.legalStatusOfSupply?.decorate(json: &json, withKey: "legalStatusOfSupply", errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		self.marketingAuthorization?.decorate(json: &json, withKey: "marketingAuthorization", errors: &errors)
		arrayDecorate(json: &json, withKey: "marketingStatus", using: self.marketingStatus, errors: &errors)
		arrayDecorate(json: &json, withKey: "packageItem", using: self.packageItem, errors: &errors)
		if nil == packageItem || self.packageItem!.isEmpty {
			errors.append(FHIRValidationError(missing: "packageItem"))
		}
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
	}
}


/**
Batch numbering.
*/
open class MedicinalProductPackagedBatchIdentifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPackagedBatchIdentifier" }
	}
	
	/// A number appearing on the immediate packaging (and not the outer packaging).
	public var immediatePackaging: Identifier?
	
	/// A number appearing on the outer packaging of a specific batch.
	public var outerPackaging: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(outerPackaging: Identifier) {
		self.init()
		self.outerPackaging = outerPackaging
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		immediatePackaging = createInstance(type: Identifier.self, for: "immediatePackaging", in: json, context: &instCtx, owner: self) ?? immediatePackaging
		outerPackaging = createInstance(type: Identifier.self, for: "outerPackaging", in: json, context: &instCtx, owner: self) ?? outerPackaging
		if nil == outerPackaging && !instCtx.containsKey("outerPackaging") {
			instCtx.addError(FHIRValidationError(missing: "outerPackaging"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.immediatePackaging?.decorate(json: &json, withKey: "immediatePackaging", errors: &errors)
		self.outerPackaging?.decorate(json: &json, withKey: "outerPackaging", errors: &errors)
		if nil == self.outerPackaging {
			errors.append(FHIRValidationError(missing: "outerPackaging"))
		}
	}
}


/**
A packaging item, as a contained for medicine, possibly with other packaging items within.
*/
open class MedicinalProductPackagedPackageItem: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPackagedPackageItem" }
	}
	
	/// A possible alternate material for the packaging.
	public var alternateMaterial: [CodeableConcept]?
	
	/// A device accompanying a medicinal product.
	public var device: [Reference]?
	
	/// Including possibly Data Carrier Identifier.
	public var identifier: [Identifier]?
	
	/// The manufactured item as contained in the packaged medicinal product.
	public var manufacturedItem: [Reference]?
	
	/// Manufacturer of this Package Item.
	public var manufacturer: [Reference]?
	
	/// Material type of the package item.
	public var material: [CodeableConcept]?
	
	/// Other codeable characteristics.
	public var otherCharacteristics: [CodeableConcept]?
	
	/// Allows containers within containers.
	public var packageItem: [MedicinalProductPackagedPackageItem]?
	
	/// Dimensions, color etc..
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity of this package in the medicinal product, at the current level of packaging. The outermost is
	/// always 1.
	public var quantity: Quantity?
	
	/// Shelf Life and storage information.
	public var shelfLifeStorage: [ProductShelfLife]?
	
	/// The physical type of the container of the medicine.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(quantity: Quantity, type: CodeableConcept) {
		self.init()
		self.quantity = quantity
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		alternateMaterial = createInstances(of: CodeableConcept.self, for: "alternateMaterial", in: json, context: &instCtx, owner: self) ?? alternateMaterial
		device = createInstances(of: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		manufacturedItem = createInstances(of: Reference.self, for: "manufacturedItem", in: json, context: &instCtx, owner: self) ?? manufacturedItem
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		material = createInstances(of: CodeableConcept.self, for: "material", in: json, context: &instCtx, owner: self) ?? material
		otherCharacteristics = createInstances(of: CodeableConcept.self, for: "otherCharacteristics", in: json, context: &instCtx, owner: self) ?? otherCharacteristics
		packageItem = createInstances(of: MedicinalProductPackagedPackageItem.self, for: "packageItem", in: json, context: &instCtx, owner: self) ?? packageItem
		physicalCharacteristics = createInstance(type: ProdCharacteristic.self, for: "physicalCharacteristics", in: json, context: &instCtx, owner: self) ?? physicalCharacteristics
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
		shelfLifeStorage = createInstances(of: ProductShelfLife.self, for: "shelfLifeStorage", in: json, context: &instCtx, owner: self) ?? shelfLifeStorage
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "alternateMaterial", using: self.alternateMaterial, errors: &errors)
		arrayDecorate(json: &json, withKey: "device", using: self.device, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturedItem", using: self.manufacturedItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		arrayDecorate(json: &json, withKey: "material", using: self.material, errors: &errors)
		arrayDecorate(json: &json, withKey: "otherCharacteristics", using: self.otherCharacteristics, errors: &errors)
		arrayDecorate(json: &json, withKey: "packageItem", using: self.packageItem, errors: &errors)
		self.physicalCharacteristics?.decorate(json: &json, withKey: "physicalCharacteristics", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
		arrayDecorate(json: &json, withKey: "shelfLifeStorage", using: self.shelfLifeStorage, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

