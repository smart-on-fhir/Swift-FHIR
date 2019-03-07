//
//  MedicationKnowledge.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicationKnowledge) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Definition of Medication Knowledge.

Information about a medication that is used to support knowledge.
*/
open class MedicationKnowledge: DomainResource {
	override open class var resourceType: String {
		get { return "MedicationKnowledge" }
	}
	
	/// Guidelines for administration of the medication.
	public var administrationGuidelines: [MedicationKnowledgeAdministrationGuidelines]?
	
	/// Amount of drug in package.
	public var amount: Quantity?
	
	/// A medication resource that is associated with this medication.
	public var associatedMedication: [Reference]?
	
	/// Code that identifies this medication.
	public var code: CodeableConcept?
	
	/// Potential clinical issue with or between medication(s).
	public var contraindication: [Reference]?
	
	/// The pricing of the medication.
	public var cost: [MedicationKnowledgeCost]?
	
	/// powder | tablets | capsule +.
	public var doseForm: CodeableConcept?
	
	/// Specifies descriptive properties of the medicine.
	public var drugCharacteristic: [MedicationKnowledgeDrugCharacteristic]?
	
	/// Active or inactive ingredient.
	public var ingredient: [MedicationKnowledgeIngredient]?
	
	/// The intended or approved route of administration.
	public var intendedRoute: [CodeableConcept]?
	
	/// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
	public var kinetics: [MedicationKnowledgeKinetics]?
	
	/// Manufacturer of the item.
	public var manufacturer: Reference?
	
	/// Categorization of the medication within a formulary or classification system.
	public var medicineClassification: [MedicationKnowledgeMedicineClassification]?
	
	/// Program under which a medication is reviewed.
	public var monitoringProgram: [MedicationKnowledgeMonitoringProgram]?
	
	/// Associated documentation about the medication.
	public var monograph: [MedicationKnowledgeMonograph]?
	
	/// Details about packaged medications.
	public var packaging: MedicationKnowledgePackaging?
	
	/// The instructions for preparing the medication.
	public var preparationInstruction: FHIRString?
	
	/// Category of the medication or product.
	public var productType: [CodeableConcept]?
	
	/// Regulatory information about a medication.
	public var regulatory: [MedicationKnowledgeRegulatory]?
	
	/// Associated or related medication information.
	public var relatedMedicationKnowledge: [MedicationKnowledgeRelatedMedicationKnowledge]?
	
	/// A code to indicate if the medication is in active use.  The status refers to the validity about the information
	/// of the medication and not to its medicinal properties.
	public var status: MedicationKnowledgeStatusCodes?
	
