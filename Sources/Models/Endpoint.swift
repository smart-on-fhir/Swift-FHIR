//
//  Endpoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Endpoint) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
The technical details of an endpoint that can be used for electronic services.

The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b
or a REST endpoint for another FHIR server. This may include any security context information.
*/
open class Endpoint: DomainResource {
	override open class var resourceType: String {
		get { return "Endpoint" }
	}
	
	/// The technical base address for connecting to this endpoint.
	public var address: FHIRURL?
	
	/// Protocol/Profile/Standard to be used with this endpoint connection.
	public var connectionType: Coding?
	
	/// Contact details for source (e.g. troubleshooting).
	public var contact: [ContactPoint]?
	
	/// Usage depends on the channel type.
	public var header: [FHIRString]?
	
	/// Identifies this endpoint across multiple systems.
	public var identifier: [Identifier]?
	
	/// Organization that manages this endpoint (may not be the organization that exposes the endpoint).
	public var managingOrganization: Reference?
	
	/// A name that this endpoint can be identified by.
	public var name: FHIRString?
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this).
	public var payloadMimeType: [FHIRString]?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries).
	public var payloadType: [CodeableConcept]?
	
	/// Interval the endpoint is expected to be operational.
	public var period: Period?
	
	/// active | suspended | error | off | test.
	public var status: EndpointStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: FHIRURL, connectionType: Coding, payloadType: [CodeableConcept], status: EndpointStatus) {
		self.init()
		self.address = address
		self.connectionType = connectionType
		self.payloadType = payloadType
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: FHIRURL.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		if nil == address && !instCtx.containsKey("address") {
			instCtx.addError(FHIRValidationError(missing: "address"))
		}
		connectionType = createInstance(type: Coding.self, for: "connectionType", in: json, context: &instCtx, owner: self) ?? connectionType
		if nil == connectionType && !instCtx.containsKey("connectionType") {
			instCtx.addError(FHIRValidationError(missing: "connectionType"))
		}
		contact = createInstances(of: ContactPoint.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		header = createInstances(of: FHIRString.self, for: "header", in: json, context: &instCtx, owner: self) ?? header
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		managingOrganization = createInstance(type: Reference.self, for: "managingOrganization", in: json, context: &instCtx, owner: self) ?? managingOrganization
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		payloadMimeType = createInstances(of: FHIRString.self, for: "payloadMimeType", in: json, context: &instCtx, owner: self) ?? payloadMimeType
		payloadType = createInstances(of: CodeableConcept.self, for: "payloadType", in: json, context: &instCtx, owner: self) ?? payloadType
		if (nil == payloadType || payloadType!.isEmpty) && !instCtx.containsKey("payloadType") {
			instCtx.addError(FHIRValidationError(missing: "payloadType"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		status = createEnum(type: EndpointStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		if nil == self.address {
			errors.append(FHIRValidationError(missing: "address"))
		}
		self.connectionType?.decorate(json: &json, withKey: "connectionType", errors: &errors)
		if nil == self.connectionType {
			errors.append(FHIRValidationError(missing: "connectionType"))
		}
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		arrayDecorate(json: &json, withKey: "header", using: self.header, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "payloadMimeType", using: self.payloadMimeType, errors: &errors)
		arrayDecorate(json: &json, withKey: "payloadType", using: self.payloadType, errors: &errors)
		if nil == payloadType || self.payloadType!.isEmpty {
			errors.append(FHIRValidationError(missing: "payloadType"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

