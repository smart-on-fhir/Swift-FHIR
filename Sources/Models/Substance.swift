//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Substance) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A homogeneous material with a definite composition.
 */
public class Substance: DomainResource {
	override public class var resourceName: String {
		get { return "Substance" }
	}
	
	/// What class/type of substance this is.
	public var category: [CodeableConcept]?
	
	/// What substance this is.
	public var code: CodeableConcept?
	
	/// Textual description of the substance, comments.
	public var description_fhir: String?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// Composition information about the substance.
	public var ingredient: [SubstanceIngredient]?
	
	/// If this describes a specific package/container of the substance.
	public var instance: [SubstanceInstance]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ingredient"] {
				presentKeys.insert("ingredient")
				if let val = exist as? [FHIRJSON] {
					self.ingredient = SubstanceIngredient.from(val, owner: self) as? [SubstanceIngredient]
				}
				else {
					errors.append(FHIRJSONError(key: "ingredient", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = SubstanceInstance.from(val, owner: self) as? [SubstanceInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = CodeableConcept.asJSONArray(category)
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = SubstanceIngredient.asJSONArray(ingredient)
		}
		if let instance = self.instance {
			json["instance"] = SubstanceInstance.asJSONArray(instance)
		}
		
		return json
	}
}


/**
 *  Composition information about the substance.
 *
 *  A substance can be composed of other substances.
 */
public class SubstanceIngredient: BackboneElement {
	override public class var resourceName: String {
		get { return "SubstanceIngredient" }
	}
	
	/// Optional amount (concentration).
	public var quantity: Ratio?
	
	/// A component of the substance.
	public var substanceCodeableConcept: CodeableConcept?
	
	/// A component of the substance.
	public var substanceReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(substanceCodeableConcept: CodeableConcept, substanceReference: Reference) {
		self.init(json: nil)
		self.substanceCodeableConcept = substanceCodeableConcept
		self.substanceReference = substanceReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["substanceCodeableConcept"] {
				presentKeys.insert("substanceCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.substanceCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substanceCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["substanceReference"] {
				presentKeys.insert("substanceReference")
				if let val = exist as? FHIRJSON {
					self.substanceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substanceReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.substanceCodeableConcept && nil == self.substanceReference {
				errors.append(FHIRJSONError(key: "substance*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let substanceCodeableConcept = self.substanceCodeableConcept {
			json["substanceCodeableConcept"] = substanceCodeableConcept.asJSON()
		}
		if let substanceReference = self.substanceReference {
			json["substanceReference"] = substanceReference.asJSON()
		}
		
		return json
	}
}


/**
 *  If this describes a specific package/container of the substance.
 *
 *  Substance may be used to describe a kind of substance, or a specific package/container of the substance: an
 *  instance.
 */
public class SubstanceInstance: BackboneElement {
	override public class var resourceName: String {
		get { return "SubstanceInstance" }
	}
	
	/// When no longer valid to use.
	public var expiry: DateTime?
	
	/// Identifier of the package/container.
	public var identifier: Identifier?
	
	/// Amount of substance in the package.
	public var quantity: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expiry"] {
				presentKeys.insert("expiry")
				if let val = exist as? String {
					self.expiry = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expiry", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expiry = self.expiry {
			json["expiry"] = expiry.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		
		return json
	}
}

