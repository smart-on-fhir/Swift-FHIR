//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Medication) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Definition of a Medication.

This resource is primarily used for the identification and definition of a medication. It covers the ingredients and the
packaging for a medication.
*/
open class Medication: DomainResource {
	override open class var resourceType: String {
		get { return "Medication" }
	}
	
	/// Codes that identify this medication.
	public var code: CodeableConcept?
	
	/// powder | tablets | capsule +.
	public var form: CodeableConcept?
	
	/// Picture of the medication.
	public var image: [Attachment]?
	
	/// Active or inactive ingredient.
	public var ingredient: [MedicationIngredient]?
	
	/// True if a brand.
	public var isBrand: FHIRBool?
	
	/// True if medication does not require a prescription.
	public var isOverTheCounter: FHIRBool?
	
	/// Manufacturer of the item.
	public var manufacturer: Reference?
	
	/// Details about packaged medications.
	public var package: MedicationPackage?
	
	/// A code to indicate if the medication is in active use.
	public var status: MedicationStatus?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		image = createInstances(of: Attachment.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		ingredient = createInstances(of: MedicationIngredient.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		isBrand = createInstance(type: FHIRBool.self, for: "isBrand", in: json, context: &instCtx, owner: self) ?? isBrand
		isOverTheCounter = createInstance(type: FHIRBool.self, for: "isOverTheCounter", in: json, context: &instCtx, owner: self) ?? isOverTheCounter
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		package = createInstance(type: MedicationPackage.self, for: "package", in: json, context: &instCtx, owner: self) ?? package
		status = createEnum(type: MedicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		self.isBrand?.decorate(json: &json, withKey: "isBrand", errors: &errors)
		self.isOverTheCounter?.decorate(json: &json, withKey: "isOverTheCounter", errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		self.package?.decorate(json: &json, withKey: "package", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Active or inactive ingredient.

Identifies a particular constituent of interest in the product.
*/
open class MedicationIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationIngredient" }
	}
	
	/// Quantity of ingredient present.
	public var amount: Ratio?
	
	/// Active ingredient indicator.
	public var isActive: FHIRBool?
	
	/// The product contained.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The product contained.
	public var itemReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Ratio.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		isActive = createInstance(type: FHIRBool.self, for: "isActive", in: json, context: &instCtx, owner: self) ?? isActive
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.isActive?.decorate(json: &json, withKey: "isActive", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}


/**
Details about packaged medications.

Information that only applies to packages (not products).
*/
open class MedicationPackage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackage" }
	}
	
	/// Identifies a single production run.
	public var batch: [MedicationPackageBatch]?
	
	/// E.g. box, vial, blister-pack.
	public var container: CodeableConcept?
	
	/// What is  in the package.
	public var content: [MedicationPackageContent]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		batch = createInstances(of: MedicationPackageBatch.self, for: "batch", in: json, context: &instCtx, owner: self) ?? batch
		container = createInstance(type: CodeableConcept.self, for: "container", in: json, context: &instCtx, owner: self) ?? container
		content = createInstances(of: MedicationPackageContent.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "batch", using: self.batch, errors: &errors)
		self.container?.decorate(json: &json, withKey: "container", errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
	}
}


/**
Identifies a single production run.

Information about a group of medication produced or packaged from one production run.
*/
open class MedicationPackageBatch: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackageBatch" }
	}
	
	/// When batch will expire.
	public var expirationDate: DateTime?
	
	/// Identifier assigned to batch.
	public var lotNumber: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expirationDate = createInstance(type: DateTime.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
	}
}


/**
What is  in the package.

A set of components that go to make up the described item.
*/
open class MedicationPackageContent: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationPackageContent" }
	}
	
	/// Quantity present in the package.
	public var amount: Quantity?
	
	/// The item in the package.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The item in the package.
	public var itemReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Quantity.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}

