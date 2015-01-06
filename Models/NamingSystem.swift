//
//  NamingSystem.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (namingsystem.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  System of unique identification.
 *
 *  A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
 *  devices, etc.  Represents a "System" used within the Identifier and Coding data types.
 */
public class NamingSystem: FHIRResource
{
	override public class var resourceName: String {
		get { return "NamingSystem" }
	}
	
	/// driver | provider | patient | bank
	public var category: CodeableConcept?
	
	/// Who should be contacted for questions about namingsystem
	public var contact: NamingSystemContact?
	
	/// ISO 3-char country code
	public var country: String?
	
	/// What does namingsystem identify?
	public var description: String?
	
	/// Human-readable label
	public var name: String?
	
	/// Use this instead
	public var replacedBy: Reference?
	
	/// Who maintains system namespace?
	public var responsible: String?
	
	/// proposed | active | retired
	public var status: String?
	
	/// codesystem | identifier | root
	public var type: String?
	
	/// Unique identifiers used for system
	public var uniqueId: [NamingSystemUniqueId]?
	
	/// How/where is it used
	public var usage: String?
	
	public convenience init(name: String?, status: String?, type: String?, uniqueId: [NamingSystemUniqueId]?) {
		self.init(json: nil)
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
			if let val = js["contact"] as? JSONDictionary {
				self.contact = NamingSystemContact(json: val, owner: self)
			}
			if let val = js["country"] as? String {
				self.country = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["name"] as? String {
				self.name = val
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
}


/**
 *  Who should be contacted for questions about namingsystem.
 *
 *  The person who can be contacted about this system registration entry.
 */
public class NamingSystemContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "NamingSystemContact" }
	}
	
	/// Name of person
	public var name: HumanName?
	
	/// Phone, email, etc.
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? JSONDictionary {
				self.name = HumanName(json: val, owner: self)
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
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
}

