//
//  GuidanceResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/GuidanceResponse) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Encounter or Episode during which the response was returned.
	public var context: Reference?
	
	/// Additional required data.
	public var dataRequirement: [DataRequirement]?
	
	/// Messages resulting from the evaluation of the artifact or artifacts.
	public var evaluationMessage: [Reference]?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// A reference to a knowledge module.
	public var module: Reference?
	
	/// Additional notes about the response.
	public var note: [Annotation]?
	
	/// When the guidance response was processed.
	public var occurrenceDateTime: DateTime?
	
	/// The output parameters of the evaluation, if any.
	public var outputParameters: Reference?
	
	/// Device returning the guidance.
	public var performer: Reference?
	
	/// Reason for the response.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason for the response.
	public var reasonReference: Reference?
	
	/// The id of the request associated with this response, if any.
	public var requestId: FHIRString?
	
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
	public convenience init(module: Reference, status: GuidanceResponseStatus) {
		self.init()
		self.module = module
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		dataRequirement = createInstances(of: DataRequirement.self, for: "dataRequirement", in: json, context: &instCtx, owner: self) ?? dataRequirement
		evaluationMessage = createInstances(of: Reference.self, for: "evaluationMessage", in: json, context: &instCtx, owner: self) ?? evaluationMessage
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		module = createInstance(type: Reference.self, for: "module", in: json, context: &instCtx, owner: self) ?? module
		if nil == module && !instCtx.containsKey("module") {
			instCtx.addError(FHIRValidationError(missing: "module"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		outputParameters = createInstance(type: Reference.self, for: "outputParameters", in: json, context: &instCtx, owner: self) ?? outputParameters
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		reasonCodeableConcept = createInstance(type: CodeableConcept.self, for: "reasonCodeableConcept", in: json, context: &instCtx, owner: self) ?? reasonCodeableConcept
		reasonReference = createInstance(type: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		requestId = createInstance(type: FHIRString.self, for: "requestId", in: json, context: &instCtx, owner: self) ?? requestId
		result = createInstance(type: Reference.self, for: "result", in: json, context: &instCtx, owner: self) ?? result
		status = createEnum(type: GuidanceResponseStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "dataRequirement", using: self.dataRequirement, errors: &errors)
		arrayDecorate(json: &json, withKey: "evaluationMessage", using: self.evaluationMessage, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.module?.decorate(json: &json, withKey: "module", errors: &errors)
		if nil == self.module {
			errors.append(FHIRValidationError(missing: "module"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.outputParameters?.decorate(json: &json, withKey: "outputParameters", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.reasonCodeableConcept?.decorate(json: &json, withKey: "reasonCodeableConcept", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
		self.requestId?.decorate(json: &json, withKey: "requestId", errors: &errors)
		self.result?.decorate(json: &json, withKey: "result", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}

