//
//  NutritionOrder.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/NutritionOrder) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A request for a diet, formula or nutritional supplement.
 *
 *  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
 */
public class NutritionOrder: DomainResource
{
	override public class var resourceName: String {
		get { return "NutritionOrder" }
	}
	
	/// List of the patient's food and nutrition-related allergies and intolerances
	public var allergyIntolerance: [Reference]?
	
	/// Date and time the nutrition order was requested
	public var dateTime: DateTime?
	
	/// The encounter associated with that this nutrition order
	public var encounter: Reference?
	
	/// Enteral formula components
	public var enteralFormula: NutritionOrderEnteralFormula?
	
	/// Order-specific modifier about the type of food that should not be given
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Order-specific modifier about the type of food that should be given
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Identifiers assigned to this order
	public var identifier: [Identifier]?
	
	/// Oral diet components
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Who ordered the diet, formula or nutritional supplement
	public var orderer: Reference?
	
	/// The person who requires the diet, formula or nutritional supplement
	public var patient: Reference?
	
	/// proposed | draft | planned | requested | active | on-hold | completed | cancelled
	public var status: String?
	
	/// Supplement components
	public var supplement: [NutritionOrderSupplement]?
	
	public convenience init(dateTime: DateTime?, patient: Reference?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["allergyIntolerance"] as? [JSONDictionary] {
				self.allergyIntolerance = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = DateTime(string: val)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["enteralFormula"] as? JSONDictionary {
				self.enteralFormula = NutritionOrderEnteralFormula(json: val, owner: self)
			}
			if let val = js["excludeFoodModifier"] as? [JSONDictionary] {
				self.excludeFoodModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["foodPreferenceModifier"] as? [JSONDictionary] {
				self.foodPreferenceModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["oralDiet"] as? JSONDictionary {
				self.oralDiet = NutritionOrderOralDiet(json: val, owner: self)
			}
			if let val = js["orderer"] as? JSONDictionary {
				self.orderer = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["supplement"] as? [JSONDictionary] {
				self.supplement = NutritionOrderSupplement.from(val, owner: self) as? [NutritionOrderSupplement]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let allergyIntolerance = self.allergyIntolerance {
			json["allergyIntolerance"] = Reference.asJSONArray(allergyIntolerance)
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let enteralFormula = self.enteralFormula {
			json["enteralFormula"] = enteralFormula.asJSON()
		}
		if let excludeFoodModifier = self.excludeFoodModifier {
			json["excludeFoodModifier"] = CodeableConcept.asJSONArray(excludeFoodModifier)
		}
		if let foodPreferenceModifier = self.foodPreferenceModifier {
			json["foodPreferenceModifier"] = CodeableConcept.asJSONArray(foodPreferenceModifier)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let oralDiet = self.oralDiet {
			json["oralDiet"] = oralDiet.asJSON()
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supplement = self.supplement {
			json["supplement"] = NutritionOrderSupplement.asJSONArray(supplement)
		}
		
		return json
	}
}


/**
 *  Enteral formula components.
 *
 *  Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to
 *  the oral cavity.
 */
public class NutritionOrderEnteralFormula: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderEnteralFormula" }
	}
	
	/// Product or brand name of the modular additive
	public var additiveProductName: String?
	
	/// Type of modular component to add to the feeding
	public var additiveType: CodeableConcept?
	
	/// Formula feeding instructions expressed as text
	public var administrationInstructions: String?
	
	/// Product or brand name of the enteral or infant formula
	public var baseFormulaProductName: String?
	
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
	
	/// Scheduled frequency of enteral feeding
	public var scheduled: Timing?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additiveProductName"] as? String {
				self.additiveProductName = val
			}
			if let val = js["additiveType"] as? JSONDictionary {
				self.additiveType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["administrationInstructions"] as? String {
				self.administrationInstructions = val
			}
			if let val = js["baseFormulaProductName"] as? String {
				self.baseFormulaProductName = val
			}
			if let val = js["baseFormulaType"] as? JSONDictionary {
				self.baseFormulaType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["caloricDensity"] as? JSONDictionary {
				self.caloricDensity = Quantity(json: val, owner: self)
			}
			if let val = js["maxVolumeToDeliver"] as? JSONDictionary {
				self.maxVolumeToDeliver = Quantity(json: val, owner: self)
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["rate"] as? JSONDictionary {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["rateAdjustment"] as? JSONDictionary {
				self.rateAdjustment = Quantity(json: val, owner: self)
			}
			if let val = js["routeofAdministration"] as? JSONDictionary {
				self.routeofAdministration = CodeableConcept(json: val, owner: self)
			}
			if let val = js["scheduled"] as? JSONDictionary {
				self.scheduled = Timing(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let additiveProductName = self.additiveProductName {
			json["additiveProductName"] = additiveProductName.asJSON()
		}
		if let additiveType = self.additiveType {
			json["additiveType"] = additiveType.asJSON()
		}
		if let administrationInstructions = self.administrationInstructions {
			json["administrationInstructions"] = administrationInstructions.asJSON()
		}
		if let baseFormulaProductName = self.baseFormulaProductName {
			json["baseFormulaProductName"] = baseFormulaProductName.asJSON()
		}
		if let baseFormulaType = self.baseFormulaType {
			json["baseFormulaType"] = baseFormulaType.asJSON()
		}
		if let caloricDensity = self.caloricDensity {
			json["caloricDensity"] = caloricDensity.asJSON()
		}
		if let maxVolumeToDeliver = self.maxVolumeToDeliver {
			json["maxVolumeToDeliver"] = maxVolumeToDeliver.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let rateAdjustment = self.rateAdjustment {
			json["rateAdjustment"] = rateAdjustment.asJSON()
		}
		if let routeofAdministration = self.routeofAdministration {
			json["routeofAdministration"] = routeofAdministration.asJSON()
		}
		if let scheduled = self.scheduled {
			json["scheduled"] = scheduled.asJSON()
		}
		
		return json
	}
}


/**
 *  Oral diet components.
 *
 *  Diet given orally in contrast to enteral (tube) feeding.
 */
public class NutritionOrderOralDiet: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderOralDiet" }
	}
	
	/// The required consistency of fluids and liquids provided to the patient
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet
	public var instruction: String?
	
	/// Required  nutrient modifications
	public var nutrient: [NutritionOrderOralDietNutrient]?
	
	/// Scheduled frequency of diet
	public var scheduled: Timing?
	
	/// Required  texture modifications
	public var texture: [NutritionOrderOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally
	public var type: [CodeableConcept]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["fluidConsistencyType"] as? [JSONDictionary] {
				self.fluidConsistencyType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["instruction"] as? String {
				self.instruction = val
			}
			if let val = js["nutrient"] as? [JSONDictionary] {
				self.nutrient = NutritionOrderOralDietNutrient.from(val, owner: self) as? [NutritionOrderOralDietNutrient]
			}
			if let val = js["scheduled"] as? JSONDictionary {
				self.scheduled = Timing(json: val, owner: self)
			}
			if let val = js["texture"] as? [JSONDictionary] {
				self.texture = NutritionOrderOralDietTexture.from(val, owner: self) as? [NutritionOrderOralDietTexture]
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let fluidConsistencyType = self.fluidConsistencyType {
			json["fluidConsistencyType"] = CodeableConcept.asJSONArray(fluidConsistencyType)
		}
		if let instruction = self.instruction {
			json["instruction"] = instruction.asJSON()
		}
		if let nutrient = self.nutrient {
			json["nutrient"] = NutritionOrderOralDietNutrient.asJSONArray(nutrient)
		}
		if let scheduled = self.scheduled {
			json["scheduled"] = scheduled.asJSON()
		}
		if let texture = self.texture {
			json["texture"] = NutritionOrderOralDietTexture.asJSONArray(texture)
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  Required  nutrient modifications.
 *
 *  Class that defines the quantity and type of nutrient modifications required for the oral diet.
 */
public class NutritionOrderOralDietNutrient: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderOralDietNutrient" }
	}
	
	/// Quantity of the specified nutrient
	public var amount: Quantity?
	
	/// Type of nutrient that is being modified
	public var modifier_fhir: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? JSONDictionary {
				self.amount = Quantity(json: val, owner: self)
			}
			if let val = js["modifier"] as? JSONDictionary {
				self.modifier_fhir = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let modifier_fhir = self.modifier_fhir {
			json["modifier"] = modifier_fhir.asJSON()
		}
		
		return json
	}
}


/**
 *  Required  texture modifications.
 *
 *  Class that describes any texture modifications required for the patient to safely consume various types of solid
 *  foods.
 */
public class NutritionOrderOralDietTexture: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderOralDietTexture" }
	}
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes
	public var foodType: CodeableConcept?
	
	/// Code to indicate how to alter the texture of the foods, e.g., pureed
	public var modifier_fhir: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["foodType"] as? JSONDictionary {
				self.foodType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["modifier"] as? JSONDictionary {
				self.modifier_fhir = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let foodType = self.foodType {
			json["foodType"] = foodType.asJSON()
		}
		if let modifier_fhir = self.modifier_fhir {
			json["modifier"] = modifier_fhir.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplement components.
 *
 *  Oral nutritional products given in order to add further nutritional value to the patient's diet.
 */
public class NutritionOrderSupplement: FHIRElement
{
	override public class var resourceName: String {
		get { return "NutritionOrderSupplement" }
	}
	
	/// Instructions or additional information about the oral supplement
	public var instruction: String?
	
	/// Product or brand name of the nutritional supplement
	public var productName: String?
	
	/// Amount of the nutritional supplement
	public var quantity: Quantity?
	
	/// Scheduled frequency of supplement
	public var scheduled: Timing?
	
	/// Type of supplement product requested
	public var type: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["instruction"] as? String {
				self.instruction = val
			}
			if let val = js["productName"] as? String {
				self.productName = val
			}
			if let val = js["quantity"] as? JSONDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["scheduled"] as? JSONDictionary {
				self.scheduled = Timing(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let instruction = self.instruction {
			json["instruction"] = instruction.asJSON()
		}
		if let productName = self.productName {
			json["productName"] = productName.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let scheduled = self.scheduled {
			json["scheduled"] = scheduled.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

