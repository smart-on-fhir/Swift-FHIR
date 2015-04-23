//
//  NamingSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/NamingSystem) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  System of unique identification.
 *
 *  A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
 *  devices, etc.  Represents a "System" used within the Identifier and Coding data types.
 */
public class NamingSystem: DomainResource
{
	override public class var resourceName: String {
		get { return "NamingSystem" }
	}
	
	/// e.g. driver,  provider,  patient, bank etc
	public var category: CodeableConcept?
	
	/// Contact details of the publisher
	public var contact: [NamingSystemContact]?
	
	/// ISO 3-char country code
	public var country: String?
	
	/// Publication Date(/time)
	public var date: DateTime?
	
	/// What does namingsystem identify?
	public var description_fhir: String?
	
	/// Human-readable label
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Use this instead
	public var replacedBy: Reference?
	
	/// Who maintains system namespace?
	public var responsible: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// codesystem | identifier | root
	public var type: String?
	
	/// Unique identifiers used for system
	public var uniqueId: [NamingSystemUniqueId]?
	
	/// How/where is it used
	public var usage: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(date: DateTime?, name: String?, status: String?, type: String?, uniqueId: [NamingSystemUniqueId]?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
		if nil != uniqueId {
			self.uniqueId = uniqueId
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = NamingSystemContact.from(val, owner: self) as? [NamingSystemContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["country"] {
				presentKeys.addObject("country")
				if let val = exist as? String {
					self.country = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"country\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"date\" but it is missing"))
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["replacedBy"] {
				presentKeys.addObject("replacedBy")
				if let val = exist as? FHIRJSON {
					self.replacedBy = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"replacedBy\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["responsible"] {
				presentKeys.addObject("responsible")
				if let val = exist as? String {
					self.responsible = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"responsible\" to be `String`, but is \(exist.dynamicType)"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["uniqueId"] {
				presentKeys.addObject("uniqueId")
				if let val = exist as? [FHIRJSON] {
					self.uniqueId = NamingSystemUniqueId.from(val, owner: self) as? [NamingSystemUniqueId]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uniqueId\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"uniqueId\" but it is missing"))
			}
			if let exist: AnyObject = js["usage"] {
				presentKeys.addObject("usage")
				if let val = exist as? String {
					self.usage = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"usage\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = NamingSystemContact.asJSONArray(contact)
		}
		if let country = self.country {
			json["country"] = country.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let replacedBy = self.replacedBy {
			json["replacedBy"] = replacedBy.asJSON()
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let uniqueId = self.uniqueId {
			json["uniqueId"] = NamingSystemUniqueId.asJSONArray(uniqueId)
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class NamingSystemContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "NamingSystemContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Unique identifiers used for system.
 *
 *  Indicates how the system may be identified when referenced in electronic exchange.
 */
public class NamingSystemUniqueId: FHIRElement
{
	override public class var resourceName: String {
		get { return "NamingSystemUniqueId" }
	}
	
	/// When is identifier valid?
	public var period: Period?
	
	/// Is this the id that should be used for this type
	public var preferred: Bool?
	
	/// oid | uuid | uri | other
	public var type: String?
	
	/// The unique identifier
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(type: String?, value: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != value {
			self.value = value
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["preferred"] {
				presentKeys.addObject("preferred")
				if let val = exist as? Bool {
					self.preferred = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"preferred\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"value\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let preferred = self.preferred {
			json["preferred"] = preferred.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}

