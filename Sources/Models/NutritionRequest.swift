//
//  NutritionRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/NutritionRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Diet, formula or nutritional supplement request.
 *
 *  A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
 */
public class NutritionRequest: DomainResource {
	override public class var resourceName: String {
		get { return "NutritionRequest" }
	}
	
	/// List of the patient's food and nutrition-related allergies and intolerances.
	public var allergyIntolerance: [Reference]?
	
	/// Date and time the nutrition order was requested.
	public var dateTime: DateTime?
	
	/// The encounter associated with this nutrition order.
	public var encounter: Reference?
	
	/// Enteral formula components.
	public var enteralFormula: NutritionRequestEnteralFormula?
	
	/// Order-specific modifier about the type of food that should not be given.
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Order-specific modifier about the type of food that should be given.
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// Oral diet components.
	public var oralDiet: NutritionRequestOralDiet?
	
	/// Who ordered the diet, formula or nutritional supplement.
	public var orderer: Reference?
	
	/// The person who requires the diet, formula or nutritional supplement.
	public var patient: Reference?
	
	/// proposed | draft | planned | requested | active | on-hold | completed | cancelled | entered-in-error.
	public var status: String?
	
	/// Supplement components.
	public var supplement: [NutritionRequestSupplement]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: DateTime, patient: Reference) {
		self.init(json: nil)
		self.dateTime = dateTime
		self.patient = patient
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["allergyIntolerance"] {
				presentKeys.insert("allergyIntolerance")
				if let val = exist as? [FHIRJSON] {
					self.allergyIntolerance = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "allergyIntolerance", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateTime"] {
				presentKeys.insert("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "dateTime"))
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["enteralFormula"] {
				presentKeys.insert("enteralFormula")
				if let val = exist as? FHIRJSON {
					self.enteralFormula = NutritionRequestEnteralFormula(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "enteralFormula", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["excludeFoodModifier"] {
				presentKeys.insert("excludeFoodModifier")
				if let val = exist as? [FHIRJSON] {
					self.excludeFoodModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "excludeFoodModifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["foodPreferenceModifier"] {
				presentKeys.insert("foodPreferenceModifier")
				if let val = exist as? [FHIRJSON] {
					self.foodPreferenceModifier = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "foodPreferenceModifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["oralDiet"] {
				presentKeys.insert("oralDiet")
				if let val = exist as? FHIRJSON {
					self.oralDiet = NutritionRequestOralDiet(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "oralDiet", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["orderer"] {
				presentKeys.insert("orderer")
				if let val = exist as? FHIRJSON {
					self.orderer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["supplement"] {
				presentKeys.insert("supplement")
				if let val = exist as? [FHIRJSON] {
					self.supplement = NutritionRequestSupplement.from(val, owner: self) as? [NutritionRequestSupplement]
				}
				else {
					errors.append(FHIRJSONError(key: "supplement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			json["supplement"] = NutritionRequestSupplement.asJSONArray(supplement)
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
public class NutritionRequestEnteralFormula: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestEnteralFormula" }
	}
	
	/// Product or brand name of the modular additive.
	public var additiveProductName: String?
	
	/// Type of modular component to add to the feeding.
	public var additiveType: CodeableConcept?
	
	/// Formula feeding instruction as structured data.
	public var administration: [NutritionRequestEnteralFormulaAdministration]?
	
	/// Formula feeding instructions expressed as text.
	public var administrationInstruction: String?
	
	/// Product or brand name of the enteral or infant formula.
	public var baseFormulaProductName: String?
	
	/// Type of enteral or infant formula.
	public var baseFormulaType: CodeableConcept?
	
	/// Amount of energy per specified volume that is required.
	public var caloricDensity: Quantity?
	
	/// Upper limit on formula volume per unit of time.
	public var maxVolumeToDeliver: Quantity?
	
	/// How the formula should enter the patient's gastrointestinal tract.
	public var routeofAdministration: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["additiveProductName"] {
				presentKeys.insert("additiveProductName")
				if let val = exist as? String {
					self.additiveProductName = val
				}
				else {
					errors.append(FHIRJSONError(key: "additiveProductName", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["additiveType"] {
				presentKeys.insert("additiveType")
				if let val = exist as? FHIRJSON {
					self.additiveType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "additiveType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["administration"] {
				presentKeys.insert("administration")
				if let val = exist as? [FHIRJSON] {
					self.administration = NutritionRequestEnteralFormulaAdministration.from(val, owner: self) as? [NutritionRequestEnteralFormulaAdministration]
				}
				else {
					errors.append(FHIRJSONError(key: "administration", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["administrationInstruction"] {
				presentKeys.insert("administrationInstruction")
				if let val = exist as? String {
					self.administrationInstruction = val
				}
				else {
					errors.append(FHIRJSONError(key: "administrationInstruction", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["baseFormulaProductName"] {
				presentKeys.insert("baseFormulaProductName")
				if let val = exist as? String {
					self.baseFormulaProductName = val
				}
				else {
					errors.append(FHIRJSONError(key: "baseFormulaProductName", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["baseFormulaType"] {
				presentKeys.insert("baseFormulaType")
				if let val = exist as? FHIRJSON {
					self.baseFormulaType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "baseFormulaType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["caloricDensity"] {
				presentKeys.insert("caloricDensity")
				if let val = exist as? FHIRJSON {
					self.caloricDensity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "caloricDensity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxVolumeToDeliver"] {
				presentKeys.insert("maxVolumeToDeliver")
				if let val = exist as? FHIRJSON {
					self.maxVolumeToDeliver = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxVolumeToDeliver", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["routeofAdministration"] {
				presentKeys.insert("routeofAdministration")
				if let val = exist as? FHIRJSON {
					self.routeofAdministration = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "routeofAdministration", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let administration = self.administration {
			json["administration"] = NutritionRequestEnteralFormulaAdministration.asJSONArray(administration)
		}
		if let administrationInstruction = self.administrationInstruction {
			json["administrationInstruction"] = administrationInstruction.asJSON()
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
		if let routeofAdministration = self.routeofAdministration {
			json["routeofAdministration"] = routeofAdministration.asJSON()
		}
		
		return json
	}
}


/**
 *  Formula feeding instruction as structured data.
 *
 *  Formula administration instructions as structured data.  This repeating structure allows for changing the
 *  administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an
 *  instruction to increase the rate of continuous feeding every 2 hours.
 */
public class NutritionRequestEnteralFormulaAdministration: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestEnteralFormulaAdministration" }
	}
	
	/// The volume of formula to provide.
	public var quantity: Quantity?
	
	/// Speed with which the formula is provided per period of time.
	public var rateQuantity: Quantity?
	
	/// Speed with which the formula is provided per period of time.
	public var rateRatio: Ratio?
	
	/// Scheduled frequency of enteral feeding.
	public var schedule: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateQuantity"] {
				presentKeys.insert("rateQuantity")
				if let val = exist as? FHIRJSON {
					self.rateQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rateRatio"] {
				presentKeys.insert("rateRatio")
				if let val = exist as? FHIRJSON {
					self.rateRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rateRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON()
		}
		if let rateRatio = self.rateRatio {
			json["rateRatio"] = rateRatio.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		
		return json
	}
}


/**
 *  Oral diet components.
 *
 *  Diet given orally in contrast to enteral (tube) feeding.
 */
public class NutritionRequestOralDiet: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestOralDiet" }
	}
	
	/// The required consistency of fluids and liquids provided to the patient.
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet.
	public var instruction: String?
	
	/// Required  nutrient modifications.
	public var nutrient: [NutritionRequestOralDietNutrient]?
	
	/// Scheduled frequency of diet.
	public var schedule: [Timing]?
	
	/// Required  texture modifications.
	public var texture: [NutritionRequestOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally.
	public var type: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["fluidConsistencyType"] {
				presentKeys.insert("fluidConsistencyType")
				if let val = exist as? [FHIRJSON] {
					self.fluidConsistencyType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "fluidConsistencyType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["instruction"] {
				presentKeys.insert("instruction")
				if let val = exist as? String {
					self.instruction = val
				}
				else {
					errors.append(FHIRJSONError(key: "instruction", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["nutrient"] {
				presentKeys.insert("nutrient")
				if let val = exist as? [FHIRJSON] {
					self.nutrient = NutritionRequestOralDietNutrient.from(val, owner: self) as? [NutritionRequestOralDietNutrient]
				}
				else {
					errors.append(FHIRJSONError(key: "nutrient", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? [FHIRJSON] {
					self.schedule = Timing.from(val, owner: self) as? [Timing]
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["texture"] {
				presentKeys.insert("texture")
				if let val = exist as? [FHIRJSON] {
					self.texture = NutritionRequestOralDietTexture.from(val, owner: self) as? [NutritionRequestOralDietTexture]
				}
				else {
					errors.append(FHIRJSONError(key: "texture", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			json["nutrient"] = NutritionRequestOralDietNutrient.asJSONArray(nutrient)
		}
		if let schedule = self.schedule {
			json["schedule"] = Timing.asJSONArray(schedule)
		}
		if let texture = self.texture {
			json["texture"] = NutritionRequestOralDietTexture.asJSONArray(texture)
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
 *  Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium)
 *  required for the oral diet.
 */
public class NutritionRequestOralDietNutrient: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestOralDietNutrient" }
	}
	
	/// Quantity of the specified nutrient.
	public var amount: Quantity?
	
	/// Type of nutrient that is being modified.
	public var modifier: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? FHIRJSON {
					self.modifier = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let modifier = self.modifier {
			json["modifier"] = modifier.asJSON()
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
public class NutritionRequestOralDietTexture: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestOralDietTexture" }
	}
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes.
	public var foodType: CodeableConcept?
	
	/// Code to indicate how to alter the texture of the foods, e.g. pureed.
	public var modifier: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["foodType"] {
				presentKeys.insert("foodType")
				if let val = exist as? FHIRJSON {
					self.foodType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "foodType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.insert("modifier")
				if let val = exist as? FHIRJSON {
					self.modifier = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "modifier", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let modifier = self.modifier {
			json["modifier"] = modifier.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplement components.
 *
 *  Oral nutritional products given in order to add further nutritional value to the patient's diet.
 */
public class NutritionRequestSupplement: BackboneElement {
	override public class var resourceName: String {
		get { return "NutritionRequestSupplement" }
	}
	
	/// Instructions or additional information about the oral supplement.
	public var instruction: String?
	
	/// Product or brand name of the nutritional supplement.
	public var productName: String?
	
	/// Amount of the nutritional supplement.
	public var quantity: Quantity?
	
	/// Scheduled frequency of supplement.
	public var schedule: [Timing]?
	
	/// Type of supplement product requested.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["instruction"] {
				presentKeys.insert("instruction")
				if let val = exist as? String {
					self.instruction = val
				}
				else {
					errors.append(FHIRJSONError(key: "instruction", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productName"] {
				presentKeys.insert("productName")
				if let val = exist as? String {
					self.productName = val
				}
				else {
					errors.append(FHIRJSONError(key: "productName", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? [FHIRJSON] {
					self.schedule = Timing.from(val, owner: self) as? [Timing]
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let schedule = self.schedule {
			json["schedule"] = Timing.asJSONArray(schedule)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

