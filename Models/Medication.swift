//
//  Medication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Medication) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Definition of a Medication.
 *
 *  Primarily used for identification and definition of Medication, but also covers ingredients and packaging.
 */
public class Medication: DomainResource
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let isBrand = self.isBrand {
			json["isBrand"] = isBrand.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
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
	
	override public func asJSON() -> JSONDictionary {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
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
	
	/// Information about a group of medication produced or packaged from one production run.
	public var batch: [MedicationProductBatch]?
	
	/// powder | tablets | carton +
	public var form: CodeableConcept?
	
	/// Active or inactive ingredient
	public var ingredient: [MedicationProductIngredient]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["batch"] as? [JSONDictionary] {
				self.batch = MedicationProductBatch.from(val, owner: self) as? [MedicationProductBatch]
			}
			if let val = js["form"] as? JSONDictionary {
				self.form = CodeableConcept(json: val, owner: self)
			}
			if let val = js["ingredient"] as? [JSONDictionary] {
				self.ingredient = MedicationProductIngredient.from(val, owner: self) as? [MedicationProductIngredient]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
 *  Information about a group of medication produced or packaged from one production run..
 *
 *  Information about a group of medication produced or packaged from one production run.
 */
public class MedicationProductBatch: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationProductBatch" }
	}
	
	/// When this specific batch of product will expire.
	public var expirationDate: DateTime?
	
	/// The assigned lot number of a batch of the specified product.
	public var lotNumber: String?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["expirationDate"] as? String {
				self.expirationDate = DateTime(string: val)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}

