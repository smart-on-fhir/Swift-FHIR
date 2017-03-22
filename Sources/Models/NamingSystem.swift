//
//  NamingSystem.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/NamingSystem) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Name for this naming system (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
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
	
	/// Context the content is intended to support.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		kind = createEnum(type: NamingSystemType.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		replacedBy = createInstance(type: Reference.self, for: "replacedBy", in: json, context: &instCtx, owner: self) ?? replacedBy
		responsible = createInstance(type: FHIRString.self, for: "responsible", in: json, context: &instCtx, owner: self) ?? responsible
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		uniqueId = createInstances(of: NamingSystemUniqueId.self, for: "uniqueId", in: json, context: &instCtx, owner: self) ?? uniqueId
		if (nil == uniqueId || uniqueId!.isEmpty) && !instCtx.containsKey("uniqueId") {
			instCtx.addError(FHIRValidationError(missing: "uniqueId"))
		}
		usage = createInstance(type: FHIRString.self, for: "usage", in: json, context: &instCtx, owner: self) ?? usage
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.replacedBy?.decorate(json: &json, withKey: "replacedBy", errors: &errors)
		self.responsible?.decorate(json: &json, withKey: "responsible", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		arrayDecorate(json: &json, withKey: "uniqueId", using: self.uniqueId, errors: &errors)
		if nil == uniqueId || self.uniqueId!.isEmpty {
			errors.append(FHIRValidationError(missing: "uniqueId"))
		}
		self.usage?.decorate(json: &json, withKey: "usage", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
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
	public var preferred: FHIRBool?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		preferred = createInstance(type: FHIRBool.self, for: "preferred", in: json, context: &instCtx, owner: self) ?? preferred
		type = createEnum(type: NamingSystemIdentifierType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.preferred?.decorate(json: &json, withKey: "preferred", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

