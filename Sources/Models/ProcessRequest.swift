//
//  ProcessRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ProcessRequest) on 2017-02-14.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		action = createEnum(type: ActionList.self, for: "action", in: json, presentKeys: &presentKeys, errors: &errors) ?? action
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		exclude = try createInstances(of: FHIRString.self, for: "exclude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? exclude
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		include = try createInstances(of: FHIRString.self, for: "include", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? include
		item = try createInstances(of: ProcessRequestItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		nullify = try createInstance(type: FHIRBool.self, for: "nullify", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? nullify
		organization = try createInstance(type: Reference.self, for: "organization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? organization
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		provider = try createInstance(type: Reference.self, for: "provider", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? provider
		reference = try createInstance(type: FHIRString.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		request = try createInstance(type: Reference.self, for: "request", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? request
		response = try createInstance(type: Reference.self, for: "response", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? response
		status = try createInstance(type: FHIRString.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? status
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		sequenceLinkId = try createInstance(type: FHIRInteger.self, for: "sequenceLinkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sequenceLinkId
		if nil == sequenceLinkId && !presentKeys.contains("sequenceLinkId") {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.sequenceLinkId?.decorate(json: &json, withKey: "sequenceLinkId", errors: &errors)
		if nil == self.sequenceLinkId {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
	}
}

