//
//  MedicinalProductClinicals.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductClinicals) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
MedicinalProductClinicals.

The clinical particulars - indications, contraindications etc. of a medicinal product, including for regulatory
purposes.
*/
open class MedicinalProductClinicals: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicals" }
	}
	
	/// Contraindication for the medicinal product.
	public var contraindication: [MedicinalProductClinicalsContraindication]?
	
	/// The interactions of the medicinal product with other medicinal products, or other forms of interactions.
	public var interactions: [MedicinalProductClinicalsInteractions]?
	
	/// Indication for the Medicinal Product.
	public var therapeuticIndication: [MedicinalProductClinicalsTherapeuticIndication]?
	
	/// Describe the undesirable effects of the medicinal product.
	public var undesirableEffects: [MedicinalProductClinicalsUndesirableEffects]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(therapeuticIndication: [MedicinalProductClinicalsTherapeuticIndication]) {
		self.init()
		self.therapeuticIndication = therapeuticIndication
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contraindication = createInstances(of: MedicinalProductClinicalsContraindication.self, for: "contraindication", in: json, context: &instCtx, owner: self) ?? contraindication
		interactions = createInstances(of: MedicinalProductClinicalsInteractions.self, for: "interactions", in: json, context: &instCtx, owner: self) ?? interactions
		therapeuticIndication = createInstances(of: MedicinalProductClinicalsTherapeuticIndication.self, for: "therapeuticIndication", in: json, context: &instCtx, owner: self) ?? therapeuticIndication
		if (nil == therapeuticIndication || therapeuticIndication!.isEmpty) && !instCtx.containsKey("therapeuticIndication") {
			instCtx.addError(FHIRValidationError(missing: "therapeuticIndication"))
		}
		undesirableEffects = createInstances(of: MedicinalProductClinicalsUndesirableEffects.self, for: "undesirableEffects", in: json, context: &instCtx, owner: self) ?? undesirableEffects
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contraindication", using: self.contraindication, errors: &errors)
		arrayDecorate(json: &json, withKey: "interactions", using: self.interactions, errors: &errors)
		arrayDecorate(json: &json, withKey: "therapeuticIndication", using: self.therapeuticIndication, errors: &errors)
		if nil == therapeuticIndication || self.therapeuticIndication!.isEmpty {
			errors.append(FHIRValidationError(missing: "therapeuticIndication"))
		}
		arrayDecorate(json: &json, withKey: "undesirableEffects", using: self.undesirableEffects, errors: &errors)
	}
}


/**
Contraindication for the medicinal product.
*/
open class MedicinalProductClinicalsContraindication: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsContraindication" }
	}
	
	/// A comorbidity (concurrent condition) or coinfection.
	public var comorbidity: [CodeableConcept]?
	
	/// The disease, symptom or procedure for the contraindication.
	public var disease: CodeableConcept?
	
	/// The status of the disease or symptom for the contraindication.
	public var diseaseStatus: CodeableConcept?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// contraindication.
	public var otherTherapy: [MedicinalProductClinicalsTherapeuticIndicationOtherTherapy]?
	
	/// The population group to which this applies.
	public var population: [MedicinalProductClinicalsUndesirableEffectsPopulation]?
	
	/// Information about the use of the medicinal product in relation to other therapies as part of the indication.
	public var therapeuticIndication: [MedicinalProductClinicalsTherapeuticIndication]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comorbidity = createInstances(of: CodeableConcept.self, for: "comorbidity", in: json, context: &instCtx, owner: self) ?? comorbidity
		disease = createInstance(type: CodeableConcept.self, for: "disease", in: json, context: &instCtx, owner: self) ?? disease
		diseaseStatus = createInstance(type: CodeableConcept.self, for: "diseaseStatus", in: json, context: &instCtx, owner: self) ?? diseaseStatus
		otherTherapy = createInstances(of: MedicinalProductClinicalsTherapeuticIndicationOtherTherapy.self, for: "otherTherapy", in: json, context: &instCtx, owner: self) ?? otherTherapy
		population = createInstances(of: MedicinalProductClinicalsUndesirableEffectsPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		therapeuticIndication = createInstances(of: MedicinalProductClinicalsTherapeuticIndication.self, for: "therapeuticIndication", in: json, context: &instCtx, owner: self) ?? therapeuticIndication
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "comorbidity", using: self.comorbidity, errors: &errors)
		self.disease?.decorate(json: &json, withKey: "disease", errors: &errors)
		self.diseaseStatus?.decorate(json: &json, withKey: "diseaseStatus", errors: &errors)
		arrayDecorate(json: &json, withKey: "otherTherapy", using: self.otherTherapy, errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "therapeuticIndication", using: self.therapeuticIndication, errors: &errors)
	}
}


