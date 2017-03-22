//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Request to perform some action on or in regards to an existing resource.

This resource provides the target, request and response, and action details for an action to be performed by the target
on or about existing resources.
*/
open class ProcessRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcessRequest" }
	}
	
	/// The type of processing action being requested, for example Reversal, Readjudication,
	/// StatusRequest,PendedRequest.
	public var action: ActionList?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Resource type(s) to exclude.
	public var exclude: [FHIRString]?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Resource type(s) to include.
	public var include: [FHIRString]?
	
	/// Items to re-adjudicate.
	public var item: [ProcessRequestItem]?
	
	/// Remove history.
	public var nullify: FHIRBool?
	
	/// Responsible organization.
	public var organization: Reference?
	
	/// Selection period.
	public var period: Period?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Reference number/string.
	public var reference: FHIRString?
	
	/// Reference to the Request resource.
	public var request: Reference?
	
	/// Reference to the Response resource.
	public var response: Reference?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Party which is the target of the request.
	public var target: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createEnum(type: ActionList.self, for: "action", in: json, context: &instCtx) ?? action
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		exclude = createInstances(of: FHIRString.self, for: "exclude", in: json, context: &instCtx, owner: self) ?? exclude
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		include = createInstances(of: FHIRString.self, for: "include", in: json, context: &instCtx, owner: self) ?? include
		item = createInstances(of: ProcessRequestItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		nullify = createInstance(type: FHIRBool.self, for: "nullify", in: json, context: &instCtx, owner: self) ?? nullify
		organization = createInstance(type: Reference.self, for: "organization", in: json, context: &instCtx, owner: self) ?? organization
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		reference = createInstance(type: FHIRString.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		request = createInstance(type: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: Reference.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		target = createInstance(type: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.action?.decorate(json: &json, withKey: "action", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		arrayDecorate(json: &json, withKey: "exclude", using: self.exclude, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "include", using: self.include, errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.nullify?.decorate(json: &json, withKey: "nullify", errors: &errors)
		self.organization?.decorate(json: &json, withKey: "organization", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
	}
}


/**
Items to re-adjudicate.

List of top level items to be re-adjudicated, if none specified then the entire submission is re-adjudicated.
*/
open class ProcessRequestItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcessRequestItem" }
	}
	
	/// Service instance.
	public var sequenceLinkId: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: FHIRInteger) {
		self.init()
		self.sequenceLinkId = sequenceLinkId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		sequenceLinkId = createInstance(type: FHIRInteger.self, for: "sequenceLinkId", in: json, context: &instCtx, owner: self) ?? sequenceLinkId
		if nil == sequenceLinkId && !instCtx.containsKey("sequenceLinkId") {
			instCtx.addError(FHIRValidationError(missing: "sequenceLinkId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.sequenceLinkId?.decorate(json: &json, withKey: "sequenceLinkId", errors: &errors)
		if nil == self.sequenceLinkId {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
	}
}

