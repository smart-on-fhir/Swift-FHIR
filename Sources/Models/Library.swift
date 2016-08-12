//
//  Library.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Library) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Represents a library of quality improvement components.
 *
 *  The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and
 *  expose exist knowledge assets such as logic libraries and information model descriptions, as well as to describe a
 *  collection of knowledge assets.
 */
public class Library: DomainResource {
	override public class var resourceName: String {
		get { return "Library" }
	}
	
	/// Contact details of the publisher.
	public var contact: [ContactDetail]?
	
	/// The content of the library.
	public var content: Attachment?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Describes the context of use for this library.
	public var coverage: [UsageContext]?
	
	/// Data requirements of the library.
	public var dataRequirement: [DataRequirement]?
	
	/// Natural language description of the library.
	public var description_fhir: String?
	
	/// The effective date range for the library.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Logical identifier(s) for the library.
	public var identifier: [Identifier]?
	
	/// Last review date for the library.
	public var lastReviewDate: Date?
	
	/// A machine-friendly name for the library.
	public var name: String?
	
	/// Parameters defined by the library.
	public var parameter: [ParameterDefinition]?
	
	/// Publication date for this version of the library.
	public var publicationDate: Date?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Describes the purpose of the library.
	public var purpose: String?
	
	/// Related resources for the library.
	public var relatedResource: [RelatedResource]?
	
	/// draft | active | inactive.
	public var status: String?
	
	/// A user-friendly title for the library.
	public var title: String?
	
	/// Descriptional topics for the library.
	public var topic: [CodeableConcept]?
	
	/// logic-library | model-definition | asset-collection | module-definition.
	public var type: CodeableConcept?
	
	/// Logical URL to reference this library.
	public var url: NSURL?
	
	/// Describes the clinical usage of the library.
	public var usage: String?
	
	/// The version of the library, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Attachment, status: String, type: CodeableConcept) {
		self.init(json: nil)
		self.content = content
		self.status = status
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.from(val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? FHIRJSON {
					self.content = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist: AnyObject = js["contributor"] {
				presentKeys.insert("contributor")
				if let val = exist as? [FHIRJSON] {
					self.contributor = Contributor.from(val, owner: self) as? [Contributor]
				}
				else {
					errors.append(FHIRJSONError(key: "contributor", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = UsageContext.from(val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.from(val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lastReviewDate"] {
				presentKeys.insert("lastReviewDate")
				if let val = exist as? String {
					self.lastReviewDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastReviewDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ParameterDefinition.from(val, owner: self) as? [ParameterDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publicationDate"] {
				presentKeys.insert("publicationDate")
				if let val = exist as? String {
					self.publicationDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "publicationDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatedResource"] {
				presentKeys.insert("relatedResource")
				if let val = exist as? [FHIRJSON] {
					self.relatedResource = RelatedResource.from(val, owner: self) as? [RelatedResource]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedResource", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["topic"] {
				presentKeys.insert("topic")
				if let val = exist as? [FHIRJSON] {
					self.topic = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "topic", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? String {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = ContactDetail.asJSONArray(contact)
		}
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let contributor = self.contributor {
			json["contributor"] = Contributor.asJSONArray(contributor)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = UsageContext.asJSONArray(coverage)
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = DataRequirement.asJSONArray(dataRequirement)
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
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = ParameterDefinition.asJSONArray(parameter)
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
			json["relatedResource"] = RelatedResource.asJSONArray(relatedResource)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = CodeableConcept.asJSONArray(topic)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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

