//
//  NamingSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/NamingSystem) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  System of unique identification.
 *
 *  A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
 *  devices, etc.  Represents a "System" used within the Identifier and Coding data types.
 */
open class NamingSystem: DomainResource {
	override open class var resourceType: String {
		get { return "NamingSystem" }
	}
	
	/// Contact details of the publisher.
	public var contact: [NamingSystemContact]?
	
	/// Publication Date(/time).
	public var date: DateTime?
	
	/// What does naming system identify?.
	public var description_fhir: String?
	
	/// codesystem | identifier | root.
	public var kind: String?
	
	/// Human-readable label.
	public var name: String?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Use this instead.
	public var replacedBy: Reference?
	
	/// Who maintains system namespace?.
	public var responsible: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// e.g. driver,  provider,  patient, bank etc..
	public var type: CodeableConcept?
	
	/// Unique identifiers used for system.
	public var uniqueId: [NamingSystemUniqueId]?
	
	/// How/where is it used.
	public var usage: String?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, kind: String, name: String, status: String, uniqueId: [NamingSystemUniqueId]) {
		self.init(json: nil)
		self.date = date
		self.kind = kind
		self.name = name
		self.status = status
		self.uniqueId = uniqueId
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = NamingSystemContact.instantiate(fromArray: val, owner: self) as? [NamingSystemContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "date"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["kind"] {
				presentKeys.insert("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(FHIRJSONError(key: "kind", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "kind"))
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
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["replacedBy"] {
				presentKeys.insert("replacedBy")
				if let val = exist as? FHIRJSON {
					self.replacedBy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "replacedBy", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responsible"] {
				presentKeys.insert("responsible")
				if let val = exist as? String {
					self.responsible = val
				}
				else {
					errors.append(FHIRJSONError(key: "responsible", wants: String.self, has: type(of: exist)))
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
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["uniqueId"] {
				presentKeys.insert("uniqueId")
				if let val = exist as? [FHIRJSON] {
					self.uniqueId = NamingSystemUniqueId.instantiate(fromArray: val, owner: self) as? [NamingSystemUniqueId]
				}
				else {
					errors.append(FHIRJSONError(key: "uniqueId", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "uniqueId"))
			}
			if let exist = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? String {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
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
			json["uniqueId"] = uniqueId.map() { $0.asJSON() }
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
open class NamingSystemContact: BackboneElement {
	override open class var resourceType: String {
		get { return "NamingSystemContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Unique identifiers used for system.
 *
 *  Indicates how the system may be identified when referenced in electronic exchange.
 */
open class NamingSystemUniqueId: BackboneElement {
	override open class var resourceType: String {
		get { return "NamingSystemUniqueId" }
	}
	
	/// Notes about identifier usage.
	public var comment: String?
	
	/// When is identifier valid?.
	public var period: Period?
	
	/// Is this the id that should be used for this type.
	public var preferred: Bool?
	
	/// oid | uuid | uri | other.
	public var type: String?
	
	/// The unique identifier.
	public var value: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String, value: String) {
		self.init(json: nil)
		self.type = type
		self.value = value
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["preferred"] {
				presentKeys.insert("preferred")
				if let val = exist as? Bool {
					self.preferred = val
				}
				else {
					errors.append(FHIRJSONError(key: "preferred", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? String {
					self.value = val
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "value"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
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

