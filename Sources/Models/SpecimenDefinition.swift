//
//  SpecimenDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Kind of specimen.

A kind of specimen with associated set of requirements.
*/
open class SpecimenDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "SpecimenDefinition" }
	}
	
	/// Specimen collection procedure.
	public var collection: [CodeableConcept]?
	
	/// Business identifier of a kind of specimen.
	public var identifier: Identifier?
	
	/// Patient preparation for collection.
	public var patientPreparation: FHIRString?
	
	/// Specimen in container intended for testing by lab.
	public var specimenToLab: [SpecimenDefinitionSpecimenToLab]?
	
	/// Time aspect for collection.
	public var timeAspect: FHIRString?
	
	/// Kind of material to collect.
	public var typeCollected: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		collection = createInstances(of: CodeableConcept.self, for: "collection", in: json, context: &instCtx, owner: self) ?? collection
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		patientPreparation = createInstance(type: FHIRString.self, for: "patientPreparation", in: json, context: &instCtx, owner: self) ?? patientPreparation
		specimenToLab = createInstances(of: SpecimenDefinitionSpecimenToLab.self, for: "specimenToLab", in: json, context: &instCtx, owner: self) ?? specimenToLab
		timeAspect = createInstance(type: FHIRString.self, for: "timeAspect", in: json, context: &instCtx, owner: self) ?? timeAspect
		typeCollected = createInstance(type: CodeableConcept.self, for: "typeCollected", in: json, context: &instCtx, owner: self) ?? typeCollected
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "collection", using: self.collection, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.patientPreparation?.decorate(json: &json, withKey: "patientPreparation", errors: &errors)
		arrayDecorate(json: &json, withKey: "specimenToLab", using: self.specimenToLab, errors: &errors)
		self.timeAspect?.decorate(json: &json, withKey: "timeAspect", errors: &errors)
		self.typeCollected?.decorate(json: &json, withKey: "typeCollected", errors: &errors)
	}
}


