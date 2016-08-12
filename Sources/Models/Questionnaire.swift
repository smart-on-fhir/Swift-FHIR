//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A structured set of questions.
 *
 *  A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped
 *  into coherent subsets, corresponding to the structure of the grouping of the underlying questions.
 */
public class Questionnaire: DomainResource {
	override public class var resourceName: String {
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
	public var url: NSURL?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireItem.from(val, owner: self) as? [QuestionnaireItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subjectType"] {
				presentKeys.insert("subjectType")
				if let val = exist as? [String] {
					self.subjectType = val
				}
				else {
					errors.append(FHIRJSONError(key: "subjectType", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		
		if let concept = self.concept {
			json["concept"] = Coding.asJSONArray(concept)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = QuestionnaireItem.asJSONArray(item)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subjectType = self.subjectType {
			var arr = [AnyObject]()
			for val in subjectType {
				arr.append(val.asJSON())
			}
			json["subjectType"] = arr
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
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
public class QuestionnaireItem: BackboneElement {
	override public class var resourceName: String {
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
	public var initialDate: Date?
	
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
	public var initialTime: Time?
	
	/// Initial presumed answer for question.
	public var initialUri: NSURL?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["concept"] {
				presentKeys.insert("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "concept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["enableWhen"] {
				presentKeys.insert("enableWhen")
				if let val = exist as? [FHIRJSON] {
					self.enableWhen = QuestionnaireItemEnableWhen.from(val, owner: self) as? [QuestionnaireItemEnableWhen]
				}
				else {
					errors.append(FHIRJSONError(key: "enableWhen", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialAttachment"] {
				presentKeys.insert("initialAttachment")
				if let val = exist as? FHIRJSON {
					self.initialAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialBoolean"] {
				presentKeys.insert("initialBoolean")
				if let val = exist as? Bool {
					self.initialBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialCoding"] {
				presentKeys.insert("initialCoding")
				if let val = exist as? FHIRJSON {
					self.initialCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialDate"] {
				presentKeys.insert("initialDate")
				if let val = exist as? String {
					self.initialDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialDateTime"] {
				presentKeys.insert("initialDateTime")
				if let val = exist as? String {
					self.initialDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialDecimal"] {
				presentKeys.insert("initialDecimal")
				if let val = exist as? NSNumber {
					self.initialDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialInstant"] {
				presentKeys.insert("initialInstant")
				if let val = exist as? String {
					self.initialInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialInteger"] {
				presentKeys.insert("initialInteger")
				if let val = exist as? Int {
					self.initialInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialQuantity"] {
				presentKeys.insert("initialQuantity")
				if let val = exist as? FHIRJSON {
					self.initialQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialReference"] {
				presentKeys.insert("initialReference")
				if let val = exist as? FHIRJSON {
					self.initialReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "initialReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialString"] {
				presentKeys.insert("initialString")
				if let val = exist as? String {
					self.initialString = val
				}
				else {
					errors.append(FHIRJSONError(key: "initialString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialTime"] {
				presentKeys.insert("initialTime")
				if let val = exist as? String {
					self.initialTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["initialUri"] {
				presentKeys.insert("initialUri")
				if let val = exist as? String {
					self.initialUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "initialUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireItem.from(val, owner: self) as? [QuestionnaireItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["linkId"] {
				presentKeys.insert("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "linkId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxLength"] {
				presentKeys.insert("maxLength")
				if let val = exist as? Int {
					self.maxLength = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxLength", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["option"] {
				presentKeys.insert("option")
				if let val = exist as? [FHIRJSON] {
					self.option = QuestionnaireItemOption.from(val, owner: self) as? [QuestionnaireItemOption]
				}
				else {
					errors.append(FHIRJSONError(key: "option", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["options"] {
				presentKeys.insert("options")
				if let val = exist as? FHIRJSON {
					self.options = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "options", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prefix"] {
				presentKeys.insert("prefix")
				if let val = exist as? String {
					self.prefix = val
				}
				else {
					errors.append(FHIRJSONError(key: "prefix", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["readOnly"] {
				presentKeys.insert("readOnly")
				if let val = exist as? Bool {
					self.readOnly = val
				}
				else {
					errors.append(FHIRJSONError(key: "readOnly", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["repeats"] {
				presentKeys.insert("repeats")
				if let val = exist as? Bool {
					self.repeats = val
				}
				else {
					errors.append(FHIRJSONError(key: "repeats", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.insert("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(FHIRJSONError(key: "required", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let concept = self.concept {
			json["concept"] = Coding.asJSONArray(concept)
		}
		if let enableWhen = self.enableWhen {
			json["enableWhen"] = QuestionnaireItemEnableWhen.asJSONArray(enableWhen)
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
			json["item"] = QuestionnaireItem.asJSONArray(item)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let maxLength = self.maxLength {
			json["maxLength"] = maxLength.asJSON()
		}
		if let option = self.option {
			json["option"] = QuestionnaireItemOption.asJSONArray(option)
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
public class QuestionnaireItemEnableWhen: BackboneElement {
	override public class var resourceName: String {
		get { return "QuestionnaireItemEnableWhen" }
	}
	
	/// Value question must have.
	public var answerAttachment: Attachment?
	
	/// Value question must have.
	public var answerBoolean: Bool?
	
	/// Value question must have.
	public var answerCoding: Coding?
	
	/// Value question must have.
	public var answerDate: Date?
	
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
	public var answerTime: Time?
	
	/// Value question must have.
	public var answerUri: NSURL?
	
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["answerAttachment"] {
				presentKeys.insert("answerAttachment")
				if let val = exist as? FHIRJSON {
					self.answerAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerBoolean"] {
				presentKeys.insert("answerBoolean")
				if let val = exist as? Bool {
					self.answerBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerCoding"] {
				presentKeys.insert("answerCoding")
				if let val = exist as? FHIRJSON {
					self.answerCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerDate"] {
				presentKeys.insert("answerDate")
				if let val = exist as? String {
					self.answerDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerDateTime"] {
				presentKeys.insert("answerDateTime")
				if let val = exist as? String {
					self.answerDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerDecimal"] {
				presentKeys.insert("answerDecimal")
				if let val = exist as? NSNumber {
					self.answerDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerInstant"] {
				presentKeys.insert("answerInstant")
				if let val = exist as? String {
					self.answerInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerInteger"] {
				presentKeys.insert("answerInteger")
				if let val = exist as? Int {
					self.answerInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerQuantity"] {
				presentKeys.insert("answerQuantity")
				if let val = exist as? FHIRJSON {
					self.answerQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerReference"] {
				presentKeys.insert("answerReference")
				if let val = exist as? FHIRJSON {
					self.answerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "answerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerString"] {
				presentKeys.insert("answerString")
				if let val = exist as? String {
					self.answerString = val
				}
				else {
					errors.append(FHIRJSONError(key: "answerString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerTime"] {
				presentKeys.insert("answerTime")
				if let val = exist as? String {
					self.answerTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["answerUri"] {
				presentKeys.insert("answerUri")
				if let val = exist as? String {
					self.answerUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "answerUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["hasAnswer"] {
				presentKeys.insert("hasAnswer")
				if let val = exist as? Bool {
					self.hasAnswer = val
				}
				else {
					errors.append(FHIRJSONError(key: "hasAnswer", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["question"] {
				presentKeys.insert("question")
				if let val = exist as? String {
					self.question = val
				}
				else {
					errors.append(FHIRJSONError(key: "question", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "question"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
public class QuestionnaireItemOption: BackboneElement {
	override public class var resourceName: String {
		get { return "QuestionnaireItemOption" }
	}
	
	/// Answer value.
	public var valueCoding: Coding?
	
	/// Answer value.
	public var valueDate: Date?
	
	/// Answer value.
	public var valueInteger: Int?
	
	/// Answer value.
	public var valueString: String?
	
	/// Answer value.
	public var valueTime: Time?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(valueCoding: Coding, valueDate: Date, valueInteger: Int, valueString: String, valueTime: Time) {
		self.init(json: nil)
		self.valueCoding = valueCoding
		self.valueDate = valueDate
		self.valueInteger = valueInteger
		self.valueString = valueString
		self.valueTime = valueTime
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

