//
//  BodySite.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/BodySite) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Named anatomical location.
	public var code: CodeableConcept?
	
	/// The Description of anatomical location.
	public var description_fhir: FHIRString?
	
	/// Bodysite identifier.
	public var identifier: [Identifier]?
	
	/// Attached images.
	public var image: [Attachment]?
	
	/// Modification to location code.
	public var modifier: [CodeableConcept]?
	
	/// Patient.
	public var patient: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		image = try createInstances(of: Attachment.self, for: "image", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? image
		modifier = try createInstances(of: CodeableConcept.self, for: "modifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifier
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
	}
}

