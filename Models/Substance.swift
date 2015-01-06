//
//  Substance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (substance.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A homogeneous material with a definite composition.
 */
public class Substance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Substance" }
	}
	
	/// Textual description of the substance, comments
	public var description: String?
	
	/// Composition information about the substance
	public var ingredient: [SubstanceIngredient]?
	
	/// If this describes a specific package/container of the substance
	public var instance: SubstanceInstance?
	
	/// What kind of substance this is
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["ingredient"] as? [JSONDictionary] {
				self.ingredient = SubstanceIngredient.from(val, owner: self) as? [SubstanceIngredient]
			}
			if let val = js["instance"] as? JSONDictionary {
				self.instance = SubstanceInstance(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	public convenience init(substance: Reference?) {
		self.init(json: nil)
		if nil != substance {
			self.substance = substance
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Ratio(json: val, owner: self)
			}
			if let val = js["substance"] as? JSONDictionary {
				self.substance = Reference(json: val, owner: self)
			}
		}
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
	public var expiry: NSDate?
	
	/// Identifier of the package/container
	public var identifier: Identifier?
	
	/// Amount of substance in the package
	public var quantity: Quantity?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["expiry"] as? String {
				self.expiry = NSDate(json: val)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
		}
	}
}