	/// Additional names for a medication.
	public var synonym: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		administrationGuidelines = createInstances(of: MedicationKnowledgeAdministrationGuidelines.self, for: "administrationGuidelines", in: json, context: &instCtx, owner: self) ?? administrationGuidelines
		amount = createInstance(type: Quantity.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		associatedMedication = createInstances(of: Reference.self, for: "associatedMedication", in: json, context: &instCtx, owner: self) ?? associatedMedication
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		contraindication = createInstances(of: Reference.self, for: "contraindication", in: json, context: &instCtx, owner: self) ?? contraindication
		cost = createInstances(of: MedicationKnowledgeCost.self, for: "cost", in: json, context: &instCtx, owner: self) ?? cost
		doseForm = createInstance(type: CodeableConcept.self, for: "doseForm", in: json, context: &instCtx, owner: self) ?? doseForm
		drugCharacteristic = createInstances(of: MedicationKnowledgeDrugCharacteristic.self, for: "drugCharacteristic", in: json, context: &instCtx, owner: self) ?? drugCharacteristic
		ingredient = createInstances(of: MedicationKnowledgeIngredient.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		intendedRoute = createInstances(of: CodeableConcept.self, for: "intendedRoute", in: json, context: &instCtx, owner: self) ?? intendedRoute
		kinetics = createInstances(of: MedicationKnowledgeKinetics.self, for: "kinetics", in: json, context: &instCtx, owner: self) ?? kinetics
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		medicineClassification = createInstances(of: MedicationKnowledgeMedicineClassification.self, for: "medicineClassification", in: json, context: &instCtx, owner: self) ?? medicineClassification
		monitoringProgram = createInstances(of: MedicationKnowledgeMonitoringProgram.self, for: "monitoringProgram", in: json, context: &instCtx, owner: self) ?? monitoringProgram
		monograph = createInstances(of: MedicationKnowledgeMonograph.self, for: "monograph", in: json, context: &instCtx, owner: self) ?? monograph
		packaging = createInstance(type: MedicationKnowledgePackaging.self, for: "packaging", in: json, context: &instCtx, owner: self) ?? packaging
		preparationInstruction = createInstance(type: FHIRString.self, for: "preparationInstruction", in: json, context: &instCtx, owner: self) ?? preparationInstruction
		productType = createInstances(of: CodeableConcept.self, for: "productType", in: json, context: &instCtx, owner: self) ?? productType
		regulatory = createInstances(of: MedicationKnowledgeRegulatory.self, for: "regulatory", in: json, context: &instCtx, owner: self) ?? regulatory
		relatedMedicationKnowledge = createInstances(of: MedicationKnowledgeRelatedMedicationKnowledge.self, for: "relatedMedicationKnowledge", in: json, context: &instCtx, owner: self) ?? relatedMedicationKnowledge
		status = createEnum(type: MedicationKnowledgeStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		synonym = createInstances(of: FHIRString.self, for: "synonym", in: json, context: &instCtx, owner: self) ?? synonym
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "administrationGuidelines", using: self.administrationGuidelines, errors: &errors)
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		arrayDecorate(json: &json, withKey: "associatedMedication", using: self.associatedMedication, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "contraindication", using: self.contraindication, errors: &errors)
		arrayDecorate(json: &json, withKey: "cost", using: self.cost, errors: &errors)
		self.doseForm?.decorate(json: &json, withKey: "doseForm", errors: &errors)
		arrayDecorate(json: &json, withKey: "drugCharacteristic", using: self.drugCharacteristic, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		arrayDecorate(json: &json, withKey: "intendedRoute", using: self.intendedRoute, errors: &errors)
		arrayDecorate(json: &json, withKey: "kinetics", using: self.kinetics, errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		arrayDecorate(json: &json, withKey: "medicineClassification", using: self.medicineClassification, errors: &errors)
		arrayDecorate(json: &json, withKey: "monitoringProgram", using: self.monitoringProgram, errors: &errors)
		arrayDecorate(json: &json, withKey: "monograph", using: self.monograph, errors: &errors)
		self.packaging?.decorate(json: &json, withKey: "packaging", errors: &errors)
		self.preparationInstruction?.decorate(json: &json, withKey: "preparationInstruction", errors: &errors)
		arrayDecorate(json: &json, withKey: "productType", using: self.productType, errors: &errors)
		arrayDecorate(json: &json, withKey: "regulatory", using: self.regulatory, errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedMedicationKnowledge", using: self.relatedMedicationKnowledge, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "synonym", using: self.synonym, errors: &errors)
	}
}


/**
Guidelines for administration of the medication.

Guidelines for the administration of the medication.
*/
open class MedicationKnowledgeAdministrationGuidelines: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeAdministrationGuidelines" }
	}
	
	/// Dosage for the medication for the specific guidelines.
	public var dosage: [MedicationKnowledgeAdministrationGuidelinesDosage]?
	
	/// Indication for use that apply to the specific administration guidelines.
	public var indicationCodeableConcept: CodeableConcept?
	
	/// Indication for use that apply to the specific administration guidelines.
	public var indicationReference: Reference?
	
	/// Characteristics of the patient that are relevant to the administration guidelines.
	public var patientCharacteristics: [MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dosage = createInstances(of: MedicationKnowledgeAdministrationGuidelinesDosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		indicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "indicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? indicationCodeableConcept
		indicationReference = createInstance(type: Reference.self, for: "indicationReference", in: json, context: &instCtx, owner: self) ?? indicationReference
		patientCharacteristics = createInstances(of: MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics.self, for: "patientCharacteristics", in: json, context: &instCtx, owner: self) ?? patientCharacteristics
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "dosage", using: self.dosage, errors: &errors)
		self.indicationCodeableConcept?.decorate(json: &json, withKey: "indicationCodeableConcept", errors: &errors)
		self.indicationReference?.decorate(json: &json, withKey: "indicationReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "patientCharacteristics", using: self.patientCharacteristics, errors: &errors)
	}
}


/**
Dosage for the medication for the specific guidelines.
*/
open class MedicationKnowledgeAdministrationGuidelinesDosage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeAdministrationGuidelinesDosage" }
	}
	
	/// Dosage for the medication for the specific guidelines.
	public var dosage: [Dosage]?
	
	/// Type of dosage.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(dosage: [Dosage], type: CodeableConcept) {
		self.init()
		self.dosage = dosage
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dosage = createInstances(of: Dosage.self, for: "dosage", in: json, context: &instCtx, owner: self) ?? dosage
		if (nil == dosage || dosage!.isEmpty) && !instCtx.containsKey("dosage") {
			instCtx.addError(FHIRValidationError(missing: "dosage"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "dosage", using: self.dosage, errors: &errors)
		if nil == dosage || self.dosage!.isEmpty {
			errors.append(FHIRValidationError(missing: "dosage"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Characteristics of the patient that are relevant to the administration guidelines.

Characteristics of the patient that are relevant to the administration guidelines (for example, height, weight, gender,
etc.).
*/
open class MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics" }
	}
	
	/// Specific characteristic that is relevant to the administration guideline.
	public var characteristicCodeableConcept: CodeableConcept?
	
	/// Specific characteristic that is relevant to the administration guideline.
	public var characteristicQuantity: Quantity?
	
	/// The specific characteristic.
	public var value: [FHIRString]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(characteristic: Any) {
		self.init()
		if let value = characteristic as? CodeableConcept {
			self.characteristicCodeableConcept = value
		}
		else if let value = characteristic as? Quantity {
			self.characteristicQuantity = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: characteristic))” for property “\(characteristic)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		characteristicCodeableConcept = createInstance(type: CodeableConcept.self, for: "characteristicCodeableConcept", in: json, context: &instCtx, owner: self) ?? characteristicCodeableConcept
		characteristicQuantity = createInstance(type: Quantity.self, for: "characteristicQuantity", in: json, context: &instCtx, owner: self) ?? characteristicQuantity
		value = createInstances(of: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.characteristicCodeableConcept && nil == self.characteristicQuantity {
			instCtx.addError(FHIRValidationError(missing: "characteristic[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.characteristicCodeableConcept?.decorate(json: &json, withKey: "characteristicCodeableConcept", errors: &errors)
		self.characteristicQuantity?.decorate(json: &json, withKey: "characteristicQuantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "value", using: self.value, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.characteristicCodeableConcept && nil == self.characteristicQuantity {
			errors.append(FHIRValidationError(missing: "characteristic[x]"))
		}
	}
}


/**
The pricing of the medication.

The price of the medication.
*/
open class MedicationKnowledgeCost: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeCost" }
	}
	
	/// The price of the medication.
	public var cost: Money?
	
	/// The source or owner for the price information.
	public var source: FHIRString?
	
	/// The category of the cost information.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(cost: Money, type: CodeableConcept) {
		self.init()
		self.cost = cost
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		cost = createInstance(type: Money.self, for: "cost", in: json, context: &instCtx, owner: self) ?? cost
		if nil == cost && !instCtx.containsKey("cost") {
			instCtx.addError(FHIRValidationError(missing: "cost"))
		}
		source = createInstance(type: FHIRString.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.cost?.decorate(json: &json, withKey: "cost", errors: &errors)
		if nil == self.cost {
			errors.append(FHIRValidationError(missing: "cost"))
		}
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Specifies descriptive properties of the medicine.

Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
*/
open class MedicationKnowledgeDrugCharacteristic: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeDrugCharacteristic" }
	}
	
	/// Code specifying the type of characteristic of medication.
	public var type: CodeableConcept?
	
	/// Description of the characteristic.
	public var valueBase64Binary: Base64Binary?
	
	/// Description of the characteristic.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Description of the characteristic.
	public var valueQuantity: Quantity?
	
	/// Description of the characteristic.
	public var valueString: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
	}
}


/**
Active or inactive ingredient.

Identifies a particular constituent of interest in the product.
*/
open class MedicationKnowledgeIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeIngredient" }
	}
	
	/// Active ingredient indicator.
	public var isActive: FHIRBool?
	
	/// Medication(s) or substance(s) contained in the medication.
	public var itemCodeableConcept: CodeableConcept?
	
	/// Medication(s) or substance(s) contained in the medication.
	public var itemReference: Reference?
	
	/// Quantity of ingredient present.
	public var strength: Ratio?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		isActive = createInstance(type: FHIRBool.self, for: "isActive", in: json, context: &instCtx, owner: self) ?? isActive
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		strength = createInstance(type: Ratio.self, for: "strength", in: json, context: &instCtx, owner: self) ?? strength
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.isActive?.decorate(json: &json, withKey: "isActive", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.strength?.decorate(json: &json, withKey: "strength", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}


/**
The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
*/
open class MedicationKnowledgeKinetics: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeKinetics" }
	}
	
	/// The drug concentration measured at certain discrete points in time.
	public var areaUnderCurve: [Quantity]?
	
	/// Time required for concentration in the body to decrease by half.
	public var halfLifePeriod: Duration?
	
	/// The median lethal dose of a drug.
	public var lethalDose50: [Quantity]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		areaUnderCurve = createInstances(of: Quantity.self, for: "areaUnderCurve", in: json, context: &instCtx, owner: self) ?? areaUnderCurve
		halfLifePeriod = createInstance(type: Duration.self, for: "halfLifePeriod", in: json, context: &instCtx, owner: self) ?? halfLifePeriod
		lethalDose50 = createInstances(of: Quantity.self, for: "lethalDose50", in: json, context: &instCtx, owner: self) ?? lethalDose50
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "areaUnderCurve", using: self.areaUnderCurve, errors: &errors)
		self.halfLifePeriod?.decorate(json: &json, withKey: "halfLifePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "lethalDose50", using: self.lethalDose50, errors: &errors)
	}
}


/**
Categorization of the medication within a formulary or classification system.
*/
open class MedicationKnowledgeMedicineClassification: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeMedicineClassification" }
	}
	
