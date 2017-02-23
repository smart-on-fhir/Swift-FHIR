//
//  NutritionOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/NutritionOrder) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Diet, formula or nutritional supplement request.

A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
*/
open class NutritionOrder: DomainResource {
	override open class var resourceType: String {
		get { return "NutritionOrder" }
	}
	
	/// List of the patient's food and nutrition-related allergies and intolerances.
	public var allergyIntolerance: [Reference]?
	
	/// Date and time the nutrition order was requested.
	public var dateTime: DateTime?
	
	/// The encounter associated with this nutrition order.
	public var encounter: Reference?
	
	/// Enteral formula components.
	public var enteralFormula: NutritionOrderEnteralFormula?
	
	/// Order-specific modifier about the type of food that should not be given.
	public var excludeFoodModifier: [CodeableConcept]?
	
	/// Order-specific modifier about the type of food that should be given.
	public var foodPreferenceModifier: [CodeableConcept]?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// Oral diet components.
	public var oralDiet: NutritionOrderOralDiet?
	
	/// Who ordered the diet, formula or nutritional supplement.
	public var orderer: Reference?
	
	/// The person who requires the diet, formula or nutritional supplement.
	public var patient: Reference?
	
	/// The workflow status of the nutrition order/request.
	public var status: NutritionOrderStatus?
	