/**
Specimen in container intended for testing by lab.

Specimen conditioned in a container as expected by the testing laboratory.
*/
open class SpecimenDefinitionSpecimenToLab: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionSpecimenToLab" }
	}
	
	/// Additive associated with container.
	public var containerAdditive: [SpecimenDefinitionSpecimenToLabContainerAdditive]?
	
	/// Color of container cap.
	public var containerCap: CodeableConcept?
	
	/// Container capacity.
	public var containerCapacity: Quantity?
	
	/// Container description.
	public var containerDescription: FHIRString?
	
	/// Container material.
	public var containerMaterial: CodeableConcept?
	
	/// Minimum volume.
	public var containerMinimumVolume: Quantity?
	
	/// Specimen container preparation.
	public var containerPreparation: FHIRString?
	
	/// Kind of container associated with the kind of specimen.
	public var containerType: CodeableConcept?
	
	/// Specimen handling before testing.
	public var handling: [SpecimenDefinitionSpecimenToLabHandling]?
	
	/// Primary or secondary specimen.
	public var isDerived: FHIRBool?
	
	/// The preference for this type of conditioned specimen.
	public var preference: SpecimenContainedPreference?
	
	/// Rejection criterion.
	public var rejectionCriterion: [CodeableConcept]?
	
	/// Specimen requirements.
	public var requirement: FHIRString?
	
	/// Specimen retention time.
	public var retentionTime: Duration?
	
	/// Type of intended specimen.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(isDerived: FHIRBool, preference: SpecimenContainedPreference) {
		self.init()
		self.isDerived = isDerived
		self.preference = preference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		containerAdditive = createInstances(of: SpecimenDefinitionSpecimenToLabContainerAdditive.self, for: "containerAdditive", in: json, context: &instCtx, owner: self) ?? containerAdditive
		containerCap = createInstance(type: CodeableConcept.self, for: "containerCap", in: json, context: &instCtx, owner: self) ?? containerCap
		containerCapacity = createInstance(type: Quantity.self, for: "containerCapacity", in: json, context: &instCtx, owner: self) ?? containerCapacity
		containerDescription = createInstance(type: FHIRString.self, for: "containerDescription", in: json, context: &instCtx, owner: self) ?? containerDescription
		containerMaterial = createInstance(type: CodeableConcept.self, for: "containerMaterial", in: json, context: &instCtx, owner: self) ?? containerMaterial
		containerMinimumVolume = createInstance(type: Quantity.self, for: "containerMinimumVolume", in: json, context: &instCtx, owner: self) ?? containerMinimumVolume
		containerPreparation = createInstance(type: FHIRString.self, for: "containerPreparation", in: json, context: &instCtx, owner: self) ?? containerPreparation
		containerType = createInstance(type: CodeableConcept.self, for: "containerType", in: json, context: &instCtx, owner: self) ?? containerType
		handling = createInstances(of: SpecimenDefinitionSpecimenToLabHandling.self, for: "handling", in: json, context: &instCtx, owner: self) ?? handling
		isDerived = createInstance(type: FHIRBool.self, for: "isDerived", in: json, context: &instCtx, owner: self) ?? isDerived
		if nil == isDerived && !instCtx.containsKey("isDerived") {
			instCtx.addError(FHIRValidationError(missing: "isDerived"))
		}
		preference = createEnum(type: SpecimenContainedPreference.self, for: "preference", in: json, context: &instCtx) ?? preference
		if nil == preference && !instCtx.containsKey("preference") {
			instCtx.addError(FHIRValidationError(missing: "preference"))
		}
		rejectionCriterion = createInstances(of: CodeableConcept.self, for: "rejectionCriterion", in: json, context: &instCtx, owner: self) ?? rejectionCriterion
		requirement = createInstance(type: FHIRString.self, for: "requirement", in: json, context: &instCtx, owner: self) ?? requirement
		retentionTime = createInstance(type: Duration.self, for: "retentionTime", in: json, context: &instCtx, owner: self) ?? retentionTime
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "containerAdditive", using: self.containerAdditive, errors: &errors)
		self.containerCap?.decorate(json: &json, withKey: "containerCap", errors: &errors)
		self.containerCapacity?.decorate(json: &json, withKey: "containerCapacity", errors: &errors)
		self.containerDescription?.decorate(json: &json, withKey: "containerDescription", errors: &errors)
		self.containerMaterial?.decorate(json: &json, withKey: "containerMaterial", errors: &errors)
		self.containerMinimumVolume?.decorate(json: &json, withKey: "containerMinimumVolume", errors: &errors)
		self.containerPreparation?.decorate(json: &json, withKey: "containerPreparation", errors: &errors)
		self.containerType?.decorate(json: &json, withKey: "containerType", errors: &errors)
		arrayDecorate(json: &json, withKey: "handling", using: self.handling, errors: &errors)
		self.isDerived?.decorate(json: &json, withKey: "isDerived", errors: &errors)
		if nil == self.isDerived {
			errors.append(FHIRValidationError(missing: "isDerived"))
		}
		self.preference?.decorate(json: &json, withKey: "preference", errors: &errors)
		if nil == self.preference {
			errors.append(FHIRValidationError(missing: "preference"))
		}
		arrayDecorate(json: &json, withKey: "rejectionCriterion", using: self.rejectionCriterion, errors: &errors)
		self.requirement?.decorate(json: &json, withKey: "requirement", errors: &errors)
		self.retentionTime?.decorate(json: &json, withKey: "retentionTime", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Additive associated with container.

Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
Citrate, EDTA.
*/
open class SpecimenDefinitionSpecimenToLabContainerAdditive: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionSpecimenToLabContainerAdditive" }
	}
	
	/// Additive associated with container.
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container.
	public var additiveReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(additive: Any) {
		self.init()
		if let value = additive as? CodeableConcept {
			self.additiveCodeableConcept = value
		}
		else if let value = additive as? Reference {
			self.additiveReference = value
		}
		else {
			fhir_warn("Type “\(type(of: additive))” for property “\(additive)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additiveCodeableConcept = createInstance(type: CodeableConcept.self, for: "additiveCodeableConcept", in: json, context: &instCtx, owner: self) ?? additiveCodeableConcept
		additiveReference = createInstance(type: Reference.self, for: "additiveReference", in: json, context: &instCtx, owner: self) ?? additiveReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.additiveCodeableConcept && nil == self.additiveReference {
			instCtx.addError(FHIRValidationError(missing: "additive[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.additiveCodeableConcept?.decorate(json: &json, withKey: "additiveCodeableConcept", errors: &errors)
		self.additiveReference?.decorate(json: &json, withKey: "additiveReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.additiveCodeableConcept && nil == self.additiveReference {
			errors.append(FHIRValidationError(missing: "additive[x]"))
		}
	}
}


/**
Specimen handling before testing.

Set of instructions for conservation/transport of the specimen at a defined temperature interval, prior the testing
process.
*/
open class SpecimenDefinitionSpecimenToLabHandling: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionSpecimenToLabHandling" }
	}
	
	/// Conservation condition set.
	public var conditionSet: CodeableConcept?
	
	/// Conservation instruction.
	public var instruction: FHIRString?
	
	/// Light exposure.
	public var lightExposure: FHIRString?
	
	/// Maximum conservation time.
	public var maxDuration: Duration?
	
	/// Temperature range.
	public var tempRange: Range?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		conditionSet = createInstance(type: CodeableConcept.self, for: "conditionSet", in: json, context: &instCtx, owner: self) ?? conditionSet
		instruction = createInstance(type: FHIRString.self, for: "instruction", in: json, context: &instCtx, owner: self) ?? instruction
		lightExposure = createInstance(type: FHIRString.self, for: "lightExposure", in: json, context: &instCtx, owner: self) ?? lightExposure
		maxDuration = createInstance(type: Duration.self, for: "maxDuration", in: json, context: &instCtx, owner: self) ?? maxDuration
		tempRange = createInstance(type: Range.self, for: "tempRange", in: json, context: &instCtx, owner: self) ?? tempRange
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.conditionSet?.decorate(json: &json, withKey: "conditionSet", errors: &errors)
		self.instruction?.decorate(json: &json, withKey: "instruction", errors: &errors)
		self.lightExposure?.decorate(json: &json, withKey: "lightExposure", errors: &errors)
		self.maxDuration?.decorate(json: &json, withKey: "maxDuration", errors: &errors)
		self.tempRange?.decorate(json: &json, withKey: "tempRange", errors: &errors)
	}
}

