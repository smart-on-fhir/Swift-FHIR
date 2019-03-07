//
//  BodyStructure.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/BodyStructure) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Specific and identified anatomical structure.

Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the
necessary detail needed for the use case.
*/
open class BodyStructure: DomainResource {
	override open class var resourceType: String {
		get { return "BodyStructure" }
	}
	
	/// Whether this record is in active use.
	public var active: FHIRBool?
	
	/// Text description.
	public var description_fhir: FHIRString?
	
	/// Bodystructure identifier.
	public var identifier: [Identifier]?
	
	/// Attached images.
	public var image: [Attachment]?
	
	/// Body site.
	public var location: CodeableConcept?
	
	/// Body site modifier.
	public var locationQualifier: [CodeableConcept]?
	
	/// Kind of Structure.
	public var morphology: CodeableConcept?
	
	/// Who this is about.
	public var patient: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		image = createInstances(of: Attachment.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		location = createInstance(type: CodeableConcept.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		locationQualifier = createInstances(of: CodeableConcept.self, for: "locationQualifier", in: json, context: &instCtx, owner: self) ?? locationQualifier
		morphology = createInstance(type: CodeableConcept.self, for: "morphology", in: json, context: &instCtx, owner: self) ?? morphology
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		arrayDecorate(json: &json, withKey: "locationQualifier", using: self.locationQualifier, errors: &errors)
		self.morphology?.decorate(json: &json, withKey: "morphology", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
	}
}

