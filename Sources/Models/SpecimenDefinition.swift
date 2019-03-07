//
//  SpecimenDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/SpecimenDefinition) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var patientPreparation: [CodeableConcept]?
	
	/// Time aspect for collection.
	public var timeAspect: FHIRString?
	
	/// Kind of material to collect.
	public var typeCollected: CodeableConcept?
	
	/// Specimen in container intended for testing by lab.
	public var typeTested: [SpecimenDefinitionTypeTested]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		collection = createInstances(of: CodeableConcept.self, for: "collection", in: json, context: &instCtx, owner: self) ?? collection
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		patientPreparation = createInstances(of: CodeableConcept.self, for: "patientPreparation", in: json, context: &instCtx, owner: self) ?? patientPreparation
		timeAspect = createInstance(type: FHIRString.self, for: "timeAspect", in: json, context: &instCtx, owner: self) ?? timeAspect
		typeCollected = createInstance(type: CodeableConcept.self, for: "typeCollected", in: json, context: &instCtx, owner: self) ?? typeCollected
		typeTested = createInstances(of: SpecimenDefinitionTypeTested.self, for: "typeTested", in: json, context: &instCtx, owner: self) ?? typeTested
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "collection", using: self.collection, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "patientPreparation", using: self.patientPreparation, errors: &errors)
		self.timeAspect?.decorate(json: &json, withKey: "timeAspect", errors: &errors)
		self.typeCollected?.decorate(json: &json, withKey: "typeCollected", errors: &errors)
		arrayDecorate(json: &json, withKey: "typeTested", using: self.typeTested, errors: &errors)
	}
}


/**
Specimen in container intended for testing by lab.

Specimen conditioned in a container as expected by the testing laboratory.
*/
open class SpecimenDefinitionTypeTested: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionTypeTested" }
	}
	
	/// The specimen's container.
	public var container: SpecimenDefinitionTypeTestedContainer?
	
	/// Specimen handling before testing.
	public var handling: [SpecimenDefinitionTypeTestedHandling]?
	
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
	public convenience init(preference: SpecimenContainedPreference) {
		self.init()
		self.preference = preference
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		container = createInstance(type: SpecimenDefinitionTypeTestedContainer.self, for: "container", in: json, context: &instCtx, owner: self) ?? container
		handling = createInstances(of: SpecimenDefinitionTypeTestedHandling.self, for: "handling", in: json, context: &instCtx, owner: self) ?? handling
		isDerived = createInstance(type: FHIRBool.self, for: "isDerived", in: json, context: &instCtx, owner: self) ?? isDerived
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
		
		self.container?.decorate(json: &json, withKey: "container", errors: &errors)
		arrayDecorate(json: &json, withKey: "handling", using: self.handling, errors: &errors)
		self.isDerived?.decorate(json: &json, withKey: "isDerived", errors: &errors)
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
The specimen's container.
*/
open class SpecimenDefinitionTypeTestedContainer: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionTypeTestedContainer" }
	}
	
	/// Additive associated with container.
	public var additive: [SpecimenDefinitionTypeTestedContainerAdditive]?
	
	/// Color of container cap.
	public var cap: CodeableConcept?
	
	/// Container capacity.
	public var capacity: Quantity?
	
	/// Container description.
	public var description_fhir: FHIRString?
	
	/// Container material.
	public var material: CodeableConcept?
	
	/// Minimum volume.
	public var minimumVolumeQuantity: Quantity?
	
	/// Minimum volume.
	public var minimumVolumeString: FHIRString?
	
	/// Specimen container preparation.
	public var preparation: FHIRString?
	
	/// Kind of container associated with the kind of specimen.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additive = createInstances(of: SpecimenDefinitionTypeTestedContainerAdditive.self, for: "additive", in: json, context: &instCtx, owner: self) ?? additive
		cap = createInstance(type: CodeableConcept.self, for: "cap", in: json, context: &instCtx, owner: self) ?? cap
		capacity = createInstance(type: Quantity.self, for: "capacity", in: json, context: &instCtx, owner: self) ?? capacity
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		material = createInstance(type: CodeableConcept.self, for: "material", in: json, context: &instCtx, owner: self) ?? material
		minimumVolumeQuantity = createInstance(type: Quantity.self, for: "minimumVolumeQuantity", in: json, context: &instCtx, owner: self) ?? minimumVolumeQuantity
		minimumVolumeString = createInstance(type: FHIRString.self, for: "minimumVolumeString", in: json, context: &instCtx, owner: self) ?? minimumVolumeString
		preparation = createInstance(type: FHIRString.self, for: "preparation", in: json, context: &instCtx, owner: self) ?? preparation
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "additive", using: self.additive, errors: &errors)
		self.cap?.decorate(json: &json, withKey: "cap", errors: &errors)
		self.capacity?.decorate(json: &json, withKey: "capacity", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.material?.decorate(json: &json, withKey: "material", errors: &errors)
		self.minimumVolumeQuantity?.decorate(json: &json, withKey: "minimumVolumeQuantity", errors: &errors)
		self.minimumVolumeString?.decorate(json: &json, withKey: "minimumVolumeString", errors: &errors)
		self.preparation?.decorate(json: &json, withKey: "preparation", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Additive associated with container.

Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin,
Citrate, EDTA.
*/
open class SpecimenDefinitionTypeTestedContainerAdditive: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionTypeTestedContainerAdditive" }
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
			fhir_warn("Type “\(Swift.type(of: additive))” for property “\(additive)” is invalid, ignoring")
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

Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing
process.
*/
open class SpecimenDefinitionTypeTestedHandling: BackboneElement {
	override open class var resourceType: String {
		get { return "SpecimenDefinitionTypeTestedHandling" }
	}
	
	/// Preservation instruction.
	public var instruction: FHIRString?
	
	/// Maximum preservation time.
	public var maxDuration: Duration?
	
	/// Temperature qualifier.
	public var temperatureQualifier: CodeableConcept?
	
	/// Temperature range.
	public var temperatureRange: Range?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		instruction = createInstance(type: FHIRString.self, for: "instruction", in: json, context: &instCtx, owner: self) ?? instruction
		maxDuration = createInstance(type: Duration.self, for: "maxDuration", in: json, context: &instCtx, owner: self) ?? maxDuration
		temperatureQualifier = createInstance(type: CodeableConcept.self, for: "temperatureQualifier", in: json, context: &instCtx, owner: self) ?? temperatureQualifier
		temperatureRange = createInstance(type: Range.self, for: "temperatureRange", in: json, context: &instCtx, owner: self) ?? temperatureRange
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.instruction?.decorate(json: &json, withKey: "instruction", errors: &errors)
		self.maxDuration?.decorate(json: &json, withKey: "maxDuration", errors: &errors)
		self.temperatureQualifier?.decorate(json: &json, withKey: "temperatureQualifier", errors: &errors)
		self.temperatureRange?.decorate(json: &json, withKey: "temperatureRange", errors: &errors)
	}
}