	/// Specific category assigned to the medication.
	public var classification: [CodeableConcept]?
	
	/// The type of category for the medication (for example, therapeutic classification, therapeutic sub-
	/// classification).
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		classification = createInstances(of: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "classification", using: self.classification, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Program under which a medication is reviewed.

The program under which the medication is reviewed.
*/
open class MedicationKnowledgeMonitoringProgram: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeMonitoringProgram" }
	}
	
	/// Name of the reviewing program.
	public var name: FHIRString?
	
	/// Type of program under which the medication is monitored.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Associated documentation about the medication.
*/
open class MedicationKnowledgeMonograph: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeMonograph" }
	}
	
	/// Associated documentation about the medication.
	public var source: Reference?
	
	/// The category of medication document.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Details about packaged medications.

Information that only applies to packages (not products).
*/
open class MedicationKnowledgePackaging: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgePackaging" }
	}
	
	/// The number of product units the package would contain if fully loaded.
	public var quantity: Quantity?
	
	/// A code that defines the specific type of packaging that the medication can be found in.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Regulatory information about a medication.
*/
open class MedicationKnowledgeRegulatory: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeRegulatory" }
	}
	
	/// The maximum number of units of the medication that can be dispensed in a period.
	public var maxDispense: MedicationKnowledgeRegulatoryMaxDispense?
	
	/// Specifies the authority of the regulation.
	public var regulatoryAuthority: Reference?
	
	/// Specifies the schedule of a medication in jurisdiction.
	public var schedule: [MedicationKnowledgeRegulatorySchedule]?
	
	/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
	public var substitution: [MedicationKnowledgeRegulatorySubstitution]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(regulatoryAuthority: Reference) {
		self.init()
		self.regulatoryAuthority = regulatoryAuthority
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		maxDispense = createInstance(type: MedicationKnowledgeRegulatoryMaxDispense.self, for: "maxDispense", in: json, context: &instCtx, owner: self) ?? maxDispense
		regulatoryAuthority = createInstance(type: Reference.self, for: "regulatoryAuthority", in: json, context: &instCtx, owner: self) ?? regulatoryAuthority
		if nil == regulatoryAuthority && !instCtx.containsKey("regulatoryAuthority") {
			instCtx.addError(FHIRValidationError(missing: "regulatoryAuthority"))
		}
		schedule = createInstances(of: MedicationKnowledgeRegulatorySchedule.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
		substitution = createInstances(of: MedicationKnowledgeRegulatorySubstitution.self, for: "substitution", in: json, context: &instCtx, owner: self) ?? substitution
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.maxDispense?.decorate(json: &json, withKey: "maxDispense", errors: &errors)
		self.regulatoryAuthority?.decorate(json: &json, withKey: "regulatoryAuthority", errors: &errors)
		if nil == self.regulatoryAuthority {
			errors.append(FHIRValidationError(missing: "regulatoryAuthority"))
		}
		arrayDecorate(json: &json, withKey: "schedule", using: self.schedule, errors: &errors)
		arrayDecorate(json: &json, withKey: "substitution", using: self.substitution, errors: &errors)
	}
}


