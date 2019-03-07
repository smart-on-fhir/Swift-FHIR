//
//  Narrative.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Narrative) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Human-readable summary of the resource (essential clinical and business information).

A human-readable summary of the resource conveying the essential clinical and business information for the resource.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		div = createInstance(type: FHIRString.self, for: "div", in: json, context: &instCtx, owner: self) ?? div
		if nil == div && !instCtx.containsKey("div") {
			instCtx.addError(FHIRValidationError(missing: "div"))
		}
		status = createEnum(type: NarrativeStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
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

