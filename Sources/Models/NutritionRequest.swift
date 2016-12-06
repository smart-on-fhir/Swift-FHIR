//
//  NutritionRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/NutritionRequest) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Diet, formula or nutritional supplement request.

A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
*/
open class NutritionRequest: DomainResource {
	override open class var resourceType: String {
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
	
	/// The workflow status of the nutrition order/request.
	public var status: NutritionOrderStatus?
	
	/// Supplement components.
	public var supplement: [NutritionRequestSupplement]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dateTime: DateTime, patient: Reference) {
		self.init()
		self.dateTime = dateTime
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["allergyIntolerance"] {
			presentKeys.insert("allergyIntolerance")
			if let val = exist as? [FHIRJSON] {
				do {
					self.allergyIntolerance = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "allergyIntolerance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "allergyIntolerance", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateTime"] {
			presentKeys.insert("dateTime")
			if let val = exist as? String {
				self.dateTime = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateTime", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "dateTime"))
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["enteralFormula"] {
			presentKeys.insert("enteralFormula")
			if let val = exist as? FHIRJSON {
				do {
					self.enteralFormula = try NutritionRequestEnteralFormula(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "enteralFormula"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "enteralFormula", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["excludeFoodModifier"] {
			presentKeys.insert("excludeFoodModifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.excludeFoodModifier = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "excludeFoodModifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "excludeFoodModifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["foodPreferenceModifier"] {
			presentKeys.insert("foodPreferenceModifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.foodPreferenceModifier = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "foodPreferenceModifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "foodPreferenceModifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["oralDiet"] {
			presentKeys.insert("oralDiet")
			if let val = exist as? FHIRJSON {
				do {
					self.oralDiet = try NutritionRequestOralDiet(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "oralDiet"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "oralDiet", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["orderer"] {
			presentKeys.insert("orderer")
			if let val = exist as? FHIRJSON {
				do {
					self.orderer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "orderer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "orderer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = NutritionOrderStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["supplement"] {
			presentKeys.insert("supplement")
			if let val = exist as? [FHIRJSON] {
				do {
					self.supplement = try NutritionRequestSupplement.instantiate(fromArray: val, owner: self) as? [NutritionRequestSupplement]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "supplement"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "supplement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let allergyIntolerance = self.allergyIntolerance {
			json["allergyIntolerance"] = allergyIntolerance.map() { $0.asJSON(errors: &errors) }
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "dateTime"))
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let enteralFormula = self.enteralFormula {
			json["enteralFormula"] = enteralFormula.asJSON(errors: &errors)
		}
		if let excludeFoodModifier = self.excludeFoodModifier {
			json["excludeFoodModifier"] = excludeFoodModifier.map() { $0.asJSON(errors: &errors) }
		}
		if let foodPreferenceModifier = self.foodPreferenceModifier {
			json["foodPreferenceModifier"] = foodPreferenceModifier.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let oralDiet = self.oralDiet {
			json["oralDiet"] = oralDiet.asJSON(errors: &errors)
		}
		if let orderer = self.orderer {
			json["orderer"] = orderer.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let supplement = self.supplement {
			json["supplement"] = supplement.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Enteral formula components.

Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to the
oral cavity.
*/
open class NutritionRequestEnteralFormula: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionRequestEnteralFormula" }
	}
	
	/// Product or brand name of the modular additive.
	public var additiveProductName: FHIRString?
	
	/// Type of modular component to add to the feeding.
	public var additiveType: CodeableConcept?
	
	/// Formula feeding instruction as structured data.
	public var administration: [NutritionRequestEnteralFormulaAdministration]?
	
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
		if let exist = json["additiveProductName"] {
			presentKeys.insert("additiveProductName")
			if let val = exist as? String {
				self.additiveProductName = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "additiveProductName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["additiveType"] {
			presentKeys.insert("additiveType")
			if let val = exist as? FHIRJSON {
				do {
					self.additiveType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "additiveType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "additiveType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["administration"] {
			presentKeys.insert("administration")
			if let val = exist as? [FHIRJSON] {
				do {
					self.administration = try NutritionRequestEnteralFormulaAdministration.instantiate(fromArray: val, owner: self) as? [NutritionRequestEnteralFormulaAdministration]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "administration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "administration", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["administrationInstruction"] {
			presentKeys.insert("administrationInstruction")
			if let val = exist as? String {
				self.administrationInstruction = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "administrationInstruction", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["baseFormulaProductName"] {
			presentKeys.insert("baseFormulaProductName")
			if let val = exist as? String {
				self.baseFormulaProductName = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "baseFormulaProductName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["baseFormulaType"] {
			presentKeys.insert("baseFormulaType")
			if let val = exist as? FHIRJSON {
				do {
					self.baseFormulaType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "baseFormulaType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "baseFormulaType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["caloricDensity"] {
			presentKeys.insert("caloricDensity")
			if let val = exist as? FHIRJSON {
				do {
					self.caloricDensity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "caloricDensity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "caloricDensity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxVolumeToDeliver"] {
			presentKeys.insert("maxVolumeToDeliver")
			if let val = exist as? FHIRJSON {
				do {
					self.maxVolumeToDeliver = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maxVolumeToDeliver"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maxVolumeToDeliver", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["routeofAdministration"] {
			presentKeys.insert("routeofAdministration")
			if let val = exist as? FHIRJSON {
				do {
					self.routeofAdministration = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "routeofAdministration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "routeofAdministration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let additiveProductName = self.additiveProductName {
			json["additiveProductName"] = additiveProductName.asJSON()
		}
		if let additiveType = self.additiveType {
			json["additiveType"] = additiveType.asJSON(errors: &errors)
		}
		if let administration = self.administration {
			json["administration"] = administration.map() { $0.asJSON(errors: &errors) }
		}
		if let administrationInstruction = self.administrationInstruction {
			json["administrationInstruction"] = administrationInstruction.asJSON()
		}
		if let baseFormulaProductName = self.baseFormulaProductName {
			json["baseFormulaProductName"] = baseFormulaProductName.asJSON()
		}
		if let baseFormulaType = self.baseFormulaType {
			json["baseFormulaType"] = baseFormulaType.asJSON(errors: &errors)
		}
		if let caloricDensity = self.caloricDensity {
			json["caloricDensity"] = caloricDensity.asJSON(errors: &errors)
		}
		if let maxVolumeToDeliver = self.maxVolumeToDeliver {
			json["maxVolumeToDeliver"] = maxVolumeToDeliver.asJSON(errors: &errors)
		}
		if let routeofAdministration = self.routeofAdministration {
			json["routeofAdministration"] = routeofAdministration.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Formula feeding instruction as structured data.

Formula administration instructions as structured data.  This repeating structure allows for changing the administration
rate or volume over time for both bolus and continuous feeding.  An example of this would be an instruction to increase
the rate of continuous feeding every 2 hours.
*/
open class NutritionRequestEnteralFormulaAdministration: BackboneElement {
	override open class var resourceType: String {
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		if let exist = json["rateQuantity"] {
			presentKeys.insert("rateQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.rateQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rateQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rateQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["rateRatio"] {
			presentKeys.insert("rateRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.rateRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rateRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rateRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["schedule"] {
			presentKeys.insert("schedule")
			if let val = exist as? FHIRJSON {
				do {
					self.schedule = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "schedule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "schedule", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let rateQuantity = self.rateQuantity {
			json["rateQuantity"] = rateQuantity.asJSON(errors: &errors)
		}
		if let rateRatio = self.rateRatio {
			json["rateRatio"] = rateRatio.asJSON(errors: &errors)
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Oral diet components.

Diet given orally in contrast to enteral (tube) feeding.
*/
open class NutritionRequestOralDiet: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionRequestOralDiet" }
	}
	
	/// The required consistency of fluids and liquids provided to the patient.
	public var fluidConsistencyType: [CodeableConcept]?
	
	/// Instructions or additional information about the oral diet.
	public var instruction: FHIRString?
	
	/// Required  nutrient modifications.
	public var nutrient: [NutritionRequestOralDietNutrient]?
	
	/// Scheduled frequency of diet.
	public var schedule: [Timing]?
	
	/// Required  texture modifications.
	public var texture: [NutritionRequestOralDietTexture]?
	
	/// Type of oral diet or diet restrictions that describe what can be consumed orally.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["fluidConsistencyType"] {
			presentKeys.insert("fluidConsistencyType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.fluidConsistencyType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fluidConsistencyType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fluidConsistencyType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["instruction"] {
			presentKeys.insert("instruction")
			if let val = exist as? String {
				self.instruction = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "instruction", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["nutrient"] {
			presentKeys.insert("nutrient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.nutrient = try NutritionRequestOralDietNutrient.instantiate(fromArray: val, owner: self) as? [NutritionRequestOralDietNutrient]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "nutrient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "nutrient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["schedule"] {
			presentKeys.insert("schedule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.schedule = try Timing.instantiate(fromArray: val, owner: self) as? [Timing]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "schedule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "schedule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["texture"] {
			presentKeys.insert("texture")
			if let val = exist as? [FHIRJSON] {
				do {
					self.texture = try NutritionRequestOralDietTexture.instantiate(fromArray: val, owner: self) as? [NutritionRequestOralDietTexture]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "texture"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "texture", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let fluidConsistencyType = self.fluidConsistencyType {
			json["fluidConsistencyType"] = fluidConsistencyType.map() { $0.asJSON(errors: &errors) }
		}
		if let instruction = self.instruction {
			json["instruction"] = instruction.asJSON()
		}
		if let nutrient = self.nutrient {
			json["nutrient"] = nutrient.map() { $0.asJSON(errors: &errors) }
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.map() { $0.asJSON(errors: &errors) }
		}
		if let texture = self.texture {
			json["texture"] = texture.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Required  nutrient modifications.

Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required
for the oral diet.
*/
open class NutritionRequestOralDietNutrient: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionRequestOralDietNutrient" }
	}
	
	/// Quantity of the specified nutrient.
	public var amount: Quantity?
	
	/// Type of nutrient that is being modified.
	public var modifier: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? FHIRJSON {
				do {
					self.modifier = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Required  texture modifications.

Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
*/
open class NutritionRequestOralDietTexture: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionRequestOralDietTexture" }
	}
	
	/// Concepts that are used to identify an entity that is ingested for nutritional purposes.
	public var foodType: CodeableConcept?
	
	/// Code to indicate how to alter the texture of the foods, e.g. pureed.
	public var modifier: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["foodType"] {
			presentKeys.insert("foodType")
			if let val = exist as? FHIRJSON {
				do {
					self.foodType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "foodType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "foodType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? FHIRJSON {
				do {
					self.modifier = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let foodType = self.foodType {
			json["foodType"] = foodType.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Supplement components.

Oral nutritional products given in order to add further nutritional value to the patient's diet.
*/
open class NutritionRequestSupplement: BackboneElement {
	override open class var resourceType: String {
		get { return "NutritionRequestSupplement" }
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
		if let exist = json["instruction"] {
			presentKeys.insert("instruction")
			if let val = exist as? String {
				self.instruction = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "instruction", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["productName"] {
			presentKeys.insert("productName")
			if let val = exist as? String {
				self.productName = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "productName", wants: String.self, has: type(of: exist)))
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
		if let exist = json["schedule"] {
			presentKeys.insert("schedule")
			if let val = exist as? [FHIRJSON] {
				do {
					self.schedule = try Timing.instantiate(fromArray: val, owner: self) as? [Timing]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "schedule"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "schedule", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let instruction = self.instruction {
			json["instruction"] = instruction.asJSON()
		}
		if let productName = self.productName {
			json["productName"] = productName.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

