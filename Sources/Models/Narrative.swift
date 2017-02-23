//
//  Narrative.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Narrative) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A human-readable formatted text, including images.
*/
open class Narrative: Element {
	override open class var resourceType: String {
		get { return "Narrative" }
	}
	
	/// Limited xhtml content.
	public var div: FHIRString?
	
	/// The status of the narrative - whether it's entirely generated (from just the defined data or the extensions
	/// too), or whether a human authored it and it may contain additional data.
	public var status: NarrativeStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(div: FHIRString, status: NarrativeStatus) {
		self.init()
		self.div = div
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		div = try createInstance(type: FHIRString.self, for: "div", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? div
		if nil == div && !presentKeys.contains("div") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "div"))
		}
		status = createEnum(type: NarrativeStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.div?.decorate(json: &json, withKey: "div", errors: &errors)
		if nil == self.div {
			errors.append(FHIRValidationError(missing: "div"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

