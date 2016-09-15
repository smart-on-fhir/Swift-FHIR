//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Substance) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A homogeneous material with a definite composition.
 */
open class Substance: DomainResource {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["ingredient"] {
				presentKeys.insert("ingredient")
				if let val = exist as? [FHIRJSON] {
					self.ingredient = SubstanceIngredient.instantiate(fromArray: val, owner: self) as? [SubstanceIngredient]
				}
				else {
					errors.append(FHIRJSONError(key: "ingredient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? [FHIRJSON] {
					self.instance = SubstanceInstance.instantiate(fromArray: val, owner: self) as? [SubstanceInstance]
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON() }
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = ingredient.map() { $0.asJSON() }
		}
		if let instance = self.instance {
			json["instance"] = instance.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Composition information about the substance.
 *
 *  A substance can be composed of other substances.
 */
open class SubstanceIngredient: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["substanceCodeableConcept"] {
				presentKeys.insert("substanceCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.substanceCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substanceCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["substanceReference"] {
				presentKeys.insert("substanceReference")
				if let val = exist as? FHIRJSON {
					self.substanceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "substanceReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.substanceCodeableConcept && nil == self.substanceReference {
				errors.append(FHIRJSONError(key: "substance*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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
open class SubstanceInstance: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["expiry"] {
				presentKeys.insert("expiry")
				if let val = exist as? String {
					self.expiry = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expiry", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

