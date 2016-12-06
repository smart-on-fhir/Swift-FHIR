//
//  ServiceDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ServiceDefinition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A description of decision support service functionality.

The ServiceDefinition describes a unit of decision support functionality that is made available as a service, such as
immunization modules or drug-drug interaction checking.
*/
open class ServiceDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ServiceDefinition" }
	}
	
	/// When service definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Data requirements for the module.
	public var dataRequirement: [DataRequirement]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the service definition.
	public var description_fhir: FHIRString?
	
	/// The effective date range for the service definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Additional identifier for the service definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for service definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the service definition.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this service definition (Computer friendly).
	public var name: FHIRString?
	
	/// Operation to invoke.
	public var operationDefinition: Reference?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this service definition is defined.
	public var purpose: FHIRString?
	
	/// Related resources for the module.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// The status of this service definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Name for this service definition (Human friendly).
	public var title: FHIRString?
	
	/// Descriptional topics for the module.
	public var topic: [CodeableConcept]?
	
	/// "when" the module should be invoked.
	public var trigger: [TriggerDefinition]?
	
	/// Logical uri to reference this service definition (globally unique).
	public var url: URL?
	
	/// Describes the clinical usage of the module.
	public var usage: FHIRString?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the service definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["approvalDate"] {
			presentKeys.insert("approvalDate")
			if let val = exist as? String {
				self.approvalDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "approvalDate", wants: String.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["contributor"] {
			presentKeys.insert("contributor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contributor = try Contributor.instantiate(fromArray: val, owner: self) as? [Contributor]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contributor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contributor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["dataRequirement"] {
			presentKeys.insert("dataRequirement")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dataRequirement = try DataRequirement.instantiate(fromArray: val, owner: self) as? [DataRequirement]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dataRequirement"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
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
		if let exist = json["lastReviewDate"] {
			presentKeys.insert("lastReviewDate")
			if let val = exist as? String {
				self.lastReviewDate = FHIRDate(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
			}
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
		if let exist = json["operationDefinition"] {
			presentKeys.insert("operationDefinition")
			if let val = exist as? FHIRJSON {
				do {
					self.operationDefinition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operationDefinition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operationDefinition", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedArtifact"] {
			presentKeys.insert("relatedArtifact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedArtifact = try RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedArtifact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedArtifact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["topic"] {
			presentKeys.insert("topic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.topic = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "topic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["trigger"] {
			presentKeys.insert("trigger")
			if let val = exist as? [FHIRJSON] {
				do {
					self.trigger = try TriggerDefinition.instantiate(fromArray: val, owner: self) as? [TriggerDefinition]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "trigger"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "trigger", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let approvalDate = self.approvalDate {
			json["approvalDate"] = approvalDate.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = dataRequirement.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let operationDefinition = self.operationDefinition {
			json["operationDefinition"] = operationDefinition.asJSON(errors: &errors)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let trigger = self.trigger {
			json["trigger"] = trigger.map() { $0.asJSON(errors: &errors) }
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