/**
The maximum number of units of the medication that can be dispensed in a period.
*/
open class MedicationKnowledgeRegulatoryMaxDispense: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeRegulatoryMaxDispense" }
	}
	
	/// The period that applies to the maximum number of units.
	public var period: Duration?
	
	/// The maximum number of units of the medication that can be dispensed.
	public var quantity: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(quantity: Quantity) {
		self.init()
		self.quantity = quantity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		period = createInstance(type: Duration.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		if nil == quantity && !instCtx.containsKey("quantity") {
			instCtx.addError(FHIRValidationError(missing: "quantity"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		if nil == self.quantity {
			errors.append(FHIRValidationError(missing: "quantity"))
		}
	}
}


/**
Specifies the schedule of a medication in jurisdiction.
*/
open class MedicationKnowledgeRegulatorySchedule: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeRegulatorySchedule" }
	}
	
	/// Specifies the specific drug schedule.
	public var schedule: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(schedule: CodeableConcept) {
		self.init()
		self.schedule = schedule
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		schedule = createInstance(type: CodeableConcept.self, for: "schedule", in: json, context: &instCtx, owner: self) ?? schedule
		if nil == schedule && !instCtx.containsKey("schedule") {
			instCtx.addError(FHIRValidationError(missing: "schedule"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.schedule?.decorate(json: &json, withKey: "schedule", errors: &errors)
		if nil == self.schedule {
			errors.append(FHIRValidationError(missing: "schedule"))
		}
	}
}


/**
Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
*/
open class MedicationKnowledgeRegulatorySubstitution: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeRegulatorySubstitution" }
	}
	
	/// Specifies if regulation allows for changes in the medication when dispensing.
	public var allowed: FHIRBool?
	
	/// Specifies the type of substitution allowed.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(allowed: FHIRBool, type: CodeableConcept) {
		self.init()
		self.allowed = allowed
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allowed = createInstance(type: FHIRBool.self, for: "allowed", in: json, context: &instCtx, owner: self) ?? allowed
		if nil == allowed && !instCtx.containsKey("allowed") {
			instCtx.addError(FHIRValidationError(missing: "allowed"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allowed?.decorate(json: &json, withKey: "allowed", errors: &errors)
		if nil == self.allowed {
			errors.append(FHIRValidationError(missing: "allowed"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Associated or related medication information.

Associated or related knowledge about a medication.
*/
open class MedicationKnowledgeRelatedMedicationKnowledge: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationKnowledgeRelatedMedicationKnowledge" }
	}
	
	/// Associated documentation about the associated medication knowledge.
	public var reference: [Reference]?
	
	/// Category of medicationKnowledge.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: [Reference], type: CodeableConcept) {
		self.init()
		self.reference = reference
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		reference = createInstances(of: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		if (nil == reference || reference!.isEmpty) && !instCtx.containsKey("reference") {
			instCtx.addError(FHIRValidationError(missing: "reference"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "reference", using: self.reference, errors: &errors)
		if nil == reference || self.reference!.isEmpty {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

