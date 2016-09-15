//
//  DecisionSupportServiceModule.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DecisionSupportServiceModule) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A description of decision support service functionality.
 *
 *  The DecisionSupportServiceModule describes a unit of decision support functionality that is made available as a
 *  service, such as immunization modules or drug-drug interaction checking.
 */
open class DecisionSupportServiceModule: DomainResource {
	override open class var resourceType: String {
		get { return "DecisionSupportServiceModule" }
	}
	
	/// Contact details of the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Describes the context of use for this module.
	public var coverage: [UsageContext]?
	
	/// Data requirements for the module.
	public var dataRequirement: [DataRequirement]?
	
	/// Natural language description of the module.
	public var description_fhir: String?
	
	/// The effective date range for the module.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Logical identifier(s) for the module.
	public var identifier: [Identifier]?
	
	/// Last review date for the module.
	public var lastReviewDate: FHIRDate?
	
	/// A machine-friendly name for the module.
	public var name: String?
	
	/// Parameters to the module.
	public var parameter: [ParameterDefinition]?
	
	/// Publication date for this version of the module.
	public var publicationDate: FHIRDate?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Describes the purpose of the module.
	public var purpose: String?
	
	/// Related resources for the module.
	public var relatedResource: [RelatedResource]?
	
	/// draft | active | inactive.
	public var status: String?
	
	/// A user-friendly title for the module.
	public var title: String?
	
	/// Descriptional topics for the module.
	public var topic: [CodeableConcept]?
	
	/// "when" the module should be invoked.
	public var trigger: [TriggerDefinition]?
	
	/// Logical URL to reference this module.
	public var url: URL?
	
	/// Describes the clinical usage of the module.
	public var usage: String?
	
	/// The version of the module, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["contributor"] {
				presentKeys.insert("contributor")
				if let val = exist as? [FHIRJSON] {
					self.contributor = Contributor.instantiate(fromArray: val, owner: self) as? [Contributor]
				}
				else {
					errors.append(FHIRJSONError(key: "contributor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.instantiate(fromArray: val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
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
			if let exist = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["lastReviewDate"] {
				presentKeys.insert("lastReviewDate")
				if let val = exist as? String {
					self.lastReviewDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ParameterDefinition.instantiate(fromArray: val, owner: self) as? [ParameterDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["publicationDate"] {
				presentKeys.insert("publicationDate")
				if let val = exist as? String {
					self.publicationDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "publicationDate", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedResource"] {
				presentKeys.insert("relatedResource")
				if let val = exist as? [FHIRJSON] {
					self.relatedResource = RelatedResource.instantiate(fromArray: val, owner: self) as? [RelatedResource]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedResource", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["topic"] {
				presentKeys.insert("topic")
				if let val = exist as? [FHIRJSON] {
					self.topic = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "topic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["trigger"] {
				presentKeys.insert("trigger")
				if let val = exist as? [FHIRJSON] {
					self.trigger = TriggerDefinition.instantiate(fromArray: val, owner: self) as? [TriggerDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "trigger", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: type(of: exist)))
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
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON() }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.map() { $0.asJSON() }
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = dataRequirement.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON() }
		}
		if let publicationDate = self.publicationDate {
			json["publicationDate"] = publicationDate.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let relatedResource = self.relatedResource {
			json["relatedResource"] = relatedResource.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON() }
		}
		if let trigger = self.trigger {
			json["trigger"] = trigger.map() { $0.asJSON() }
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let usage = self.usage {
			json["usage"] = usage.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

