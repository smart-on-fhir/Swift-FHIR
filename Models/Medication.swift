//
//  Medication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (medication.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Definition of a Medication.
 *
 *  Primarily used for identification and definition of Medication, but also covers ingredients and packaging.
 */
public class Medication: FHIRResource
{
	override public class var resourceName: String {
		get { return "Medication" }
	}
	
	/// Codes that identify this medication
	public var code: CodeableConcept?
	
	/// True if a brand
	public var isBrand: Bool?
	
	/// product | package
	public var kind: String?
	
	/// Manufacturer of the item
	public var manufacturer: Reference?
	
	/// Common / Commercial name
	public var name: String?
	
	/// Details about packaged medications
	public var package: MedicationPackage?
	
	/// Administrable medication details
	public var product: MedicationProduct?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["isBrand"] as? Bool {
				self.isBrand = val
			}
			if let val = js["kind"] as? String {
				self.kind = val
			}
			if let val = js["manufacturer"] as? JSONDictionary {
				self.manufacturer = Reference(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["package"] as? JSONDictionary {
				self.package = MedicationPackage(json: val, owner: self)
			}
			if let val = js["product"] as? JSONDictionary {
				self.product = MedicationProduct(json: val, owner: self)
			}
		}
	}
}


/**
 *  Details about packaged medications.
 *
 *  Information that only applies to packages (not products).
 */
public class MedicationPackage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPackage" }
	}
	
	/// E.g. box, vial, blister-pack
	public var container: CodeableConcept?
	
	/// What is  in the package?
	public var content: [MedicationPackageContent]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["container"] as? JSONDictionary {
				self.container = CodeableConcept(json: val, owner: self)
			}
			if let val = js["content"] as? [JSONDictionary] {
				self.content = MedicationPackageContent.from(val, owner: self) as? [MedicationPackageContent]
			}
		}
	}
}


/**
 *  What is  in the package?.
 *
 *  A set of components that go to make up the described item.
 */
public class MedicationPackageContent: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPackageContent" }
	}
	
	/// How many are in the package?
	public var amount: Quantity?
	
	/// A product in the package
	public var item: Reference?
	
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Quantity(json: val, owner: self)
			}
			if let val = js["item"] as? JSONDictionary {
				self.item = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Administrable medication details.
 *
 *  Information that only applies to products (not packages).
 */
public class MedicationProduct: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProduct" }
	}
	
	/// powder | tablets | carton +
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationProductIngredient]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["form"] as? JSONDictionary {
				self.form = CodeableConcept(json: val, owner: self)
			}
			if let val = js["ingredient"] as? [JSONDictionary] {
				self.ingredient = MedicationProductIngredient.from(val, owner: self) as? [MedicationProductIngredient]
			}
		}
	}
}


/**
 *  Active or inactive ingredient.
 *
 *  Identifies a particular constituent of interest in the product.
 */
public class MedicationProductIngredient: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProductIngredient" }
	}
	
	/// How much ingredient in product
	public var amount: Ratio?
	
	/// The product contained
	public var item: Reference?
	
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Ratio(json: val, owner: self)
			}
			if let val = js["item"] as? JSONDictionary {
				self.item = Reference(json: val, owner: self)
			}
		}
	}
}

