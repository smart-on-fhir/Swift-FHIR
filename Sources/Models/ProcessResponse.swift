//
//  ProcessResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ProcessResponse) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
ProcessResponse resource.

This resource provides processing status, errors and notes from the processing of a resource.
*/
open class ProcessResponse: DomainResource {
	override open class var resourceType: String {
		get { return "ProcessResponse" }
	}
	
	/// Request for additional information.
	public var communicationRequest: [Reference]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: FHIRString?
	
	/// Error code.
	public var error: [CodeableConcept]?
	
	/// Printed Form Identifier.
	public var form: CodeableConcept?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Authoring Organization.
	public var organization: Reference?
	
	/// Processing outcome.
	public var outcome: CodeableConcept?
	
	/// Processing comments or additional requirements.
	public var processNote: [ProcessResponseProcessNote]?
	
	/// Request reference.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible Practitioner.
	public var requestProvider: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		communicationRequest = createInstances(of: Reference.self, for: "communicationRequest", in: json, context: &instCtx, owner: self) ?? communicationRequest
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		disposition = createInstance(type: FHIRString.self, for: "disposition", in: json, context: &instCtx, owner: self) ?? disposition
		error = createInstances(of: CodeableConcept.self, for: "error", in: json, context: &instCtx, owner: self) ?? error
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		processNote = createInstances(of: ProcessResponseProcessNote.self, for: "processNote", in: json, context: &instCtx, owner: self) ?? processNote
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		requestOrganization = createInstance(type: Reference.self, for: "requestOrganization", in: json, context: &instCtx, owner: self) ?? requestOrganization
		requestProvider = createInstance(type: Reference.self, for: "requestProvider", in: json, context: &instCtx, owner: self) ?? requestProvider
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "communicationRequest", using: self.communicationRequest, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.disposition?.decorate(json: &json, withKey: "disposition", errors: &errors)
		arrayDecorate(json: &json, withKey: "error", using: self.error, errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		arrayDecorate(json: &json, withKey: "processNote", using: self.processNote, errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.requestOrganization?.decorate(json: &json, withKey: "requestOrganization", errors: &errors)
		self.requestProvider?.decorate(json: &json, withKey: "requestProvider", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Processing comments or additional requirements.

Suite of processing notes or additional requirements if the processing has been held.
*/
open class ProcessResponseProcessNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcessResponseProcessNote" }
	}
	
	/// Comment on the processing.
	public var text: FHIRString?
	
	/// display | print | printoper.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

