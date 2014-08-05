//
//  Substance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A homogeneous material with a definite composition.
 *
 *  Scope and Usage This resource allows for a material to be represented. The resource can be used to represent
 *  either a kind of a substance - e.g. a formulation commonly used for treating patients, or it can be used to
 *  describe a particular package of a known substance (e.g. bottle, jar, packet).
 *  
 *  The composition of the material can be specified in terms of a mix of other materials, including with precise
 *  amounts if required.
 */
public class Substance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Substance" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** What kind of substance this is */
	public var type: CodeableConcept?
	
	/** Textual description of the substance, comments */
	public var description: String?
	
	/** If this describes a specific package/container of the substance */
	public var instance: SubstanceInstance?
	
	/** Composition information about the substance */
	public var ingredient: [SubstanceIngredient]?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["instance"] as? NSDictionary {
				self.instance = SubstanceInstance(json: val)
			}
			if let val = js["ingredient"] as? [NSDictionary] {
				self.ingredient = SubstanceIngredient.from(val) as? [SubstanceIngredient]
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
	/** Identifier of the package/container */
	public var identifier: Identifier?
	
	/** When no longer valid to use */
	public var expiry: NSDate?
	
	/** Amount of substance in the package */
	public var quantity: Quantity?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["expiry"] as? String {
				self.expiry = NSDate(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
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
	/** Optional amount (concentration) */
	public var quantity: Ratio?
	
	/** A component of the substance */
	public var substance: FHIRElement? {
		get { return resolveReference("substance") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "substance")
			}
		}
	}
	
	public convenience init(substance: ResourceReference?) {
		self.init(json: nil)
		if nil != substance {
			self.substance = substance
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Ratio(json: val)
			}
			if let val = js["substance"] as? NSDictionary {
				self.substance = ResourceReference(json: val)
			}
		}
	}
}

