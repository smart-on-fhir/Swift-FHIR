//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The definition of a specific activity to be taken, independent of any particular patient or context.
 *
 *  This resource allows for the definition of some activity to be performed, independent of a particular patient,
 *  practitioner, or other performance context.
 */
open class ActivityDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ActivityDefinition" }
	}
	
	/// When activity definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// communication | device | diagnostic | diet | drug | encounter | immunization | observation | procedure | referral | supply | vision | other.
	public var category: String?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// A content contributor.
	public var contributor: [Contributor]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the activity definition.
	public var description_fhir: String?
	
	/// Dynamic aspects of the definition.
	public var dynamicValue: [ActivityDefinitionDynamicValue]?
	
	/// The effective date range for the activity definition.
	public var effectivePeriod: Period?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Additional identifier for the activity definition.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for activity definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Last review date for the activity definition.
	public var lastReviewDate: FHIRDate?
	
	/// Logic used by the asset.
	public var library: [Reference]?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// Name for this activity definition (Computer friendly).
	public var name: String?
	
	/// patient | practitioner | related-person.
	public var participantType: [String]?
	
	/// What's administered/supplied.
	public var productCodeableConcept: CodeableConcept?
	
	/// What's administered/supplied.
	public var productReference: Reference?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this activity definition is defined.
	public var purpose: String?
	
	/// How much is administered/consumed/supplied.
	public var quantity: Quantity?
	
	/// Related artifacts for the asset.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// draft | active | retired.
	public var status: String?
	
	/// When activity is to occur.
	public var timingCodeableConcept: CodeableConcept?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	/// Name for this activity definition (Human friendly).
	public var title: String?
	
	/// Descriptional topics for the asset.
	public var topic: [CodeableConcept]?
	
	/// Transform to apply the template.
	public var transform: Reference?
	
	/// Logical uri to reference this activity definition (globally unique).
	public var url: URL?
	
	/// Describes the clinical usage of the asset.
	public var usage: String?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the activity definition.
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["approvalDate"] {
				presentKeys.insert("approvalDate")
				if let val = exist as? String {
					self.approvalDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "approvalDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
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
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
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
			if let exist = js["dynamicValue"] {
				presentKeys.insert("dynamicValue")
				if let val = exist as? [FHIRJSON] {
					self.dynamicValue = ActivityDefinitionDynamicValue.instantiate(fromArray: val, owner: self) as? [ActivityDefinitionDynamicValue]
				}
				else {
					errors.append(FHIRJSONError(key: "dynamicValue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["jurisdiction"] {
				presentKeys.insert("jurisdiction")
				if let val = exist as? [FHIRJSON] {
					self.jurisdiction = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["participantType"] {
				presentKeys.insert("participantType")
				if let val = exist as? [String] {
					self.participantType = val
				}
				else {
					errors.append(FHIRJSONError(key: "participantType", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["productCodeableConcept"] {
				presentKeys.insert("productCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.productCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["productReference"] {
				presentKeys.insert("productReference")
				if let val = exist as? FHIRJSON {
					self.productReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productReference", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedArtifact"] {
				presentKeys.insert("relatedArtifact")
				if let val = exist as? [FHIRJSON] {
					self.relatedArtifact = RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedArtifact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["timingCodeableConcept"] {
				presentKeys.insert("timingCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.timingCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["timingTiming"] {
				presentKeys.insert("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingTiming", wants: FHIRJSON.self, has: type(of: exist)))
				}
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
			if let exist = js["transform"] {
				presentKeys.insert("transform")
				if let val = exist as? FHIRJSON {
					self.transform = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "transform", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let approvalDate = self.approvalDate {
			json["approvalDate"] = approvalDate.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let contributor = self.contributor {
			json["contributor"] = contributor.map() { $0.asJSON() }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let dynamicValue = self.dynamicValue {
			json["dynamicValue"] = dynamicValue.map() { $0.asJSON() }
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
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON() }
		}
		if let lastReviewDate = self.lastReviewDate {
			json["lastReviewDate"] = lastReviewDate.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participantType = self.participantType {
			var arr = [Any]()
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
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON() }
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
			json["topic"] = topic.map() { $0.asJSON() }
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
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON() }
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
open class ActivityDefinitionDynamicValue: BackboneElement {
	override open class var resourceType: String {
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
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
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

