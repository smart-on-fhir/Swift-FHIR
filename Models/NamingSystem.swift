//
//  NamingSystem.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/NamingSystem) on 2015-03-19.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? JSONDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = NamingSystemContact.from(val, owner: self) as? [NamingSystemContact]
			}
			if let val = js["country"] as? String {
				self.country = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["replacedBy"] as? JSONDictionary {
				self.replacedBy = Reference(json: val, owner: self)
			}
			if let val = js["responsible"] as? String {
				self.responsible = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["uniqueId"] as? [JSONDictionary] {
				self.uniqueId = NamingSystemUniqueId.from(val, owner: self) as? [NamingSystemUniqueId]
			}
			if let val = js["usage"] as? String {
				self.usage = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public convenience init(type: String?, value: String?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
		if nil != value {
			self.value = value
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["preferred"] as? Bool {
				self.preferred = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