	/// Supplement components.
	public var supplement: [NutritionOrderSupplement]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: DateTime, patient: Reference) {
		self.init()
		self.dateTime = dateTime
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		allergyIntolerance = try createInstances(of: Reference.self, for: "allergyIntolerance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? allergyIntolerance
		dateTime = try createInstance(type: DateTime.self, for: "dateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dateTime
		if nil == dateTime && !presentKeys.contains("dateTime") {
			errors.append(FHIRValidationError(missing: "dateTime"))
		}
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		enteralFormula = try createInstance(type: NutritionOrderEnteralFormula.self, for: "enteralFormula", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enteralFormula
		excludeFoodModifier = try createInstances(of: CodeableConcept.self, for: "excludeFoodModifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? excludeFoodModifier
		foodPreferenceModifier = try createInstances(of: CodeableConcept.self, for: "foodPreferenceModifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? foodPreferenceModifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		oralDiet = try createInstance(type: NutritionOrderOralDiet.self, for: "oralDiet", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? oralDiet
		orderer = try createInstance(type: Reference.self, for: "orderer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderer
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		status = createEnum(type: NutritionOrderStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		supplement = try createInstances(of: NutritionOrderSupplement.self, for: "supplement", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supplement
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "allergyIntolerance", using: self.allergyIntolerance, errors: &errors)
		self.dateTime?.decorate(json: &json, withKey: "dateTime", errors: &errors)
		if nil == self.dateTime {
			errors.append(FHIRValidationError(missing: "dateTime"))
		}
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.enteralFormula?.decorate(json: &json, withKey: "enteralFormula", errors: &errors)
		arrayDecorate(json: &json, withKey: "excludeFoodModifier", using: self.excludeFoodModifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "foodPreferenceModifier", using: self.foodPreferenceModifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.oralDiet?.decorate(json: &json, withKey: "oralDiet", errors: &errors)
		self.orderer?.decorate(json: &json, withKey: "orderer", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "supplement", using: self.supplement, errors: &errors)
	}
}


/**
Enteral formula components.

Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to the
oral cavity.
*/
open class NutritionOrderEnteralFormula: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderEnteralFormula" }
	}
	
	/// Product or brand name of the modular additive.
	public var additiveProductName: FHIRString?
	
	/// Type of modular component to add to the feeding.
	public var additiveType: CodeableConcept?
	
	/// Formula feeding instruction as structured data.
	public var administration: [NutritionOrderEnteralFormulaAdministration]?
	
	/// Formula feeding instructions expressed as text.
	public var administrationInstruction: FHIRString?
	
	/// Product or brand name of the enteral or infant formula.
	public var baseFormulaProductName: FHIRString?
	
	/// Type of enteral or infant formula.
	public var baseFormulaType: CodeableConcept?
	
	/// Amount of energy per specified volume that is required.
	public var caloricDensity: Quantity?
	
	/// Upper limit on formula volume per unit of time.
	public var maxVolumeToDeliver: Quantity?
	
	/// How the formula should enter the patient's gastrointestinal tract.
	public var routeofAdministration: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		additiveProductName = try createInstance(type: FHIRString.self, for: "additiveProductName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additiveProductName
		additiveType = try createInstance(type: CodeableConcept.self, for: "additiveType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? additiveType
		administration = try createInstances(of: NutritionOrderEnteralFormulaAdministration.self, for: "administration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? administration
		administrationInstruction = try createInstance(type: FHIRString.self, for: "administrationInstruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? administrationInstruction
		baseFormulaProductName = try createInstance(type: FHIRString.self, for: "baseFormulaProductName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseFormulaProductName
		baseFormulaType = try createInstance(type: CodeableConcept.self, for: "baseFormulaType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? baseFormulaType
		caloricDensity = try createInstance(type: Quantity.self, for: "caloricDensity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? caloricDensity
		maxVolumeToDeliver = try createInstance(type: Quantity.self, for: "maxVolumeToDeliver", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxVolumeToDeliver
		routeofAdministration = try createInstance(type: CodeableConcept.self, for: "routeofAdministration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? routeofAdministration
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.additiveProductName?.decorate(json: &json, withKey: "additiveProductName", errors: &errors)
		self.additiveType?.decorate(json: &json, withKey: "additiveType", errors: &errors)
		arrayDecorate(json: &json, withKey: "administration", using: self.administration, errors: &errors)
		self.administrationInstruction?.decorate(json: &json, withKey: "administrationInstruction", errors: &errors)
		self.baseFormulaProductName?.decorate(json: &json, withKey: "baseFormulaProductName", errors: &errors)
		self.baseFormulaType?.decorate(json: &json, withKey: "baseFormulaType", errors: &errors)
		self.caloricDensity?.decorate(json: &json, withKey: "caloricDensity", errors: &errors)
		self.maxVolumeToDeliver?.decorate(json: &json, withKey: "maxVolumeToDeliver", errors: &errors)
		self.routeofAdministration?.decorate(json: &json, withKey: "routeofAdministration", errors: &errors)
	}
}


/**
Formula feeding instruction as structured data.

Formula administration instructions as structured data.  This repeating structure allows for changing the administration
rate or volume over time for both bolus and continuous feeding.  An example of this would be an instruction to increase
the rate of continuous feeding every 2 hours.
*/
open class NutritionOrderEnteralFormulaAdministration: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderEnteralFormulaAdministration" }
	}
	
	/// The volume of formula to provide.
	public var quantity: Quantity?
	
	/// Speed with which the formula is provided per period of time.
	public var rateQuantity: Quantity?
	
	/// Speed with which the formula is provided per period of time.
	public var rateRatio: Ratio?
	
	/// Scheduled frequency of enteral feeding.
	public var schedule: Timing?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		rateQuantity = try createInstance(type: Quantity.self, for: "rateQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateQuantity
		rateRatio = try createInstance(type: Ratio.self, for: "rateRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? rateRatio
		schedule = try createInstance(type: Timing.self, for: "schedule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? schedule
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.rateQuantity?.decorate(json: &json, withKey: "rateQuantity", errors: &errors)
		self.rateRatio?.decorate(json: &json, withKey: "rateRatio", errors: &errors)
		self.schedule?.decorate(json: &json, withKey: "schedule", errors: &errors)
	}
}


/**
Oral diet components.

Diet given orally in contrast to enteral (tube) feeding.
*/
open class NutritionOrderOralDiet: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderOralDiet" }
	}
	
	/// The required consistency of fluids and liquids provided to the patient.
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet.
	public var instruction: FHIRString?
	
	/// Required  nutrient modifications.
	public var nutrient: [NutritionOrderOralDietNutrient]?
	
	/// Scheduled frequency of diet.
	public var schedule: [Timing]?
	
	/// Required  texture modifications.
	public var texture: [NutritionOrderOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		fluidConsistencyType = try createInstances(of: CodeableConcept.self, for: "fluidConsistencyType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fluidConsistencyType
		instruction = try createInstance(type: FHIRString.self, for: "instruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instruction
		nutrient = try createInstances(of: NutritionOrderOralDietNutrient.self, for: "nutrient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? nutrient
		schedule = try createInstances(of: Timing.self, for: "schedule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? schedule
		texture = try createInstances(of: NutritionOrderOralDietTexture.self, for: "texture", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? texture
		type = try createInstances(of: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "fluidConsistencyType", using: self.fluidConsistencyType, errors: &errors)
		self.instruction?.decorate(json: &json, withKey: "instruction", errors: &errors)
		arrayDecorate(json: &json, withKey: "nutrient", using: self.nutrient, errors: &errors)
		arrayDecorate(json: &json, withKey: "schedule", using: self.schedule, errors: &errors)
		arrayDecorate(json: &json, withKey: "texture", using: self.texture, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
Required  nutrient modifications.

Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required
for the oral diet.
*/
open class NutritionOrderOralDietNutrient: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderOralDietNutrient" }
	}
	
	/// Quantity of the specified nutrient.
	public var amount: Quantity?
	
	/// Type of nutrient that is being modified.
	public var modifier: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		amount = try createInstance(type: Quantity.self, for: "amount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? amount
		modifier = try createInstance(type: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.modifier?.decorate(json: &json, withKey: "modifier", errors: &errors)
	}
}


/**
Required  texture modifications.

Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
*/
open class NutritionOrderOralDietTexture: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderOralDietTexture" }
	}
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes.
	public var foodType: CodeableConcept?
	
	/// Code to indicate how to alter the texture of the foods, e.g. pureed.
	public var modifier: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		foodType = try createInstance(type: CodeableConcept.self, for: "foodType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? foodType
		modifier = try createInstance(type: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.foodType?.decorate(json: &json, withKey: "foodType", errors: &errors)
		self.modifier?.decorate(json: &json, withKey: "modifier", errors: &errors)
	}
}


/**
Supplement components.

Oral nutritional products given in order to add further nutritional value to the patient's diet.
*/
open class NutritionOrderSupplement: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionOrderSupplement" }
	}
	
	/// Instructions or additional information about the oral supplement.
	public var instruction: FHIRString?
	
	/// Product or brand name of the nutritional supplement.
	public var productName: FHIRString?
	
	/// Amount of the nutritional supplement.
	public var quantity: Quantity?
	
	/// Scheduled frequency of supplement.
	public var schedule: [Timing]?
	
	/// Type of supplement product requested.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		instruction = try createInstance(type: FHIRString.self, for: "instruction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instruction
		productName = try createInstance(type: FHIRString.self, for: "productName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productName
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		schedule = try createInstances(of: Timing.self, for: "schedule", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? schedule
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.instruction?.decorate(json: &json, withKey: "instruction", errors: &errors)
		self.productName?.decorate(json: &json, withKey: "productName", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "schedule", using: self.schedule, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

