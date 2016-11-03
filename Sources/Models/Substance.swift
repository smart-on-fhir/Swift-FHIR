//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Substance) on 2016-11-03.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ingredient"] {
			presentKeys.insert("ingredient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.ingredient = try SubstanceIngredient.instantiate(fromArray: val, owner: self) as? [SubstanceIngredient]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ingredient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ingredient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["instance"] {
			presentKeys.insert("instance")
			if let val = exist as? [FHIRJSON] {
				do {
					self.instance = try SubstanceInstance.instantiate(fromArray: val, owner: self) as? [SubstanceInstance]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "instance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "instance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = ingredient.map() { $0.asJSON(errors: &errors) }
		}
		if let instance = self.instance {
			json["instance"] = instance.map() { $0.asJSON(errors: &errors) }
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(substance: Any) {
		self.init()
		if let value = substance as? CodeableConcept {
			self.substanceCodeableConcept = value
		}
		else if let value = substance as? Reference {
			self.substanceReference = value
		}
		else {
			fhir_warn("Type “\(type(of: substance))” for property “\(substance)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["substanceCodeableConcept"] {
			presentKeys.insert("substanceCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.substanceCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "substanceCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "substanceCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["substanceReference"] {
			presentKeys.insert("substanceReference")
			if let val = exist as? FHIRJSON {
				do {
					self.substanceReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "substanceReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "substanceReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.substanceCodeableConcept && nil == self.substanceReference {
			errors.append(FHIRValidationError(missing: "substance[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let substanceCodeableConcept = self.substanceCodeableConcept {
			json["substanceCodeableConcept"] = substanceCodeableConcept.asJSON(errors: &errors)
		}
		if let substanceReference = self.substanceReference {
			json["substanceReference"] = substanceReference.asJSON(errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["expiry"] {
			presentKeys.insert("expiry")
			if let val = exist as? String {
				self.expiry = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expiry", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let expiry = self.expiry {
			json["expiry"] = expiry.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		
		return json
	}
}

