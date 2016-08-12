//
//  Endpoint.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Endpoint) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The technical details of an endpoint that can be used for electronic services.
 *
 *  The technical details of an endpoint that can be used for electronic services, such as for web services providing
 *  XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
 */
public class Endpoint: DomainResource {
	override public class var resourceName: String {
		get { return "Endpoint" }
	}
	
	/// Where the channel points to.
	public var address: NSURL?
	
	/// rest-hook | websocket | email | sms | message.
	public var connectionType: Coding?
	
	/// Contact details for source (e.g. troubleshooting).
	public var contact: [ContactPoint]?
	
	/// Usage depends on the channel type.
	public var header: [String]?
	
	/// Identifies this endpoint across multiple systems.
	public var identifier: [Identifier]?
	
	/// Organization that manages this endpoint (may not be the organization that exposes the endpoint).
	public var managingOrganization: Reference?
	
	/// The http verb to be used when calling this endpoint.
	public var method: [Coding]?
	
	/// A name that this endpoint can be identified by.
	public var name: String?
	
	/// Mimetype to send, or blank for no payload.
	public var payloadFormat: String?
	
	/// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries).
	public var payloadType: [CodeableConcept]?
	
	/// Interval during responsibility is assumed.
	public var period: Period?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: String?
	
	/// active | suspended | error | off | entered-in-error.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: NSURL, connectionType: Coding, payloadFormat: String, payloadType: [CodeableConcept], status: String) {
		self.init(json: nil)
		self.address = address
		self.connectionType = connectionType
		self.payloadFormat = payloadFormat
		self.payloadType = payloadType
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? String {
					self.address = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "address"))
			}
			if let exist: AnyObject = js["connectionType"] {
				presentKeys.insert("connectionType")
				if let val = exist as? FHIRJSON {
					self.connectionType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "connectionType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "connectionType"))
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["header"] {
				presentKeys.insert("header")
				if let val = exist as? [String] {
					self.header = val
				}
				else {
					errors.append(FHIRJSONError(key: "header", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? [FHIRJSON] {
					self.method = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["payloadFormat"] {
				presentKeys.insert("payloadFormat")
				if let val = exist as? String {
					self.payloadFormat = val
				}
				else {
					errors.append(FHIRJSONError(key: "payloadFormat", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "payloadFormat"))
			}
			if let exist: AnyObject = js["payloadType"] {
				presentKeys.insert("payloadType")
				if let val = exist as? [FHIRJSON] {
					self.payloadType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "payloadType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "payloadType"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publicKey"] {
				presentKeys.insert("publicKey")
				if let val = exist as? String {
					self.publicKey = val
				}
				else {
					errors.append(FHIRJSONError(key: "publicKey", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let connectionType = self.connectionType {
			json["connectionType"] = connectionType.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ContactPoint.asJSONArray(contact)
		}
		if let header = self.header {
			var arr = [AnyObject]()
			for val in header {
				arr.append(val.asJSON())
			}
			json["header"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let method = self.method {
			json["method"] = Coding.asJSONArray(method)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let payloadFormat = self.payloadFormat {
			json["payloadFormat"] = payloadFormat.asJSON()
		}
		if let payloadType = self.payloadType {
			json["payloadType"] = CodeableConcept.asJSONArray(payloadType)
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

