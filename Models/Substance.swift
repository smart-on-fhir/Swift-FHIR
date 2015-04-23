//
//  Substance.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Substance) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A homogeneous material with a definite composition.
 */
public class Substance: DomainResource
{
	override public class var resourceName: String {
		get { return "Substance" }
	}
	
	/// Textual description of the substance, comments
	public var description_fhir: String?
	
	/// Composition information about the substance
	public var ingredient: [SubstanceIngredient]?
	
	/// If this describes a specific package/container of the substance
	public var instance: SubstanceInstance?
	
	/// What kind of substance this is
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ingredient"] {
				presentKeys.addObject("ingredient")
				if let val = exist as? [FHIRJSON] {
					self.ingredient = SubstanceIngredient.from(val, owner: self) as? [SubstanceIngredient]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ingredient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["instance"] {
				presentKeys.addObject("instance")
				if let val = exist as? FHIRJSON {
					self.instance = SubstanceInstance(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instance\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let ingredient = self.ingredient {
			json["ingredient"] = SubstanceIngredient.asJSONArray(ingredient)
		}
		if let instance = self.instance {
			json["instance"] = instance.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Composition information about the substance.
 *
 *  A substance can be composed of other substances.
 */
public class SubstanceIngredient: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubstanceIngredient" }
	}
	
	/// Optional amount (concentration)
	public var quantity: Ratio?
	
	/// A component of the substance
	public var substance: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(substance: Reference?) {
		self.init(json: nil)
		if nil != substance {
			self.substance = substance
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["substance"] {
				presentKeys.addObject("substance")
				if let val = exist as? FHIRJSON {
					self.substance = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"substance\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"substance\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON()
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
public class SubstanceInstance: FHIRElement
{
	override public class var resourceName: String {
		get { return "SubstanceInstance" }
	}
	
	/// When no longer valid to use
	public var expiry: DateTime?
	
	/// Identifier of the package/container
	public var identifier: Identifier?
	
	/// Amount of substance in the package
	public var quantity: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["expiry"] {
				presentKeys.addObject("expiry")
				if let val = exist as? String {
					self.expiry = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"expiry\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

