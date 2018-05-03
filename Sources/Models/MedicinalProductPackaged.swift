//
//  MedicinalProductPackaged.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged) on 2018-05-03.
//  2018, SMART Health IT.
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
	public var identifier: Identifier?
	
	/// Marketing information.
	public var marketingStatus: [MarketingStatus]?
	
	/// A packaging item, as a contained for medicine, possibly with other packaging items within.
	public var packageItem: [MedicinalProductPackagedPackageItem]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier, packageItem: [MedicinalProductPackagedPackageItem]) {
		self.init()
		self.identifier = identifier
		self.packageItem = packageItem
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		batchIdentifier = createInstances(of: MedicinalProductPackagedBatchIdentifier.self, for: "batchIdentifier", in: json, context: &instCtx, owner: self) ?? batchIdentifier
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		if nil == identifier && !instCtx.containsKey("identifier") {
			instCtx.addError(FHIRValidationError(missing: "identifier"))
		}
		marketingStatus = createInstances(of: MarketingStatus.self, for: "marketingStatus", in: json, context: &instCtx, owner: self) ?? marketingStatus
		packageItem = createInstances(of: MedicinalProductPackagedPackageItem.self, for: "packageItem", in: json, context: &instCtx, owner: self) ?? packageItem
		if (nil == packageItem || packageItem!.isEmpty) && !instCtx.containsKey("packageItem") {
			instCtx.addError(FHIRValidationError(missing: "packageItem"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "batchIdentifier", using: self.batchIdentifier, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		arrayDecorate(json: &json, withKey: "marketingStatus", using: self.marketingStatus, errors: &errors)
		arrayDecorate(json: &json, withKey: "packageItem", using: self.packageItem, errors: &errors)
		if nil == packageItem || self.packageItem!.isEmpty {
			errors.append(FHIRValidationError(missing: "packageItem"))
		}
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
	public var manufacturedItem: [MedicinalProductPackagedPackageItemManufacturedItem]?
	
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
		manufacturedItem = createInstances(of: MedicinalProductPackagedPackageItemManufacturedItem.self, for: "manufacturedItem", in: json, context: &instCtx, owner: self) ?? manufacturedItem
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


/**
The manufactured item as contained in the packaged medicinal product.
*/
open class MedicinalProductPackagedPackageItemManufacturedItem: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPackagedPackageItemManufacturedItem" }
	}
	
	/// Ingredient.
	public var ingredient: [Reference]?
	
	/// Dose form as manufactured and before any transformation into the pharmaceutical product.
	public var manufacturedDoseForm: CodeableConcept?
	
	/// Dimensions, color etc..
	public var physicalCharacteristics: ProdCharacteristic?
	
	/// The quantity or "count number" of the manufactured item.
	public var quantity: Quantity?
	
	/// The “real world” units in which the quantity of the manufactured item is described.
	public var unitOfPresentation: CodeableConcept?
	
	/// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical
	/// issues).
	public var xManufacturer: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manufacturedDoseForm: CodeableConcept, quantity: Quantity) {
		self.init()
		self.manufacturedDoseForm = manufacturedDoseForm
		self.quantity = quantity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ingredient = createInstances(of: Reference.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		manufacturedDoseForm = createInstance(type: CodeableConcept.self, for: "manufacturedDoseForm", in: json, context: &instCtx, owner: self) ?? manufacturedDoseForm
		if nil == manufacturedDoseForm && !instCtx.containsKey("manufacturedDoseForm") {
			instCtx.addError(FHIRValidationError(missing: "manufacturedDoseForm"))
		}
		physicalCharacteristics = createInstance(type: ProdCharacteristic.self, for: "physicalCharacteristics", in: json, context: &instCtx, owner: self) ?? physicalCharacteristics
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
		unitOfPresentation = createInstance(type: CodeableConcept.self, for: "unitOfPresentation", in: json, context: &instCtx, owner: self) ?? unitOfPresentation
		xManufacturer = createInstances(of: Reference.self, for: "xManufacturer", in: json, context: &instCtx, owner: self) ?? xManufacturer
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		self.manufacturedDoseForm?.decorate(json: &json, withKey: "manufacturedDoseForm", errors: &errors)
		if nil == self.manufacturedDoseForm {
			errors.append(FHIRValidationError(missing: "manufacturedDoseForm"))
		}
		self.physicalCharacteristics?.decorate(json: &json, withKey: "physicalCharacteristics", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
		self.unitOfPresentation?.decorate(json: &json, withKey: "unitOfPresentation", errors: &errors)
		arrayDecorate(json: &json, withKey: "xManufacturer", using: self.xManufacturer, errors: &errors)
	}
}

