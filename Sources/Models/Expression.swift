//
//  Expression.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Expression) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An expression that can be used to generate a value.

A expression that is evaluated in a specified context and returns a value. The context of use of the expression must
specify the context in which the expression is evaluated, and how the result of the expression is used.
*/
open class Expression: Element {
	override open class var resourceType: String {
		get { return "Expression" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: FHIRString?
	
	/// Expression in specified language.
	public var expression: FHIRString?
	
	/// text/cql | text/fhirpath | application/x-fhir-query | etc..
	public var language: FHIRString?
	
	/// Short name assigned to expression for reuse.
	public var name: FHIRString?
	
	/// Where the expression is found.
	public var reference: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(language: FHIRString) {
		self.init()
		self.language = language
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		if nil == language && !instCtx.containsKey("language") {
			instCtx.addError(FHIRValidationError(missing: "language"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		reference = createInstance(type: FHIRURL.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		if nil == self.language {
			errors.append(FHIRValidationError(missing: "language"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
	}
}

