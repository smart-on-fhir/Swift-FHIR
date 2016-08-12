//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Medication) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Definition of a Medication.
 *
 *  This resource is primarily used for the identification and definition of a medication. It covers the ingredients and
 *  the packaging for a medication.
 */
public class Medication: DomainResource {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["isBrand"] {
				presentKeys.insert("isBrand")
				if let val = exist as? Bool {
					self.isBrand = val
				}
				else {
					errors.append(FHIRJSONError(key: "isBrand", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["manufacturer"] {
				presentKeys.insert("manufacturer")
				if let val = exist as? FHIRJSON {
					self.manufacturer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "manufacturer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["package"] {
				presentKeys.insert("package")
				if let val = exist as? FHIRJSON {
					self.package = MedicationPackage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "package", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? FHIRJSON {
					self.product = MedicationProduct(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let isBrand = self.isBrand {
			json["isBrand"] = isBrand.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let package = self.package {
			json["package"] = package.asJSON()
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		
		return json
	}
}


/**
 *  Details about packaged medications.
 *
 *  Information that only applies to packages (not products).
 */
public class MedicationPackage: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationPackage" }
	}
	
	/// E.g. box, vial, blister-pack.
	public var container: CodeableConcept?
	
	/// What is  in the package.
	public var content: [MedicationPackageContent]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["container"] {
				presentKeys.insert("container")
				if let val = exist as? FHIRJSON {
					self.container = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "container", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? [FHIRJSON] {
					self.content = MedicationPackageContent.from(val, owner: self) as? [MedicationPackageContent]
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let container = self.container {
			json["container"] = container.asJSON()
		}
		if let content = self.content {
			json["content"] = MedicationPackageContent.asJSONArray(content)
		}
		
		return json
	}
}


/**
 *  What is  in the package.
 *
 *  A set of components that go to make up the described item.
 */
public class MedicationPackageContent: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationPackageContent" }
	}
	
	/// Quantity present in the package.
	public var amount: Quantity?
	
	/// The item in the package.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The item in the package.
	public var itemReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(itemCodeableConcept: CodeableConcept, itemReference: Reference) {
		self.init(json: nil)
		self.itemCodeableConcept = itemCodeableConcept
		self.itemReference = itemReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["itemCodeableConcept"] {
				presentKeys.insert("itemCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.itemCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["itemReference"] {
				presentKeys.insert("itemReference")
				if let val = exist as? FHIRJSON {
					self.itemReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.itemCodeableConcept && nil == self.itemReference {
				errors.append(FHIRJSONError(key: "item*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON()
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Administrable medication details.
 *
 *  Information that only applies to products (not packages).
 */
public class MedicationProduct: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationProduct" }
	}
	
	/// None.
	public var batch: [MedicationProductBatch]?
	
	/// powder | tablets | carton +.
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient.
	public var ingredient: [MedicationProductIngredient]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["batch"] {
				presentKeys.insert("batch")
				if let val = exist as? [FHIRJSON] {
					self.batch = MedicationProductBatch.from(val, owner: self) as? [MedicationProductBatch]
				}
				else {
					errors.append(FHIRJSONError(key: "batch", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["form"] {
				presentKeys.insert("form")
				if let val = exist as? FHIRJSON {
					self.form = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "form", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ingredient"] {
				presentKeys.insert("ingredient")
				if let val = exist as? [FHIRJSON] {
					self.ingredient = MedicationProductIngredient.from(val, owner: self) as? [MedicationProductIngredient]
				}
				else {
					errors.append(FHIRJSONError(key: "ingredient", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let batch = self.batch {
			json["batch"] = MedicationProductBatch.asJSONArray(batch)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = MedicationProductIngredient.asJSONArray(ingredient)
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Information about a group of medication produced or packaged from one production run.
 */
public class MedicationProductBatch: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationProductBatch" }
	}
	
	/// None.
	public var expirationDate: DateTime?
	
	/// None.
	public var lotNumber: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expirationDate"] {
				presentKeys.insert("expirationDate")
				if let val = exist as? String {
					self.expirationDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expirationDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lotNumber"] {
				presentKeys.insert("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "lotNumber", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Active or inactive ingredient.
 *
 *  Identifies a particular constituent of interest in the product.
 */
public class MedicationProductIngredient: BackboneElement {
	override public class var resourceName: String {
		get { return "MedicationProductIngredient" }
	}
	
	/// Quantity of ingredient present.
	public var amount: Ratio?
	
	/// The product contained.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The product contained.
	public var itemReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(itemCodeableConcept: CodeableConcept, itemReference: Reference) {
		self.init(json: nil)
		self.itemCodeableConcept = itemCodeableConcept
		self.itemReference = itemReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["itemCodeableConcept"] {
				presentKeys.insert("itemCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.itemCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["itemReference"] {
				presentKeys.insert("itemReference")
				if let val = exist as? FHIRJSON {
					self.itemReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "itemReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.itemCodeableConcept && nil == self.itemReference {
				errors.append(FHIRJSONError(key: "item*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let itemCodeableConcept = self.itemCodeableConcept {
			json["itemCodeableConcept"] = itemCodeableConcept.asJSON()
		}
		if let itemReference = self.itemReference {
			json["itemReference"] = itemReference.asJSON()
		}
		
		return json
	}
}

