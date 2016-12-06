//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Device) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Item used in healthcare.

This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare
without being substantially changed through that activity. The device may be a medical or non-medical device.  Medical
devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment used for
diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include items such as a
machine, cellphone, computer, application, etc.
*/
open class Device: DomainResource {
	override open class var resourceType: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support.
	public var contact: [ContactPoint]?
	
	/// Date and time of expiry of this device (if applicable).
	public var expirationDate: DateTime?
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Where the resource is found.
	public var location: Reference?
	
	/// Lot number of manufacture.
	public var lotNumber: FHIRString?
	
	/// Date when the device was made.
	public var manufactureDate: DateTime?
	
	/// Name of device manufacturer.
	public var manufacturer: FHIRString?
	
	/// Model id assigned by the manufacturer.
	public var model: FHIRString?
	
	/// Device notes and comments.
	public var note: [Annotation]?
	
	/// Organization responsible for device.
	public var owner: Reference?
	
	/// Patient to whom Device is affixed.
	public var patient: Reference?
	
	/// Status of the Device availability.
	public var status: DeviceStatus?
	
	/// What kind of device this is.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udiCarrier: Identifier?
	
	/// Network address to contact device.
	public var url: URL?
	
	/// Version number (i.e. software).
	public var version: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		if let exist = json["expirationDate"] {
			presentKeys.insert("expirationDate")
			if let val = exist as? String {
				self.expirationDate = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "expirationDate", wants: String.self, has: type(of: exist)))
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
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["lotNumber"] {
			presentKeys.insert("lotNumber")
			if let val = exist as? String {
				self.lotNumber = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lotNumber", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["manufactureDate"] {
			presentKeys.insert("manufactureDate")
			if let val = exist as? String {
				self.manufactureDate = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "manufactureDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["manufacturer"] {
			presentKeys.insert("manufacturer")
			if let val = exist as? String {
				self.manufacturer = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "manufacturer", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["model"] {
			presentKeys.insert("model")
			if let val = exist as? String {
				self.model = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "model", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["owner"] {
			presentKeys.insert("owner")
			if let val = exist as? FHIRJSON {
				do {
					self.owner = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "owner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = DeviceStatus(rawValue: val) {
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
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["udiCarrier"] {
			presentKeys.insert("udiCarrier")
			if let val = exist as? FHIRJSON {
				do {
					self.udiCarrier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "udiCarrier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "udiCarrier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
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
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let udiCarrier = self.udiCarrier {
			json["udiCarrier"] = udiCarrier.asJSON(errors: &errors)
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

