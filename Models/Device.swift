//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Device) on 2015-11-24.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An instance of a manufactured te that is used in the provision of healthcare.
 *
 *  This resource identifies an instance of a manufactured item that is used in the provision of healthcare without
 *  being substantially changed through that activity. The device may be a medical or non-medical device.  Medical
 *  devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
 *  diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include items such as
 *  a machine, cellphone, computer, application, etc.
 */
public class Device: DomainResource
{
	override public class var resourceName: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support
	public var contact: [ContactPoint]?
	
	/// Date and time of expiry of this device (if applicable)
	public var expiry: DateTime?
	
	/// Instance id from manufacturer, owner, and others
	public var identifier: [Identifier]?
	
	/// Where the resource is found
	public var location: Reference?
	
	/// Lot number of manufacture
	public var lotNumber: String?
	
	/// Manufacture date
	public var manufactureDate: DateTime?
	
	/// Name of device manufacturer
	public var manufacturer: String?
	
	/// Model id assigned by the manufacturer
	public var model: String?
	
	/// Device notes and comments
	public var note: [Annotation]?
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// If the resource is affixed to a person
	public var patient: Reference?
	
	/// available | not-available | entered-in-error
	public var status: String?
	
	/// What kind of device this is
	public var type: CodeableConcept?
	
	/// FDA mandated Unique Device Identifier
	public var udi: String?
	
	/// Network address to contact device
	public var url: NSURL?
	
	/// Version number (i.e. software)
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init(json: nil)
		self.type = type
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["expiry"] {
				presentKeys.insert("expiry")
				if let val = exist as? String {
					self.expiry = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expiry", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lotNumber"] {
				presentKeys.insert("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "lotNumber", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["manufactureDate"] {
				presentKeys.insert("manufactureDate")
				if let val = exist as? String {
					self.manufactureDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "manufactureDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["manufacturer"] {
				presentKeys.insert("manufacturer")
				if let val = exist as? String {
					self.manufacturer = val
				}
				else {
					errors.append(FHIRJSONError(key: "manufacturer", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["model"] {
				presentKeys.insert("model")
				if let val = exist as? String {
					self.model = val
				}
				else {
					errors.append(FHIRJSONError(key: "model", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["owner"] {
				presentKeys.insert("owner")
				if let val = exist as? FHIRJSON {
					self.owner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "owner", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.insert("udi")
				if let val = exist as? String {
					self.udi = val
				}
				else {
					errors.append(FHIRJSONError(key: "udi", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = ContactPoint.asJSONArray(contact)
		}
		if let expiry = self.expiry {
			json["expiry"] = expiry.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufactureDate = self.manufactureDate {
			json["manufactureDate"] = manufactureDate.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let model = self.model {
			json["model"] = model.asJSON()
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udi = self.udi {
			json["udi"] = udi.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