/**
The interactions of the medicinal product with other medicinal products, or other forms of interactions.
*/
open class MedicinalProductClinicalsInteractions: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsInteractions" }
	}
	
	/// The effect of the interaction.
	public var effect: CodeableConcept?
	
	/// The incidence of the interaction.
	public var incidence: CodeableConcept?
	
	/// The specific medication, food or laboratory test that interacts.
	public var interactant: [CodeableConcept]?
	
	/// Actions for managing the interaction.
	public var management: CodeableConcept?
	
	/// The type of the interaction.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		effect = createInstance(type: CodeableConcept.self, for: "effect", in: json, context: &instCtx, owner: self) ?? effect
		incidence = createInstance(type: CodeableConcept.self, for: "incidence", in: json, context: &instCtx, owner: self) ?? incidence
		interactant = createInstances(of: CodeableConcept.self, for: "interactant", in: json, context: &instCtx, owner: self) ?? interactant
		management = createInstance(type: CodeableConcept.self, for: "management", in: json, context: &instCtx, owner: self) ?? management
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.effect?.decorate(json: &json, withKey: "effect", errors: &errors)
		self.incidence?.decorate(json: &json, withKey: "incidence", errors: &errors)
		arrayDecorate(json: &json, withKey: "interactant", using: self.interactant, errors: &errors)
		self.management?.decorate(json: &json, withKey: "management", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Indication for the Medicinal Product.
*/
open class MedicinalProductClinicalsTherapeuticIndication: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsTherapeuticIndication" }
	}
	
	/// Comorbidity (concurrent condition) or co-infection as part of the indication.
	public var comorbidity: [CodeableConcept]?
	
	/// The status of the disease or symptom for which the indication applies.
	public var diseaseStatus: CodeableConcept?
	
	/// The disease, symptom or procedure that is the indication for treatment.
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// Timing or duration information as part of the indication.
	public var duration: Quantity?
	
	/// The intended effect, aim or strategy to be achieved by the indication.
	public var intendedEffect: CodeableConcept?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication.
	public var otherTherapy: [MedicinalProductClinicalsTherapeuticIndicationOtherTherapy]?
	
	/// The population group to which this applies.
	public var population: [MedicinalProductClinicalsUndesirableEffectsPopulation]?
	
	/// Information about the use of the medicinal product in relation to other therapies as part of the indication.
	public var undesirableEffects: [MedicinalProductClinicalsUndesirableEffects]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comorbidity = createInstances(of: CodeableConcept.self, for: "comorbidity", in: json, context: &instCtx, owner: self) ?? comorbidity
		diseaseStatus = createInstance(type: CodeableConcept.self, for: "diseaseStatus", in: json, context: &instCtx, owner: self) ?? diseaseStatus
		diseaseSymptomProcedure = createInstance(type: CodeableConcept.self, for: "diseaseSymptomProcedure", in: json, context: &instCtx, owner: self) ?? diseaseSymptomProcedure
		duration = createInstance(type: Quantity.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		intendedEffect = createInstance(type: CodeableConcept.self, for: "intendedEffect", in: json, context: &instCtx, owner: self) ?? intendedEffect
		otherTherapy = createInstances(of: MedicinalProductClinicalsTherapeuticIndicationOtherTherapy.self, for: "otherTherapy", in: json, context: &instCtx, owner: self) ?? otherTherapy
		population = createInstances(of: MedicinalProductClinicalsUndesirableEffectsPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		undesirableEffects = createInstances(of: MedicinalProductClinicalsUndesirableEffects.self, for: "undesirableEffects", in: json, context: &instCtx, owner: self) ?? undesirableEffects
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "comorbidity", using: self.comorbidity, errors: &errors)
		self.diseaseStatus?.decorate(json: &json, withKey: "diseaseStatus", errors: &errors)
		self.diseaseSymptomProcedure?.decorate(json: &json, withKey: "diseaseSymptomProcedure", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.intendedEffect?.decorate(json: &json, withKey: "intendedEffect", errors: &errors)
		arrayDecorate(json: &json, withKey: "otherTherapy", using: self.otherTherapy, errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "undesirableEffects", using: self.undesirableEffects, errors: &errors)
	}
}


