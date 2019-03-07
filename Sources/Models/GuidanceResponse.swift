//
//  GuidanceResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/GuidanceResponse) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The formal response to a guidance request.

A guidance response is the formal response to a guidance request, including any output parameters returned by the
evaluation, as well as the description of any proposed actions to be taken.
*/
open class GuidanceResponse: DomainResource {
	override open class var resourceType: String {
		get { return "GuidanceResponse" }
	}
	
	/// Additional required data.
	public var dataRequirement: [DataRequirement]?
	
	/// Encounter during which the response was returned.
	public var encounter: Reference?
	
	/// Messages resulting from the evaluation of the artifact or artifacts.
	public var evaluationMessage: [Reference]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// What guidance was requested.
	public var moduleCanonical: FHIRURL?
	
	/// What guidance was requested.
	public var moduleCodeableConcept: CodeableConcept?
	
	/// What guidance was requested.
	public var moduleUri: FHIRURL?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the guidance response was processed.
	public var occurrenceDateTime: DateTime?
	
	/// The output parameters of the evaluation, if any.
	public var outputParameters: Reference?
	
	/// Device returning the guidance.
	public var performer: Reference?
	
	/// Why guidance is needed.
	public var reasonCode: [CodeableConcept]?
	
	/// Why guidance is needed.
	public var reasonReference: [Reference]?
	
	/// The identifier of the request associated with this response, if any.
	public var requestIdentifier: Identifier?
	
	/// Proposed actions, if any.
	public var result: Reference?
	
	/// The status of the response. If the evaluation is completed successfully, the status will indicate success.
	/// However, in order to complete the evaluation, the engine may require more information. In this case, the status
	/// will be data-required, and the response will contain a description of the additional required information. If
	/// the evaluation completed successfully, but the engine determines that a potentially more accurate response could
	/// be provided if more data was available, the status will be data-requested, and the response will contain a
	/// description of the additional requested information.
	public var status: GuidanceResponseStatus?
	
	/// Patient the request was performed for.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(module: Any, status: GuidanceResponseStatus) {
		self.init()
		if let value = module as? FHIRURL {
			self.moduleUri = value
		}
		else if let value = module as? FHIRURL {
			self.moduleCanonical = value
		}
		else if let value = module as? CodeableConcept {
			self.moduleCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: module))” for property “\(module)” is invalid, ignoring")
		}
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		dataRequirement = createInstances(of: DataRequirement.self, for: "dataRequirement", in: json, context: &instCtx, owner: self) ?? dataRequirement
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		evaluationMessage = createInstances(of: Reference.self, for: "evaluationMessage", in: json, context: &instCtx, owner: self) ?? evaluationMessage
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		moduleCanonical = createInstance(type: FHIRURL.self, for: "moduleCanonical", in: json, context: &instCtx, owner: self) ?? moduleCanonical
		moduleCodeableConcept = createInstance(type: CodeableConcept.self, for: "moduleCodeableConcept", in: json, context: &instCtx, owner: self) ?? moduleCodeableConcept
		moduleUri = createInstance(type: FHIRURL.self, for: "moduleUri", in: json, context: &instCtx, owner: self) ?? moduleUri
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		outputParameters = createInstance(type: Reference.self, for: "outputParameters", in: json, context: &instCtx, owner: self) ?? outputParameters
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requestIdentifier = createInstance(type: Identifier.self, for: "requestIdentifier", in: json, context: &instCtx, owner: self) ?? requestIdentifier
		result = createInstance(type: Reference.self, for: "result", in: json, context: &instCtx, owner: self) ?? result
		status = createEnum(type: GuidanceResponseStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.moduleUri && nil == self.moduleCanonical && nil == self.moduleCodeableConcept {
			instCtx.addError(FHIRValidationError(missing: "module[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "dataRequirement", using: self.dataRequirement, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "evaluationMessage", using: self.evaluationMessage, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.moduleCanonical?.decorate(json: &json, withKey: "moduleCanonical", errors: &errors)
		self.moduleCodeableConcept?.decorate(json: &json, withKey: "moduleCodeableConcept", errors: &errors)
		self.moduleUri?.decorate(json: &json, withKey: "moduleUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.outputParameters?.decorate(json: &json, withKey: "outputParameters", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.requestIdentifier?.decorate(json: &json, withKey: "requestIdentifier", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.moduleUri && nil == self.moduleCanonical && nil == self.moduleCodeableConcept {
			errors.append(FHIRValidationError(missing: "module[x]"))
		}
	}
}

