//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A structured set of questions.
 *
 *  A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped
 *  into coherent subsets, corresponding to the structure of the grouping of the underlying questions.
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
	
	/// draft | published | retired.
	public var status: String?
	
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
			if let exist = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireItem.instantiate(fromArray: val, owner: self) as? [QuestionnaireItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["subjectType"] {
				presentKeys.insert("subjectType")
				if let val = exist as? [String] {
					self.subjectType = val
				}
				else {
					errors.append(FHIRJSONError(key: "subjectType", wants: Array<String>.self, has: type(of: exist)))
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
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
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
			if let exist = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
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
		
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON() }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subjectType = self.subjectType {
			var arr = [Any]()
			for val in subjectType {
				arr.append(val.asJSON())
			}
			json["subjectType"] = arr
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON() }
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
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
 *  Questions and sections within the Questionnaire.
 *
 *  The questions and groupings of questions that make up the questionnaire.
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
	
	/// group | display | question | boolean | decimal | integer | date | dateTime +.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["enableWhen"] {
				presentKeys.insert("enableWhen")
				if let val = exist as? [FHIRJSON] {
					self.enableWhen = QuestionnaireItemEnableWhen.instantiate(fromArray: val, owner: self) as? [QuestionnaireItemEnableWhen]
				}
				else {
					errors.append(FHIRJSONError(key: "enableWhen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialAttachment"] {
				presentKeys.insert("initialAttachment")
				if let val = exist as? FHIRJSON {
					self.initialAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialBoolean"] {
				presentKeys.insert("initialBoolean")
				if let val = exist as? Bool {
					self.initialBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialCoding"] {
				presentKeys.insert("initialCoding")
				if let val = exist as? FHIRJSON {
					self.initialCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialDate"] {
				presentKeys.insert("initialDate")
				if let val = exist as? String {
					self.initialDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialDateTime"] {
				presentKeys.insert("initialDateTime")
				if let val = exist as? String {
					self.initialDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialDecimal"] {
				presentKeys.insert("initialDecimal")
				if let val = exist as? NSNumber {
					self.initialDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDecimal", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialInstant"] {
				presentKeys.insert("initialInstant")
				if let val = exist as? String {
					self.initialInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialInstant", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialInteger"] {
				presentKeys.insert("initialInteger")
				if let val = exist as? Int {
					self.initialInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialQuantity"] {
				presentKeys.insert("initialQuantity")
				if let val = exist as? FHIRJSON {
					self.initialQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialReference"] {
				presentKeys.insert("initialReference")
				if let val = exist as? FHIRJSON {
					self.initialReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialString"] {
				presentKeys.insert("initialString")
				if let val = exist as? String {
					self.initialString = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialTime"] {
				presentKeys.insert("initialTime")
				if let val = exist as? String {
					self.initialTime = FHIRTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["initialUri"] {
				presentKeys.insert("initialUri")
				if let val = exist as? String {
					self.initialUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialUri", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireItem.instantiate(fromArray: val, owner: self) as? [QuestionnaireItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["linkId"] {
				presentKeys.insert("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "linkId", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["maxLength"] {
				presentKeys.insert("maxLength")
				if let val = exist as? Int {
					self.maxLength = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxLength", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["option"] {
				presentKeys.insert("option")
				if let val = exist as? [FHIRJSON] {
					self.option = QuestionnaireItemOption.instantiate(fromArray: val, owner: self) as? [QuestionnaireItemOption]
				}
				else {
					errors.append(FHIRJSONError(key: "option", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["options"] {
				presentKeys.insert("options")
				if let val = exist as? FHIRJSON {
					self.options = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "options", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prefix"] {
				presentKeys.insert("prefix")
				if let val = exist as? String {
					self.prefix = val
				}
				else {
					errors.append(FHIRJSONError(key: "prefix", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["readOnly"] {
				presentKeys.insert("readOnly")
				if let val = exist as? Bool {
					self.readOnly = val
				}
				else {
					errors.append(FHIRJSONError(key: "readOnly", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["repeats"] {
				presentKeys.insert("repeats")
				if let val = exist as? Bool {
					self.repeats = val
				}
				else {
					errors.append(FHIRJSONError(key: "repeats", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let concept = self.concept {
			json["concept"] = concept.map() { $0.asJSON() }
		}
		if let enableWhen = self.enableWhen {
			json["enableWhen"] = enableWhen.map() { $0.asJSON() }
		}
		if let initialAttachment = self.initialAttachment {
			json["initialAttachment"] = initialAttachment.asJSON()
		}
		if let initialBoolean = self.initialBoolean {
			json["initialBoolean"] = initialBoolean.asJSON()
		}
		if let initialCoding = self.initialCoding {
			json["initialCoding"] = initialCoding.asJSON()
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
			json["initialQuantity"] = initialQuantity.asJSON()
		}
		if let initialReference = self.initialReference {
			json["initialReference"] = initialReference.asJSON()
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
			json["item"] = item.map() { $0.asJSON() }
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let maxLength = self.maxLength {
			json["maxLength"] = maxLength.asJSON()
		}
		if let option = self.option {
			json["option"] = option.map() { $0.asJSON() }
		}
		if let options = self.options {
			json["options"] = options.asJSON()
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
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Only allow data when:.
 *
 *  If present, indicates that this item should only be enabled (displayed/allow answers to be captured) when the
 *  specified condition is true.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(question: String) {
		self.init(json: nil)
		self.question = question
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["answerAttachment"] {
				presentKeys.insert("answerAttachment")
				if let val = exist as? FHIRJSON {
					self.answerAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerBoolean"] {
				presentKeys.insert("answerBoolean")
				if let val = exist as? Bool {
					self.answerBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerBoolean", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerCoding"] {
				presentKeys.insert("answerCoding")
				if let val = exist as? FHIRJSON {
					self.answerCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerDate"] {
				presentKeys.insert("answerDate")
				if let val = exist as? String {
					self.answerDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerDateTime"] {
				presentKeys.insert("answerDateTime")
				if let val = exist as? String {
					self.answerDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerDecimal"] {
				presentKeys.insert("answerDecimal")
				if let val = exist as? NSNumber {
					self.answerDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDecimal", wants: NSNumber.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerInstant"] {
				presentKeys.insert("answerInstant")
				if let val = exist as? String {
					self.answerInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerInstant", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerInteger"] {
				presentKeys.insert("answerInteger")
				if let val = exist as? Int {
					self.answerInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerQuantity"] {
				presentKeys.insert("answerQuantity")
				if let val = exist as? FHIRJSON {
					self.answerQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerQuantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerReference"] {
				presentKeys.insert("answerReference")
				if let val = exist as? FHIRJSON {
					self.answerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerString"] {
				presentKeys.insert("answerString")
				if let val = exist as? String {
					self.answerString = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerTime"] {
				presentKeys.insert("answerTime")
				if let val = exist as? String {
					self.answerTime = FHIRTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["answerUri"] {
				presentKeys.insert("answerUri")
				if let val = exist as? String {
					self.answerUri = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerUri", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["hasAnswer"] {
				presentKeys.insert("hasAnswer")
				if let val = exist as? Bool {
					self.hasAnswer = val
				}
				else {
					errors.append(FHIRJSONError(key: "hasAnswer", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["question"] {
				presentKeys.insert("question")
				if let val = exist as? String {
					self.question = val
				}
				else {
					errors.append(FHIRJSONError(key: "question", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "question"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let answerAttachment = self.answerAttachment {
			json["answerAttachment"] = answerAttachment.asJSON()
		}
		if let answerBoolean = self.answerBoolean {
			json["answerBoolean"] = answerBoolean.asJSON()
		}
		if let answerCoding = self.answerCoding {
			json["answerCoding"] = answerCoding.asJSON()
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
			json["answerQuantity"] = answerQuantity.asJSON()
		}
		if let answerReference = self.answerReference {
			json["answerReference"] = answerReference.asJSON()
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
 *  Permitted answer.
 *
 *  For a "choice" question, identifies one of the permitted answers for the question.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(valueCoding: Coding, valueDate: FHIRDate, valueInteger: Int, valueString: String, valueTime: FHIRTime) {
		self.init(json: nil)
		self.valueCoding = valueCoding
		self.valueDate = valueDate
		self.valueInteger = valueInteger
		self.valueString = valueString
		self.valueTime = valueTime
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = FHIRTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: type(of: exist)))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
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