/**
Information about the use of the medicinal product in relation to other therapies described as part of the indication.
*/
open class MedicinalProductClinicalsTherapeuticIndicationOtherTherapy: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsTherapeuticIndicationOtherTherapy" }
	}
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication.
	public var medicationReference: Reference?
	
	/// The type of relationship between the medicinal product indication or contraindication and another therapy.
	public var therapyRelationshipType: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any, therapyRelationshipType: CodeableConcept) {
		self.init()
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.therapyRelationshipType = therapyRelationshipType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		therapyRelationshipType = createInstance(type: CodeableConcept.self, for: "therapyRelationshipType", in: json, context: &instCtx, owner: self) ?? therapyRelationshipType
		if nil == therapyRelationshipType && !instCtx.containsKey("therapyRelationshipType") {
			instCtx.addError(FHIRValidationError(missing: "therapyRelationshipType"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		self.therapyRelationshipType?.decorate(json: &json, withKey: "therapyRelationshipType", errors: &errors)
		if nil == self.therapyRelationshipType {
			errors.append(FHIRValidationError(missing: "therapyRelationshipType"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
	}
}


/**
Describe the undesirable effects of the medicinal product.
*/
open class MedicinalProductClinicalsUndesirableEffects: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsUndesirableEffects" }
	}
	
	/// Classification of the effect.
	public var classification: CodeableConcept?
	
	/// The frequency of occurrence of the effect.
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// The population group to which this applies.
	public var population: [MedicinalProductClinicalsUndesirableEffectsPopulation]?
	
	/// The symptom, condition or undesirable effect.
	public var symptomConditionEffect: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		classification = createInstance(type: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		frequencyOfOccurrence = createInstance(type: CodeableConcept.self, for: "frequencyOfOccurrence", in: json, context: &instCtx, owner: self) ?? frequencyOfOccurrence
		population = createInstances(of: MedicinalProductClinicalsUndesirableEffectsPopulation.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		symptomConditionEffect = createInstance(type: CodeableConcept.self, for: "symptomConditionEffect", in: json, context: &instCtx, owner: self) ?? symptomConditionEffect
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.classification?.decorate(json: &json, withKey: "classification", errors: &errors)
		self.frequencyOfOccurrence?.decorate(json: &json, withKey: "frequencyOfOccurrence", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		self.symptomConditionEffect?.decorate(json: &json, withKey: "symptomConditionEffect", errors: &errors)
	}
}


/**
The population group to which this applies.
*/
open class MedicinalProductClinicalsUndesirableEffectsPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductClinicalsUndesirableEffectsPopulation" }
	}
	
	/// The age of the specific population.
	public var ageCodeableConcept: CodeableConcept?
	
	/// The age of the specific population.
	public var ageRange: Range?
	
	/// The gender of the specific population.
	public var gender: CodeableConcept?
	
	/// The existing physiological conditions of the specific population to which this applies.
	public var physiologicalCondition: CodeableConcept?
	
	/// Race of the specific population.
	public var race: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ageCodeableConcept = createInstance(type: CodeableConcept.self, for: "ageCodeableConcept", in: json, context: &instCtx, owner: self) ?? ageCodeableConcept
		ageRange = createInstance(type: Range.self, for: "ageRange", in: json, context: &instCtx, owner: self) ?? ageRange
		gender = createInstance(type: CodeableConcept.self, for: "gender", in: json, context: &instCtx, owner: self) ?? gender
		physiologicalCondition = createInstance(type: CodeableConcept.self, for: "physiologicalCondition", in: json, context: &instCtx, owner: self) ?? physiologicalCondition
		race = createInstance(type: CodeableConcept.self, for: "race", in: json, context: &instCtx, owner: self) ?? race
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.ageCodeableConcept?.decorate(json: &json, withKey: "ageCodeableConcept", errors: &errors)
		self.ageRange?.decorate(json: &json, withKey: "ageRange", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		self.physiologicalCondition?.decorate(json: &json, withKey: "physiologicalCondition", errors: &errors)
		self.race?.decorate(json: &json, withKey: "race", errors: &errors)
	}
}

