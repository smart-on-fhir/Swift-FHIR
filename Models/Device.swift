//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Device) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An instance of a manufactured thing that is used in the provision of healthcare.
 *
 *  This resource identifies an instance of a manufactured thing that is used in the provision of healthcare without
 *  being substantially changed through that activity. The device may be a machine, an insert, a computer, an
 *  application, etc. This includes durable (reusable) medical equipment as well as disposable equipment used for
 *  diagnostic, treatment, and research for healthcare and public health.
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
	
	/// Organization responsible for device
	public var owner: Reference?
	
	/// If the resource is affixed to a person
	public var patient: Reference?
	
	/// available | not-available | entered-in-error
	public var status: String?
	
	/// What kind of device this is
	public var type: CodeableConcept?
	
	/// FDA Mandated Unique Device Identifier
	public var udi: String?
	
	/// Network address to contact device
	public var url: NSURL?
	
	/// Version number (i.e. software)
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["expiry"] {
				presentKeys.addObject("expiry")
				if let val = exist as? String {
					self.expiry = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"expiry\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.addObject("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"location\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["lotNumber"] {
				presentKeys.addObject("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lotNumber\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["manufactureDate"] {
				presentKeys.addObject("manufactureDate")
				if let val = exist as? String {
					self.manufactureDate = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"manufactureDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["manufacturer"] {
				presentKeys.addObject("manufacturer")
				if let val = exist as? String {
					self.manufacturer = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"manufacturer\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["model"] {
				presentKeys.addObject("model")
				if let val = exist as? String {
					self.model = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"model\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["owner"] {
				presentKeys.addObject("owner")
				if let val = exist as? FHIRJSON {
					self.owner = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"owner\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["udi"] {
				presentKeys.addObject("udi")
				if let val = exist as? String {
					self.udi = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"udi\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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

