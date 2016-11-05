//
//  ActivityDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/ActivityDefinition) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
The definition of a specific activity to be taken, independent of any particular patient or context.

This resource allows for the definition of some activity to be performed, independent of a particular patient,
practitioner, or other performance context.
*/
open class ActivityDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ActivityDefinition" }
	}
	
	/// When activity definition approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// High-level categorization of the type of activity.
	public var category: ActivityDefinitionCategory?
	
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
	
	/// Detailed dosage instructions.
	public var dosageInstruction: [DosageInstruction]?
	
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
	
	/// The type of participant in the action.
	public var participantType: [PlanActionParticipantType]?
	
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
	
	/// The status of this activity definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
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
				self.approvalDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "approvalDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				if let enumval = ActivityDefinitionCategory(rawValue: val) {
					self.category = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "category", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
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
				self.copyright = val
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["dosageInstruction"] {
			presentKeys.insert("dosageInstruction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dosageInstruction = try DosageInstruction.instantiate(fromArray: val, owner: self) as? [DosageInstruction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dosageInstruction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dosageInstruction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dynamicValue"] {
			presentKeys.insert("dynamicValue")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dynamicValue = try ActivityDefinitionDynamicValue.instantiate(fromArray: val, owner: self) as? [ActivityDefinitionDynamicValue]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dynamicValue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dynamicValue", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
				self.lastReviewDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastReviewDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["library"] {
			presentKeys.insert("library")
			if let val = exist as? [FHIRJSON] {
				do {
					self.library = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "library"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["participantType"] {
			presentKeys.insert("participantType")
			if let val = exist as? [String] { var i = -1
				self.participantType = val.map() { i += 1
					if let enumval = PlanActionParticipantType(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "participantType.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "participantType", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["productCodeableConcept"] {
			presentKeys.insert("productCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.productCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "productCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "productCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["productReference"] {
			presentKeys.insert("productReference")
			if let val = exist as? FHIRJSON {
				do {
					self.productReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "productReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "productReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = val
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = val
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["timingCodeableConcept"] {
			presentKeys.insert("timingCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.timingCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["timingTiming"] {
			presentKeys.insert("timingTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.timingTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "timingTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "timingTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
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
		if let exist = json["transform"] {
			presentKeys.insert("transform")
			if let val = exist as? FHIRJSON {
				do {
					self.transform = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "transform"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "transform", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["usage"] {
			presentKeys.insert("usage")
			if let val = exist as? String {
				self.usage = val
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
				self.version = val
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
		if let category = self.category {
			json["category"] = category.rawValue
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
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
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = dosageInstruction.map() { $0.asJSON(errors: &errors) }
		}
		if let dynamicValue = self.dynamicValue {
			json["dynamicValue"] = dynamicValue.map() { $0.asJSON(errors: &errors) }
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
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participantType = self.participantType {
			json["participantType"] = participantType.map() { $0.rawValue }
		}
		if let productCodeableConcept = self.productCodeableConcept {
			json["productCodeableConcept"] = productCodeableConcept.asJSON(errors: &errors)
		}
		if let productReference = self.productReference {
			json["productReference"] = productReference.asJSON(errors: &errors)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let timingCodeableConcept = self.timingCodeableConcept {
			json["timingCodeableConcept"] = timingCodeableConcept.asJSON(errors: &errors)
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON(errors: &errors)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let topic = self.topic {
			json["topic"] = topic.map() { $0.asJSON(errors: &errors) }
		}
		if let transform = self.transform {
			json["transform"] = transform.asJSON(errors: &errors)
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


/**
Dynamic aspects of the definition.

Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the
dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an
expression that calculated the weight, and the path on the intent resource that would contain the result.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = val
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
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

