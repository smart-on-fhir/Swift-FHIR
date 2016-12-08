//
//  Endpoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Endpoint) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// The technical address for conneccting to this endpoint.
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
	
	/// PKI Public keys to support secure communications.
	public var publicKey: FHIRString?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		address = try createInstance(type: FHIRURL.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		if nil == address && !presentKeys.contains("address") {
			errors.append(FHIRValidationError(missing: "address"))
		}
		connectionType = try createInstance(type: Coding.self, for: "connectionType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? connectionType
		if nil == connectionType && !presentKeys.contains("connectionType") {
			errors.append(FHIRValidationError(missing: "connectionType"))
		}
		contact = try createInstances(of: ContactPoint.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		header = try createInstances(of: FHIRString.self, for: "header", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? header
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		managingOrganization = try createInstance(type: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		payloadMimeType = try createInstances(of: FHIRString.self, for: "payloadMimeType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payloadMimeType
		payloadType = try createInstances(of: CodeableConcept.self, for: "payloadType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payloadType
		if (nil == payloadType || payloadType!.isEmpty) && !presentKeys.contains("payloadType") {
			errors.append(FHIRValidationError(missing: "payloadType"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		publicKey = try createInstance(type: FHIRString.self, for: "publicKey", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publicKey
		status = createEnum(type: EndpointStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		
		return errors.isEmpty ? nil : errors
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
		self.publicKey?.decorate(json: &json, withKey: "publicKey", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}
