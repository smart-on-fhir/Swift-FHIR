//
//  NutritionOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/NutritionOrder) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(dateTime: DateTime?, patient: Reference?) {
		self.init(json: nil)
		if nil != dateTime {
			self.dateTime = dateTime
		}
		if nil != patient {
			self.patient = patient
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["allergyIntolerance"] {
				presentKeys.addObject("allergyIntolerance")
				if let val = exist as? [FHIRJSON] {
					self.allergyIntolerance = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"allergyIntolerance\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.addObject("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"dateTime\" but it is missing"))
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["enteralFormula"] {
				presentKeys.addObject("enteralFormula")
				if let val = exist as? FHIRJSON {
					self.enteralFormula = NutritionOrderEnteralFormula(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"enteralFormula\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["excludeFoodModifier"] {
				presentKeys.addObject("excludeFoodModifier")
				if let val = exist as? [FHIRJSON] {
					self.excludeFoodModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"excludeFoodModifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["foodPreferenceModifier"] {
				presentKeys.addObject("foodPreferenceModifier")
				if let val = exist as? [FHIRJSON] {
					self.foodPreferenceModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"foodPreferenceModifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["oralDiet"] {
				presentKeys.addObject("oralDiet")
				if let val = exist as? FHIRJSON {
					self.oralDiet = NutritionOrderOralDiet(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"oralDiet\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderer"] {
				presentKeys.addObject("orderer")
				if let val = exist as? FHIRJSON {
					self.orderer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["supplement"] {
				presentKeys.addObject("supplement")
				if let val = exist as? [FHIRJSON] {
					self.supplement = NutritionOrderSupplement.from(val, owner: self) as? [NutritionOrderSupplement]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"supplement\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["additiveProductName"] {
				presentKeys.addObject("additiveProductName")
				if let val = exist as? String {
					self.additiveProductName = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additiveProductName\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["additiveType"] {
				presentKeys.addObject("additiveType")
				if let val = exist as? FHIRJSON {
					self.additiveType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"additiveType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["administrationInstructions"] {
				presentKeys.addObject("administrationInstructions")
				if let val = exist as? String {
					self.administrationInstructions = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"administrationInstructions\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["baseFormulaProductName"] {
				presentKeys.addObject("baseFormulaProductName")
				if let val = exist as? String {
					self.baseFormulaProductName = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"baseFormulaProductName\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["baseFormulaType"] {
				presentKeys.addObject("baseFormulaType")
				if let val = exist as? FHIRJSON {
					self.baseFormulaType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"baseFormulaType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["caloricDensity"] {
				presentKeys.addObject("caloricDensity")
				if let val = exist as? FHIRJSON {
					self.caloricDensity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"caloricDensity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["maxVolumeToDeliver"] {
				presentKeys.addObject("maxVolumeToDeliver")
				if let val = exist as? FHIRJSON {
					self.maxVolumeToDeliver = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"maxVolumeToDeliver\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["rate"] {
				presentKeys.addObject("rate")
				if let val = exist as? FHIRJSON {
					self.rate = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rate\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rateAdjustment"] {
				presentKeys.addObject("rateAdjustment")
				if let val = exist as? FHIRJSON {
					self.rateAdjustment = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rateAdjustment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["routeofAdministration"] {
				presentKeys.addObject("routeofAdministration")
				if let val = exist as? FHIRJSON {
					self.routeofAdministration = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"routeofAdministration\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduled"] {
				presentKeys.addObject("scheduled")
				if let val = exist as? FHIRJSON {
					self.scheduled = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduled\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["fluidConsistencyType"] {
				presentKeys.addObject("fluidConsistencyType")
				if let val = exist as? [FHIRJSON] {
					self.fluidConsistencyType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fluidConsistencyType\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["instruction"] {
				presentKeys.addObject("instruction")
				if let val = exist as? String {
					self.instruction = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instruction\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["nutrient"] {
				presentKeys.addObject("nutrient")
				if let val = exist as? [FHIRJSON] {
					self.nutrient = NutritionOrderOralDietNutrient.from(val, owner: self) as? [NutritionOrderOralDietNutrient]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"nutrient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduled"] {
				presentKeys.addObject("scheduled")
				if let val = exist as? FHIRJSON {
					self.scheduled = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduled\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["texture"] {
				presentKeys.addObject("texture")
				if let val = exist as? [FHIRJSON] {
					self.texture = NutritionOrderOralDietTexture.from(val, owner: self) as? [NutritionOrderOralDietTexture]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"texture\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.addObject("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"amount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.addObject("modifier")
				if let val = exist as? FHIRJSON {
					self.modifier_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["foodType"] {
				presentKeys.addObject("foodType")
				if let val = exist as? FHIRJSON {
					self.foodType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"foodType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.addObject("modifier")
				if let val = exist as? FHIRJSON {
					self.modifier_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["instruction"] {
				presentKeys.addObject("instruction")
				if let val = exist as? String {
					self.instruction = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instruction\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["productName"] {
				presentKeys.addObject("productName")
				if let val = exist as? String {
					self.productName = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"productName\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["scheduled"] {
				presentKeys.addObject("scheduled")
				if let val = exist as? FHIRJSON {
					self.scheduled = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduled\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

