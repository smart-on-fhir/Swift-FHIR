//
//  UsageContext.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/UsageContext) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Describes the context of use for a conformance or knowledge resource.

Specifies clinical/business/etc metadata that can be used to retrieve, index and/or categorize an artifact. This
metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care
(e.g., venue, care setting, provider of care).
*/
open class UsageContext: Element {
	override open class var resourceType: String {
		get { return "UsageContext" }
	}
	
	/// Type of context being specified.
	public var code: Coding?
	
	/// Value that defines the context.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value that defines the context.
	public var valueQuantity: Quantity?
	
	/// Value that defines the context.
	public var valueRange: Range?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding, value: Any) {
		self.init()
		self.code = code
		if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueQuantity && nil == self.valueRange {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueQuantity && nil == self.valueRange {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}

