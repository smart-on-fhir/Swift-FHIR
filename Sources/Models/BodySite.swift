//
//  BodySite.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/BodySite) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Specific and identified anatomical location.

Record details about the anatomical location of a specimen or body part.  This resource may be used when a coded concept
does not provide the necessary detail needed for the use case.
*/
open class BodySite: DomainResource {
	override open class var resourceType: String {
		get { return "BodySite" }
	}
	
	/// Whether this body site record is in active use.
	public var active: FHIRBool?
	
	/// Named anatomical location.
	public var code: CodeableConcept?
	
	/// Anatomical location description.
	public var description_fhir: FHIRString?
	
	/// Bodysite identifier.
	public var identifier: [Identifier]?
	
	/// Attached images.
	public var image: [Attachment]?
	
	/// Who this is about.
	public var patient: Reference?
	
	/// Modification to location code.
	public var qualifier: [CodeableConcept]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		image = createInstances(of: Attachment.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		qualifier = createInstances(of: CodeableConcept.self, for: "qualifier", in: json, context: &instCtx, owner: self) ?? qualifier
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "qualifier", using: self.qualifier, errors: &errors)
	}
}

