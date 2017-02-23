//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Medication) on 2017-02-23.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		form = try createInstance(type: CodeableConcept.self, for: "form", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? form
		image = try createInstances(of: Attachment.self, for: "image", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? image
		ingredient = try createInstances(of: MedicationIngredient.self, for: "ingredient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ingredient
		isBrand = try createInstance(type: FHIRBool.self, for: "isBrand", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? isBrand
		isOverTheCounter = try createInstance(type: FHIRBool.self, for: "isOverTheCounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? isOverTheCounter
		manufacturer = try createInstance(type: Reference.self, for: "manufacturer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manufacturer
		package = try createInstance(type: MedicationPackage.self, for: "package", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? package
		status = createEnum(type: MedicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		amount = try createInstance(type: Ratio.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		isActive = try createInstance(type: FHIRBool.self, for: "isActive", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? isActive
		itemCodeableConcept = try createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemCodeableConcept
		itemReference = try createInstance(type: Reference.self, for: "itemReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		batch = try createInstances(of: MedicationPackageBatch.self, for: "batch", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? batch
		container = try createInstance(type: CodeableConcept.self, for: "container", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? container
		content = try createInstances(of: MedicationPackageContent.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? content
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		expirationDate = try createInstance(type: DateTime.self, for: "expirationDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expirationDate
		lotNumber = try createInstance(type: FHIRString.self, for: "lotNumber", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lotNumber
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		amount = try createInstance(type: Quantity.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		itemCodeableConcept = try createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemCodeableConcept
		itemReference = try createInstance(type: Reference.self, for: "itemReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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

