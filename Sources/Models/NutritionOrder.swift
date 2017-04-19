//
//  NutritionOrder.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/NutritionOrder) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allergyIntolerance = createInstances(of: Reference.self, for: "allergyIntolerance", in: json, context: &instCtx, owner: self) ?? allergyIntolerance
		dateTime = createInstance(type: DateTime.self, for: "dateTime", in: json, context: &instCtx, owner: self) ?? dateTime
		if nil == dateTime && !instCtx.containsKey("dateTime") {
			instCtx.addError(FHIRValidationError(missing: "dateTime"))
		}
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		enteralFormula = createInstance(type: NutritionOrderEnteralFormula.self, for: "enteralFormula", in: json, context: &instCtx, owner: self) ?? enteralFormula
		excludeFoodModifier = createInstances(of: CodeableConcept.self, for: "excludeFoodModifier", in: json, context: &instCtx, owner: self) ?? excludeFoodModifier
		foodPreferenceModifier = createInstances(of: CodeableConcept.self, for: "foodPreferenceModifier", in: json, context: &instCtx, owner: self) ?? foodPreferenceModifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		oralDiet = createInstance(type: NutritionOrderOralDiet.self, for: "oralDiet", in: json, context: &instCtx, owner: self) ?? oralDiet
		orderer = createInstance(type: Reference.self, for: "orderer", in: json, context: &instCtx, owner: self) ?? orderer
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		status = createEnum(type: NutritionOrderStatus.self, for: "status", in: json, context: &instCtx) ?? status
		supplement = createInstances(of: NutritionOrderSupplement.self, for: "supplement", in: json, context: &instCtx, owner: self) ?? supplement
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additiveProductName = createInstance(type: FHIRString.self, for: "additiveProductName", in: json, context: &instCtx, owner: self) ?? additiveProductName
		additiveType = createInstance(type: CodeableConcept.self, for: "additiveType", in: json, context: &instCtx, owner: self) ?? additiveType
		administration = createInstances(of: NutritionOrderEnteralFormulaAdministration.self, for: "administration", in: json, context: &instCtx, owner: self) ?? administration
		administrationInstruction = createInstance(type: FHIRString.self, for: "administrationInstruction", in: json, context: &instCtx, owner: self) ?? administrationInstruction
		baseFormulaProductName = createInstance(type: FHIRString.self, for: "baseFormulaProductName", in: json, context: &instCtx, owner: self) ?? baseFormulaProductName
		baseFormulaType = createInstance(type: CodeableConcept.self, for: "baseFormulaType", in: json, context: &instCtx, owner: self) ?? baseFormulaType
		caloricDensity = createInstance(type: Quantity.self, for: "caloricDensity", in: json, context: &instCtx, owner: self) ?? caloricDensity
		maxVolumeToDeliver = createInstance(type: Quantity.self, for: "maxVolumeToDeliver", in: json, context: &instCtx, owner: self) ?? maxVolumeToDeliver
		routeofAdministration = createInstance(type: CodeableConcept.self, for: "routeofAdministration", in: json, context: &instCtx, owner: self) ?? routeofAdministration
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		rateQuantity = createInstance(type: Quantity.self, for: "rateQuantity", in: json, context: &instCtx, owner: self) ?? rateQuantity
		rateRatio = createInstance(type: Ratio.self, for: "rateRatio", in: json, context: &instCtx, owner: self) ?? rateRatio
		schedule = createInstance(type: Timing.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		fluidConsistencyType = createInstances(of: CodeableConcept.self, for: "fluidConsistencyType", in: json, context: &instCtx, owner: self) ?? fluidConsistencyType
		instruction = createInstance(type: FHIRString.self, for: "instruction", in: json, context: &instCtx, owner: self) ?? instruction
		nutrient = createInstances(of: NutritionOrderOralDietNutrient.self, for: "nutrient", in: json, context: &instCtx, owner: self) ?? nutrient
		schedule = createInstances(of: Timing.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
		texture = createInstances(of: NutritionOrderOralDietTexture.self, for: "texture", in: json, context: &instCtx, owner: self) ?? texture
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Quantity.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		modifier = createInstance(type: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		foodType = createInstance(type: CodeableConcept.self, for: "foodType", in: json, context: &instCtx, owner: self) ?? foodType
		modifier = createInstance(type: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		instruction = createInstance(type: FHIRString.self, for: "instruction", in: json, context: &instCtx, owner: self) ?? instruction
		productName = createInstance(type: FHIRString.self, for: "productName", in: json, context: &instCtx, owner: self) ?? productName
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		schedule = createInstances(of: Timing.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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

