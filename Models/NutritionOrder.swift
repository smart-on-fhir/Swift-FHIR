//
//  NutritionOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (nutritionorder.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A request for a diet, formula or nutritional supplement.
 *
 *  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
 */
public class NutritionOrder: FHIRResource
{
	override public class var resourceName: String {
		get { return "NutritionOrder" }
	}
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// Date and time the nutrition order was requested
	public var dateTime: NSDate?
	
	/// The encounter associated with that this nutrition order
	public var encounter: Reference?
	
	/// Order-specific modifier about the type of food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// Set of nutrition items or components that comprise the nutrition order
	public var item: [NutritionOrderItem]?
	
	/// Who ordered the diet, formula or nutritional supplement
	public var orderer: Reference?
	
	/// requested | active | inactive | held | cancelled
	public var status: String?
	
	/// The person who requires the diet, formula or nutritional supplement
	public var subject: Reference?
	
	public convenience init(dateTime: NSDate?, subject: Reference?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["allergyIntolerance"] as? [NSDictionary] {
				self.allergyIntolerance = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["excludeFoodModifier"] as? [NSDictionary] {
				self.excludeFoodModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["foodPreferenceModifier"] as? [NSDictionary] {
				self.foodPreferenceModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["item"] as? [NSDictionary] {
				self.item = NutritionOrderItem.from(val, owner: self) as? [NutritionOrderItem]
			}
			if let val = js["orderer"] as? NSDictionary {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Set of nutrition items or components that comprise the nutrition order.
 *
 *  Different items that combine to make a complete description of the nutrition to be provided via oral diet,
 *  nutritional supplement and/or formula order.
 */
public class NutritionOrderItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItem" }
	}
	
	/// Enteral formula components
	public var enteralFormula: NutritionOrderItemEnteralFormula?
	
	/// Indicates whether the nutrition item is  currently in effect
	public var isInEffect: Bool?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderItemOralDiet?
	
	/// Frequency to offer nutrition item
	public var scheduledPeriod: Period?
	
	/// Frequency to offer nutrition item
	public var scheduledTiming: Timing?
	
	/// Supplement components
	public var supplement: NutritionOrderItemSupplement?
	
	public convenience init(isInEffect: Bool?) {
		self.init(json: nil)
		if nil != isInEffect {
			self.isInEffect = isInEffect
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["enteralFormula"] as? NSDictionary {
				self.enteralFormula = NutritionOrderItemEnteralFormula(json: val, owner: self)
			}
			if let val = js["isInEffect"] as? Bool {
				self.isInEffect = val
			}
			if let val = js["oralDiet"] as? NSDictionary {
				self.oralDiet = NutritionOrderItemOralDiet(json: val, owner: self)
			}
			if let val = js["scheduledPeriod"] as? NSDictionary {
				self.scheduledPeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduledTiming"] as? NSDictionary {
				self.scheduledTiming = Timing(json: val, owner: self)
			}
			if let val = js["supplement"] as? NSDictionary {
				self.supplement = NutritionOrderItemSupplement(json: val, owner: self)
			}
		}
	}
}


/**
 *  Enteral formula components.
 *
 *  Class that defines the components of an enteral formula order for the patient.
 */
public class NutritionOrderItemEnteralFormula: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItemEnteralFormula" }
	}
	
	/// Product or brand name of the modular additive
	public var additiveName: String?
	
	/// Type of modular component to add to the feeding
	public var additiveType: CodeableConcept?
	
	/// Formula feeding instructions expressed as text
	public var administrationInstructions: String?
	
	/// Product or brand name of the enteral or infant formula
	public var baseFormulaName: String?
	
	/// Type of enteral or infant formula
	public var baseFormulaType: CodeableConcept?
	
	/// Amount of energy per specified volume that is required
	public var caloricDensity: Quantity?
	
	/// Upper limit on formula volume per unit of time
	public var maxVolumeToDeliver: Quantity?
	
	/// The volume of formula to provide
	public var quantity: Quantity?
	
	/// Speed with which the formula is provided per period of time
	public var rate: Ratio?
	
	/// Change in the rate of administration over a given time
	public var rateAdjustment: Quantity?
	
	/// How the formula should enter the patient's gastrointestinal tract
	public var routeofAdministration: CodeableConcept?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additiveName"] as? String {
				self.additiveName = val
			}
			if let val = js["additiveType"] as? NSDictionary {
				self.additiveType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["administrationInstructions"] as? String {
				self.administrationInstructions = val
			}
			if let val = js["baseFormulaName"] as? String {
				self.baseFormulaName = val
			}
			if let val = js["baseFormulaType"] as? NSDictionary {
				self.baseFormulaType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["caloricDensity"] as? NSDictionary {
				self.caloricDensity = Quantity(json: val, owner: self)
			}
			if let val = js["maxVolumeToDeliver"] as? NSDictionary {
				self.maxVolumeToDeliver = Quantity(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rate"] as? NSDictionary {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["rateAdjustment"] as? NSDictionary {
				self.rateAdjustment = Quantity(json: val, owner: self)
			}
			if let val = js["routeofAdministration"] as? NSDictionary {
				self.routeofAdministration = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Oral diet components.
 *
 *  Class that defines the components of an oral diet order for the patient.
 */
public class NutritionOrderItemOralDiet: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItemOralDiet" }
	}
	
	/// The required consistency of fluids and liquids provided to the patient
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet
	public var instruction: String?
	
	/// Required  nutrient modifications
	public var nutrients: [NutritionOrderItemOralDietNutrients]?
	
	/// Required  texture modifications
	public var texture: [NutritionOrderItemOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally
	public var type: [CodeableConcept]?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["fluidConsistencyType"] as? [NSDictionary] {
				self.fluidConsistencyType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["instruction"] as? String {
				self.instruction = val
			}
			if let val = js["nutrients"] as? [NSDictionary] {
				self.nutrients = NutritionOrderItemOralDietNutrients.from(val, owner: self) as? [NutritionOrderItemOralDietNutrients]
			}
			if let val = js["texture"] as? [NSDictionary] {
				self.texture = NutritionOrderItemOralDietTexture.from(val, owner: self) as? [NutritionOrderItemOralDietTexture]
			}
			if let val = js["type"] as? [NSDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Required  nutrient modifications.
 *
 *  Class that defines the details of any nutrient modifications required for the oral diet.
 */
public class NutritionOrderItemOralDietNutrients: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItemOralDietNutrients" }
	}
	
	/// Quantity of the specified nutrient
	public var amountQuantity: Quantity?
	
	/// Quantity of the specified nutrient
	public var amountRange: Range?
	
	/// Type of nutrient that is being modified
	public var modifier: CodeableConcept?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amountQuantity"] as? NSDictionary {
				self.amountQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["amountRange"] as? NSDictionary {
				self.amountRange = Range(json: val, owner: self)
			}
			if let val = js["modifier"] as? NSDictionary {
				self.modifier = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Required  texture modifications.
 *
 *  Class that describes any texture modifications required for the patient to safely consume various types of solid
 *  foods.
 */
public class NutritionOrderItemOralDietTexture: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItemOralDietTexture" }
	}
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes
	public var foodType: CodeableConcept?
	
	/// Code to indicate how to alter the texture of the foods, e.g., pureed
	public var modifier: CodeableConcept?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["foodType"] as? NSDictionary {
				self.foodType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["modifier"] as? NSDictionary {
				self.modifier = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Supplement components.
 *
 *  Class that defines the components of a supplement order for the patient.
 */
public class NutritionOrderItemSupplement: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderItemSupplement" }
	}
	
	/// Product or brand name of the nutritional supplement
	public var name: String?
	
	/// Amount of the nutritional supplement
	public var quantity: Quantity?
	
	/// Type of supplement product requested
	public var type: CodeableConcept?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

