//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Medication) on 2016-12-06.
//  2016, SMART Health IT.
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
	
	/// True if a brand.
	public var isBrand: Bool?
	
	/// Manufacturer of the item.
	public var manufacturer: Reference?
	
	/// Details about packaged medications.
	public var package: MedicationPackage?
	
	/// Administrable medication details.
	public var product: MedicationProduct?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["isBrand"] {
			presentKeys.insert("isBrand")
			if let val = exist as? Bool {
				self.isBrand = val
			}
			else {
				errors.append(FHIRValidationError(key: "isBrand", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["manufacturer"] {
			presentKeys.insert("manufacturer")
			if let val = exist as? FHIRJSON {
				do {
					self.manufacturer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "manufacturer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "manufacturer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["package"] {
			presentKeys.insert("package")
			if let val = exist as? FHIRJSON {
				do {
					self.package = try MedicationPackage(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "package"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "package", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["product"] {
			presentKeys.insert("product")
			if let val = exist as? FHIRJSON {
				do {
					self.product = try MedicationProduct(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "product"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "product", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let isBrand = self.isBrand {
			json["isBrand"] = isBrand.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON(errors: &errors)
		}
		if let package = self.package {
			json["package"] = package.asJSON(errors: &errors)
		}
		if let product = self.product {
			json["product"] = product.asJSON(errors: &errors)
		}
		
		return json
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
	
	/// E.g. box, vial, blister-pack.
	public var container: CodeableConcept?
	
	/// What is  in the package.
	public var content: [MedicationPackageContent]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["container"] {
			presentKeys.insert("container")
			if let val = exist as? FHIRJSON {
				do {
					self.container = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "container"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "container", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? [FHIRJSON] {
				do {
					self.content = try MedicationPackageContent.instantiate(fromArray: val, owner: self) as? [MedicationPackageContent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "content"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "content", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let container = self.container {
			json["container"] = container.asJSON(errors: &errors)
		}
		if let content = self.content {
			json["content"] = content.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemCodeableConcept"] {
			presentKeys.insert("itemCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.itemCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemReference"] {
			presentKeys.insert("itemReference")
			if let val = exist as? FHIRJSON {
				do {
					self.itemReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON(errors: &errors)
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON(errors: &errors)
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		
		return json
	}
}


/**
Administrable medication details.

Information that only applies to products (not packages).
*/
open class MedicationProduct: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationProduct" }
	}
	
	/// Identifies a single production run.
	public var batch: [MedicationProductBatch]?
	
	/// powder | tablets | capsule +.
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient.
	public var ingredient: [MedicationProductIngredient]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["batch"] {
			presentKeys.insert("batch")
			if let val = exist as? [FHIRJSON] {
				do {
					self.batch = try MedicationProductBatch.instantiate(fromArray: val, owner: self) as? [MedicationProductBatch]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "batch"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "batch", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["form"] {
			presentKeys.insert("form")
			if let val = exist as? FHIRJSON {
				do {
					self.form = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "form"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "form", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ingredient"] {
			presentKeys.insert("ingredient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.ingredient = try MedicationProductIngredient.instantiate(fromArray: val, owner: self) as? [MedicationProductIngredient]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ingredient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ingredient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let batch = self.batch {
			json["batch"] = batch.map() { $0.asJSON(errors: &errors) }
		}
		if let form = self.form {
			json["form"] = form.asJSON(errors: &errors)
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = ingredient.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Identifies a single production run.

Information about a group of medication produced or packaged from one production run.
*/
open class MedicationProductBatch: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationProductBatch" }
	}
	
	/// When batch will expire.
	public var expirationDate: DateTime?
	
	/// Identifier assigned to batch.
	public var lotNumber: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["expirationDate"] {
			presentKeys.insert("expirationDate")
			if let val = exist as? String {
				self.expirationDate = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expirationDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["lotNumber"] {
			presentKeys.insert("lotNumber")
			if let val = exist as? String {
				self.lotNumber = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lotNumber", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		
		return json
	}
}


/**
Active or inactive ingredient.

Identifies a particular constituent of interest in the product.
*/
open class MedicationProductIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationProductIngredient" }
	}
	
	/// Quantity of ingredient present.
	public var amount: Ratio?
	
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
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemCodeableConcept"] {
			presentKeys.insert("itemCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.itemCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["itemReference"] {
			presentKeys.insert("itemReference")
			if let val = exist as? FHIRJSON {
				do {
					self.itemReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "itemReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "itemReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON(errors: &errors)
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON(errors: &errors)
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
		
		return json
	}
}

