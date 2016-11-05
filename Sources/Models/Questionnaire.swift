//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
A structured set of questions.

A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped into
coherent subsets, corresponding to the structure of the grouping of the underlying questions.
*/
open class Questionnaire: DomainResource {
	override open class var resourceType: String {
		get { return "Questionnaire" }
	}
	
	/// Concept that represents the overall questionnaire.
	public var concept: [Coding]?
	
	/// Date this version was authored.
	public var date: DateTime?
	
	/// External identifiers for this questionnaire.
	public var identifier: [Identifier]?
	
	/// Questions and sections within the Questionnaire.
	public var item: [QuestionnaireItem]?
	
	/// Organization/individual who designed the questionnaire.
	public var publisher: String?
	
	/// The lifecycle status of the questionnaire as a whole.
	public var status: QuestionnaireStatus?
	
	/// Resource that can be subject of QuestionnaireResponse.
	public var subjectType: [String]?
	
	/// Contact information of the publisher.
	public var telecom: [ContactPoint]?
	
	/// Name for the questionnaire.
	public var title: String?
	
	/// Globally unique logical identifier for  questionnaire.
	public var url: URL?
	
	/// Questionnaire intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical identifier for this version of Questionnaire.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: QuestionnaireStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["concept"] {
			presentKeys.insert("concept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.concept = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "concept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try QuestionnaireItem.instantiate(fromArray: val, owner: self) as? [QuestionnaireItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = QuestionnaireStatus(rawValue: val) {
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
		if let exist = json["subjectType"] {
			presentKeys.insert("subjectType")
			if let val = exist as? [String] {
				self.subjectType = val
			}
			else {
				errors.append(FHIRValidationError(key: "subjectType", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
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
		
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON(errors: &errors) }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subjectType = self.subjectType {
			json["subjectType"] = subjectType.map() { $0.asJSON() }
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
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
Questions and sections within the Questionnaire.

The questions and groupings of questions that make up the questionnaire.
*/
open class QuestionnaireItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItem" }
	}
	
	/// Concept that represents this item within in a questionnaire.
	public var concept: [Coding]?
	
	/// Only allow data when:.
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Initial presumed answer for question.
	public var initialAttachment: Attachment?
	
	/// Initial presumed answer for question.
	public var initialBoolean: Bool?
	
	/// Initial presumed answer for question.
	public var initialCoding: Coding?
	
	/// Initial presumed answer for question.
	public var initialDate: FHIRDate?
	
	/// Initial presumed answer for question.
	public var initialDateTime: DateTime?
	
	/// Initial presumed answer for question.
	public var initialDecimal: NSDecimalNumber?
	
	/// Initial presumed answer for question.
	public var initialInstant: Instant?
	
	/// Initial presumed answer for question.
	public var initialInteger: Int?
	
	/// Initial presumed answer for question.
	public var initialQuantity: Quantity?
	
	/// Initial presumed answer for question.
	public var initialReference: Reference?
	
	/// Initial presumed answer for question.
	public var initialString: String?
	
	/// Initial presumed answer for question.
	public var initialTime: FHIRTime?
	
	/// Initial presumed answer for question.
	public var initialUri: URL?
	
	/// Nested questionnaire items.
	public var item: [QuestionnaireItem]?
	
	/// To link questionnaire with questionnaire response.
	public var linkId: String?
	
	/// No more than this many characters.
	public var maxLength: Int?
	
	/// Permitted answer.
	public var option: [QuestionnaireItemOption]?
	
	/// Valueset containing permitted answers.
	public var options: Reference?
	
	/// E.g. "1(a)", "2.5.3".
	public var prefix: String?
	
	/// Don't allow human editing.
	public var readOnly: Bool?
	
	/// Whether the item may repeat.
	public var repeats: Bool?
	
	/// Whether the item must be included in data results.
	public var required: Bool?
	
	/// Primary text for the item.
	public var text: String?
	
	/// Identifies the type of questionnaire item this is - whether text for display, a grouping of other items or a
	/// particular type of data to be captured (string, integer, coded choice, etc.).
	public var type: QuestionnaireItemType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: QuestionnaireItemType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["concept"] {
			presentKeys.insert("concept")
			if let val = exist as? [FHIRJSON] {
				do {
					self.concept = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "concept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["enableWhen"] {
			presentKeys.insert("enableWhen")
			if let val = exist as? [FHIRJSON] {
				do {
					self.enableWhen = try QuestionnaireItemEnableWhen.instantiate(fromArray: val, owner: self) as? [QuestionnaireItemEnableWhen]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "enableWhen"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "enableWhen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialAttachment"] {
			presentKeys.insert("initialAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.initialAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "initialAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "initialAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialBoolean"] {
			presentKeys.insert("initialBoolean")
			if let val = exist as? Bool {
				self.initialBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "initialBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialCoding"] {
			presentKeys.insert("initialCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.initialCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "initialCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "initialCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialDate"] {
			presentKeys.insert("initialDate")
			if let val = exist as? String {
				self.initialDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialDateTime"] {
			presentKeys.insert("initialDateTime")
			if let val = exist as? String {
				self.initialDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialDecimal"] {
			presentKeys.insert("initialDecimal")
			if let val = exist as? NSNumber {
				self.initialDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialInstant"] {
			presentKeys.insert("initialInstant")
			if let val = exist as? String {
				self.initialInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialInteger"] {
			presentKeys.insert("initialInteger")
			if let val = exist as? Int {
				self.initialInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "initialInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialQuantity"] {
			presentKeys.insert("initialQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.initialQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "initialQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "initialQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialReference"] {
			presentKeys.insert("initialReference")
			if let val = exist as? FHIRJSON {
				do {
					self.initialReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "initialReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "initialReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialString"] {
			presentKeys.insert("initialString")
			if let val = exist as? String {
				self.initialString = val
			}
			else {
				errors.append(FHIRValidationError(key: "initialString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialTime"] {
			presentKeys.insert("initialTime")
			if let val = exist as? String {
				self.initialTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["initialUri"] {
			presentKeys.insert("initialUri")
			if let val = exist as? String {
				self.initialUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "initialUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try QuestionnaireItem.instantiate(fromArray: val, owner: self) as? [QuestionnaireItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["linkId"] {
			presentKeys.insert("linkId")
			if let val = exist as? String {
				self.linkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "linkId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxLength"] {
			presentKeys.insert("maxLength")
			if let val = exist as? Int {
				self.maxLength = val
			}
			else {
				errors.append(FHIRValidationError(key: "maxLength", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["option"] {
			presentKeys.insert("option")
			if let val = exist as? [FHIRJSON] {
				do {
					self.option = try QuestionnaireItemOption.instantiate(fromArray: val, owner: self) as? [QuestionnaireItemOption]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "option"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "option", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["options"] {
			presentKeys.insert("options")
			if let val = exist as? FHIRJSON {
				do {
					self.options = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "options"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "options", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["prefix"] {
			presentKeys.insert("prefix")
			if let val = exist as? String {
				self.prefix = val
			}
			else {
				errors.append(FHIRValidationError(key: "prefix", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["readOnly"] {
			presentKeys.insert("readOnly")
			if let val = exist as? Bool {
				self.readOnly = val
			}
			else {
				errors.append(FHIRValidationError(key: "readOnly", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["repeats"] {
			presentKeys.insert("repeats")
			if let val = exist as? Bool {
				self.repeats = val
			}
			else {
				errors.append(FHIRValidationError(key: "repeats", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["required"] {
			presentKeys.insert("required")
			if let val = exist as? Bool {
				self.required = val
			}
			else {
				errors.append(FHIRValidationError(key: "required", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = QuestionnaireItemType(rawValue: val) {
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON(errors: &errors) }
		}
		if let enableWhen = self.enableWhen {
			json["enableWhen"] = enableWhen.map() { $0.asJSON(errors: &errors) }
		}
		if let initialAttachment = self.initialAttachment {
			json["initialAttachment"] = initialAttachment.asJSON(errors: &errors)
		}
		if let initialBoolean = self.initialBoolean {
			json["initialBoolean"] = initialBoolean.asJSON()
		}
		if let initialCoding = self.initialCoding {
			json["initialCoding"] = initialCoding.asJSON(errors: &errors)
		}
		if let initialDate = self.initialDate {
			json["initialDate"] = initialDate.asJSON()
		}
		if let initialDateTime = self.initialDateTime {
			json["initialDateTime"] = initialDateTime.asJSON()
		}
		if let initialDecimal = self.initialDecimal {
			json["initialDecimal"] = initialDecimal.asJSON()
		}
		if let initialInstant = self.initialInstant {
			json["initialInstant"] = initialInstant.asJSON()
		}
		if let initialInteger = self.initialInteger {
			json["initialInteger"] = initialInteger.asJSON()
		}
		if let initialQuantity = self.initialQuantity {
			json["initialQuantity"] = initialQuantity.asJSON(errors: &errors)
		}
		if let initialReference = self.initialReference {
			json["initialReference"] = initialReference.asJSON(errors: &errors)
		}
		if let initialString = self.initialString {
			json["initialString"] = initialString.asJSON()
		}
		if let initialTime = self.initialTime {
			json["initialTime"] = initialTime.asJSON()
		}
		if let initialUri = self.initialUri {
			json["initialUri"] = initialUri.asJSON()
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let maxLength = self.maxLength {
			json["maxLength"] = maxLength.asJSON()
		}
		if let option = self.option {
			json["option"] = option.map() { $0.asJSON(errors: &errors) }
		}
		if let options = self.options {
			json["options"] = options.asJSON(errors: &errors)
		}
		if let prefix = self.prefix {
			json["prefix"] = prefix.asJSON()
		}
		if let readOnly = self.readOnly {
			json["readOnly"] = readOnly.asJSON()
		}
		if let repeats = self.repeats {
			json["repeats"] = repeats.asJSON()
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		
		return json
	}
}


/**
Only allow data when:.

If present, indicates that this item should only be enabled (displayed/allow answers to be captured) when the specified
condition is true.
*/
open class QuestionnaireItemEnableWhen: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemEnableWhen" }
	}
	
	/// Value question must have.
	public var answerAttachment: Attachment?
	
	/// Value question must have.
	public var answerBoolean: Bool?
	
	/// Value question must have.
	public var answerCoding: Coding?
	
	/// Value question must have.
	public var answerDate: FHIRDate?
	
	/// Value question must have.
	public var answerDateTime: DateTime?
	
	/// Value question must have.
	public var answerDecimal: NSDecimalNumber?
	
	/// Value question must have.
	public var answerInstant: Instant?
	
	/// Value question must have.
	public var answerInteger: Int?
	
	/// Value question must have.
	public var answerQuantity: Quantity?
	
	/// Value question must have.
	public var answerReference: Reference?
	
	/// Value question must have.
	public var answerString: String?
	
	/// Value question must have.
	public var answerTime: FHIRTime?
	
	/// Value question must have.
	public var answerUri: URL?
	
	/// Enable when answered or not.
	public var hasAnswer: Bool?
	
	/// Question that determines whether item is enabled.
	public var question: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(question: String) {
		self.init()
		self.question = question
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["answerAttachment"] {
			presentKeys.insert("answerAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.answerAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "answerAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "answerAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerBoolean"] {
			presentKeys.insert("answerBoolean")
			if let val = exist as? Bool {
				self.answerBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "answerBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerCoding"] {
			presentKeys.insert("answerCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.answerCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "answerCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "answerCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerDate"] {
			presentKeys.insert("answerDate")
			if let val = exist as? String {
				self.answerDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerDateTime"] {
			presentKeys.insert("answerDateTime")
			if let val = exist as? String {
				self.answerDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerDecimal"] {
			presentKeys.insert("answerDecimal")
			if let val = exist as? NSNumber {
				self.answerDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerInstant"] {
			presentKeys.insert("answerInstant")
			if let val = exist as? String {
				self.answerInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerInteger"] {
			presentKeys.insert("answerInteger")
			if let val = exist as? Int {
				self.answerInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "answerInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerQuantity"] {
			presentKeys.insert("answerQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.answerQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "answerQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "answerQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerReference"] {
			presentKeys.insert("answerReference")
			if let val = exist as? FHIRJSON {
				do {
					self.answerReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "answerReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "answerReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerString"] {
			presentKeys.insert("answerString")
			if let val = exist as? String {
				self.answerString = val
			}
			else {
				errors.append(FHIRValidationError(key: "answerString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerTime"] {
			presentKeys.insert("answerTime")
			if let val = exist as? String {
				self.answerTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["answerUri"] {
			presentKeys.insert("answerUri")
			if let val = exist as? String {
				self.answerUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "answerUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["hasAnswer"] {
			presentKeys.insert("hasAnswer")
			if let val = exist as? Bool {
				self.hasAnswer = val
			}
			else {
				errors.append(FHIRValidationError(key: "hasAnswer", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["question"] {
			presentKeys.insert("question")
			if let val = exist as? String {
				self.question = val
			}
			else {
				errors.append(FHIRValidationError(key: "question", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "question"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let answerAttachment = self.answerAttachment {
			json["answerAttachment"] = answerAttachment.asJSON(errors: &errors)
		}
		if let answerBoolean = self.answerBoolean {
			json["answerBoolean"] = answerBoolean.asJSON()
		}
		if let answerCoding = self.answerCoding {
			json["answerCoding"] = answerCoding.asJSON(errors: &errors)
		}
		if let answerDate = self.answerDate {
			json["answerDate"] = answerDate.asJSON()
		}
		if let answerDateTime = self.answerDateTime {
			json["answerDateTime"] = answerDateTime.asJSON()
		}
		if let answerDecimal = self.answerDecimal {
			json["answerDecimal"] = answerDecimal.asJSON()
		}
		if let answerInstant = self.answerInstant {
			json["answerInstant"] = answerInstant.asJSON()
		}
		if let answerInteger = self.answerInteger {
			json["answerInteger"] = answerInteger.asJSON()
		}
		if let answerQuantity = self.answerQuantity {
			json["answerQuantity"] = answerQuantity.asJSON(errors: &errors)
		}
		if let answerReference = self.answerReference {
			json["answerReference"] = answerReference.asJSON(errors: &errors)
		}
		if let answerString = self.answerString {
			json["answerString"] = answerString.asJSON()
		}
		if let answerTime = self.answerTime {
			json["answerTime"] = answerTime.asJSON()
		}
		if let answerUri = self.answerUri {
			json["answerUri"] = answerUri.asJSON()
		}
		if let hasAnswer = self.hasAnswer {
			json["hasAnswer"] = hasAnswer.asJSON()
		}
		if let question = self.question {
			json["question"] = question.asJSON()
		}
		
		return json
	}
}


/**
Permitted answer.

For a "choice" question, identifies one of the permitted answers for the question.
*/
open class QuestionnaireItemOption: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemOption" }
	}
	
	/// Answer value.
	public var valueCoding: Coding?
	
	/// Answer value.
	public var valueDate: FHIRDate?
	
	/// Answer value.
	public var valueInteger: Int?
	
	/// Answer value.
	public var valueString: String?
	
	/// Answer value.
	public var valueTime: FHIRTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		
		return json
	}
}

