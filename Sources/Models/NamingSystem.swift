//
//  NamingSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/NamingSystem) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
System of unique identification.

A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
devices, etc.  Represents a "System" used within the Identifier and Coding data types.
*/
open class NamingSystem: DomainResource {
	override open class var resourceType: String {
		get { return "NamingSystem" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the naming system.
	public var description_fhir: FHIRString?
	
	/// Intended jurisdiction for naming system (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Indicates the purpose for the naming system - what kinds of things does it make unique?
	public var kind: NamingSystemType?
	
	/// Name for this naming system (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Use this instead.
	public var replacedBy: Reference?
	
	/// Who maintains system namespace?.
	public var responsible: FHIRString?
	
	/// The status of this naming system. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// e.g. driver,  provider,  patient, bank etc..
	public var type: CodeableConcept?
	
	/// Unique identifiers used for system.
	public var uniqueId: [NamingSystemUniqueId]?
	
	/// How/where is it used.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, kind: NamingSystemType, name: FHIRString, status: PublicationStatus, uniqueId: [NamingSystemUniqueId]) {
		self.init()
		self.date = date
		self.kind = kind
		self.name = name
		self.status = status
		self.uniqueId = uniqueId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = NamingSystemType(rawValue: val) {
					self.kind = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "kind", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["replacedBy"] {
			presentKeys.insert("replacedBy")
			if let val = exist as? FHIRJSON {
				do {
					self.replacedBy = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "replacedBy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "replacedBy", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["responsible"] {
			presentKeys.insert("responsible")
			if let val = exist as? String {
				self.responsible = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "responsible", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
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
		if let exist = json["uniqueId"] {
			presentKeys.insert("uniqueId")
			if let val = exist as? [FHIRJSON] {
				do {
					self.uniqueId = try NamingSystemUniqueId.instantiate(fromArray: val, owner: self) as? [NamingSystemUniqueId]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "uniqueId"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "uniqueId", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "uniqueId"))
		}
		if let exist = json["usage"] {
			presentKeys.insert("usage")
			if let val = exist as? String {
				self.usage = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "usage", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let replacedBy = self.replacedBy {
			json["replacedBy"] = replacedBy.asJSON(errors: &errors)
		}
		if let responsible = self.responsible {
			json["responsible"] = responsible.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let uniqueId = self.uniqueId {
			json["uniqueId"] = uniqueId.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "uniqueId"))
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Unique identifiers used for system.

Indicates how the system may be identified when referenced in electronic exchange.
*/
open class NamingSystemUniqueId: BackboneElement {
	override open class var resourceType: String {
		get { return "NamingSystemUniqueId" }
	}
	
	/// Notes about identifier usage.
	public var comment: FHIRString?
	
	/// When is identifier valid?.
	public var period: Period?
	
	/// Is this the id that should be used for this type.
	public var preferred: Bool?
	
	/// Identifies the unique identifier scheme used for this particular identifier.
	public var type: NamingSystemIdentifierType?
	
	/// The unique identifier.
	public var value: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: NamingSystemIdentifierType, value: FHIRString) {
		self.init()
		self.type = type
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
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
		if let exist = json["preferred"] {
			presentKeys.insert("preferred")
			if let val = exist as? Bool {
				self.preferred = val
			}
			else {
				errors.append(FHIRValidationError(key: "preferred", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = NamingSystemIdentifierType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? String {
				self.value = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let preferred = self.preferred {
			json["preferred"] = preferred.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "value"))
		}
		
		return json
	}
}

