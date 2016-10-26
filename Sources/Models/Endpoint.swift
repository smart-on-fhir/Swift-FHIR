//
//  Endpoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Endpoint) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The technical details of an endpoint that can be used for electronic services.
 *
 *  The technical details of an endpoint that can be used for electronic services, such as for web services providing
 *  XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
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
	
	/// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType defined this).
	public var payloadMimeType: [String]?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries).
	public var payloadType: [CodeableConcept]?
	
	/// Interval the endpoint is expected to be operational.
	public var period: Period?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: String?
	
	/// active | suspended | error | off | entered-in-error | test.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: URL, connectionType: Coding, payloadType: [CodeableConcept], status: String) {
		self.init(json: nil)
		self.address = address
		self.connectionType = connectionType
		self.payloadType = payloadType
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? String {
					self.address = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "address"))
			}
			if let exist = js["connectionType"] {
				presentKeys.insert("connectionType")
				if let val = exist as? FHIRJSON {
					self.connectionType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "connectionType", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "connectionType"))
			}
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["header"] {
				presentKeys.insert("header")
				if let val = exist as? [String] {
					self.header = val
				}
				else {
					errors.append(FHIRJSONError(key: "header", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["payloadMimeType"] {
				presentKeys.insert("payloadMimeType")
				if let val = exist as? [String] {
					self.payloadMimeType = val
				}
				else {
					errors.append(FHIRJSONError(key: "payloadMimeType", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["payloadType"] {
				presentKeys.insert("payloadType")
				if let val = exist as? [FHIRJSON] {
					self.payloadType = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "payloadType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "payloadType"))
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["publicKey"] {
				presentKeys.insert("publicKey")
				if let val = exist as? String {
					self.publicKey = val
				}
				else {
					errors.append(FHIRJSONError(key: "publicKey", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let connectionType = self.connectionType {
			json["connectionType"] = connectionType.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let header = self.header {
			var arr = [Any]()
			for val in header {
				arr.append(val.asJSON())
			}
			json["header"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let payloadMimeType = self.payloadMimeType {
			var arr = [Any]()
			for val in payloadMimeType {
				arr.append(val.asJSON())
			}
			json["payloadMimeType"] = arr
		}
		if let payloadType = self.payloadType {
			json["payloadType"] = payloadType.map() { $0.asJSON() }
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let publicKey = self.publicKey {
			json["publicKey"] = publicKey.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

