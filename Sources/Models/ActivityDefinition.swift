//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of a specific activity to be taken, independent of any particular patient or context.
 *
 *  This resource allows for the definition of some activity to be performed, independent of a particular patient,
 *  practitioner, or other performance context.
 */
public class ActivityDefinition: DomainResource {
	override public class var resourceName: String {
		get { return "ActivityDefinition" }
	}
	
	/// communication | device | diagnostic | diet | drug | encounter | immunization | observation | procedure | referral | supply | vision | other.
	public var category: String?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// Contact details of the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Describes the context of use for this asset.
	public var coverage: [UsageContext]?
	
	/// Natural language description of the asset.
	public var description_fhir: String?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// The effective date range for the asset.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Logical identifier(s) for the asset.
	public var identifier: [Identifier]?
	
	/// Last review date for the asset.
	public var lastReviewDate: Date?
	
	/// Logic used by the asset.
	public var library: [Reference]?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// A machine-friendly name for the asset.
	public var name: String?
	
	/// patient | practitioner | related-person.
	public var participantType: [String]?
	
	/// What's administered/supplied.
	public var productCodeableConcept: CodeableConcept?
	
	/// What's administered/supplied.
	public var productReference: Reference?
	
	/// Publication date for this version of the asset.
	public var publicationDate: Date?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Describes the purpose of the asset.
	public var purpose: String?
	
	/// How much is administered/consumed/supplied.
	public var quantity: Quantity?
	
	/// Related resources for the asset.
	public var relatedResource: [RelatedResource]?
	
	/// draft | active | inactive.
	public var status: String?
	
	/// When activity is to occur.
	public var timingCodeableConcept: CodeableConcept?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	/// A user-friendly title for the asset.
	public var title: String?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// Logical URL to reference this asset.
	public var url: NSURL?
	
	/// Describes the clinical usage of the asset.
	public var usage: String?
	
	/// The version of the asset, if any.
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactDetail.from(val, owner: self) as? [ContactDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dynamicValue"] {
				presentKeys.insert("dynamicValue")
				if let val = exist as? [FHIRJSON] {
					self.dynamicValue = ActivityDefinitionDynamicValue.from(val, owner: self) as? [ActivityDefinitionDynamicValue]
				}
				else {
					errors.append(FHIRJSONError(key: "dynamicValue", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [String] {
					self.participantType = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productCodeableConcept"] {
				presentKeys.insert("productCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.productCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productReference"] {
				presentKeys.insert("productReference")
				if let val = exist as? FHIRJSON {
					self.productReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["timingCodeableConcept"] {
				presentKeys.insert("timingCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.timingCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingTiming"] {
				presentKeys.insert("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["transform"] {
				presentKeys.insert("transform")
				if let val = exist as? FHIRJSON {
					self.transform = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "transform", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ContactDetail.asJSONArray(contact)
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
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let dynamicValue = self.dynamicValue {
			json["dynamicValue"] = ActivityDefinitionDynamicValue.asJSONArray(dynamicValue)
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
		if let library = self.library {
			json["library"] = Reference.asJSONArray(library)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participantType = self.participantType {
			var arr = [AnyObject]()
			for val in participantType {
				arr.append(val.asJSON())
			}
			json["participantType"] = arr
		}
		if let productCodeableConcept = self.productCodeableConcept {
			json["productCodeableConcept"] = productCodeableConcept.asJSON()
		}
		if let productReference = self.productReference {
			json["productReference"] = productReference.asJSON()
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
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let relatedResource = self.relatedResource {
			json["relatedResource"] = RelatedResource.asJSONArray(relatedResource)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let timingCodeableConcept = self.timingCodeableConcept {
			json["timingCodeableConcept"] = timingCodeableConcept.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = CodeableConcept.asJSONArray(topic)
		}
		if let transform = self.transform {
			json["transform"] = transform.asJSON()
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


/**
 *  Dynamic aspects of the definition.
 *
 *  Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
 *  dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
 *  expression that calculated the weight, and the path on the intent resource that would contain the result.
 */
public class ActivityDefinitionDynamicValue: BackboneElement {
	override public class var resourceName: String {
		get { return "ActivityDefinitionDynamicValue" }
	}
	
	/// Natural language description of the dynamic value.
	public var description_fhir: String?
	
	/// An expression that provides the dynamic value for the customization.
	public var expression: String?
	
	/// Language of the expression.
	public var language: String?
	
	/// The path to the element to be set dynamically.
	public var path: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
	}
}

