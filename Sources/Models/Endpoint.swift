//
//  Endpoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Endpoint) on 2016-12-06.
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
	public var address: URL?
	
	/// Protocol/Profile/Standard to be used with this endpoint connection.
	public var connectionType: Coding?
	
	/// Contact details for source (e.g. troubleshooting).
	public var contact: [ContactPoint]?
	
	/// Usage depends on the channel type.
	public var header: [String]?
	
	/// Identifies this endpoint across multiple systems.
	public var identifier: [Identifier]?
	
	/// Organization that manages this endpoint (may not be the organization that exposes the endpoint).
	public var managingOrganization: Reference?
	
	/// A name that this endpoint can be identified by.
	public var name: String?
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType
	/// defined this).
	public var payloadMimeType: [String]?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries).
	public var payloadType: [CodeableConcept]?
	
	/// Interval the endpoint is expected to be operational.
	public var period: Period?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: String?
	
	/// active | suspended | error | off | test.
	public var status: EndpointStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: URL, connectionType: Coding, payloadType: [CodeableConcept], status: EndpointStatus) {
		self.init()
		self.address = address
		self.connectionType = connectionType
		self.payloadType = payloadType
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? String {
				self.address = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "address"))
		}
		if let exist = json["connectionType"] {
			presentKeys.insert("connectionType")
			if let val = exist as? FHIRJSON {
				do {
					self.connectionType = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "connectionType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "connectionType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "connectionType"))
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["header"] {
			presentKeys.insert("header")
			if let val = exist as? [String] {
				self.header = val
			}
			else {
				errors.append(FHIRValidationError(key: "header", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["managingOrganization"] {
			presentKeys.insert("managingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.managingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "managingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["payloadMimeType"] {
			presentKeys.insert("payloadMimeType")
			if let val = exist as? [String] {
				self.payloadMimeType = val
			}
			else {
				errors.append(FHIRValidationError(key: "payloadMimeType", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["payloadType"] {
			presentKeys.insert("payloadType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.payloadType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payloadType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payloadType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "payloadType"))
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["publicKey"] {
			presentKeys.insert("publicKey")
			if let val = exist as? String {
				self.publicKey = val
			}
			else {
				errors.append(FHIRValidationError(key: "publicKey", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = EndpointStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let connectionType = self.connectionType {
			json["connectionType"] = connectionType.asJSON(errors: &errors)
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let header = self.header {
			json["header"] = header.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let payloadMimeType = self.payloadMimeType {
			json["payloadMimeType"] = payloadMimeType.map() { $0.asJSON() }
		}
		if let payloadType = self.payloadType {
			json["payloadType"] = payloadType.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let publicKey = self.publicKey {
			json["publicKey"] = publicKey.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		
		return json
	}
}

