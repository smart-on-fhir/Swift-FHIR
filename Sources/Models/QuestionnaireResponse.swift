//
//  QuestionnaireResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A structured set of questions and their answers.
 *
 *  A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
 *  corresponding to the structure of the grouping of the underlying questions.
 */
public class QuestionnaireResponse: DomainResource {
	override public class var resourceName: String {
		get { return "QuestionnaireResponse" }
	}
	
	/// Person who received and recorded the answers.
	public var author: Reference?
	
	/// Date this version was authored.
	public var authored: DateTime?
	
	/// Request fulfilled by this Questionnaire.
	public var basedOn: [Reference]?
	
	/// Encounter or Episode during which questionnaire was completed.
	public var context: Reference?
	
	/// Unique id for this set of answers.
	public var identifier: Identifier?
	
	/// Groups and questions.
	public var item: [QuestionnaireResponseItem]?
	
	/// Part of this action.
	public var parent: [Reference]?
	
	/// Form being answered.
	public var questionnaire: Reference?
	
	/// The person who answered the questions.
	public var source: Reference?
	
	/// in-progress | completed | amended.
	public var status: String?
	
	/// The subject of the questions.
	public var subject: Reference?
	
	
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
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["authored"] {
				presentKeys.insert("authored")
				if let val = exist as? String {
					self.authored = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "authored", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireResponseItem.from(val, owner: self) as? [QuestionnaireResponseItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["questionnaire"] {
				presentKeys.insert("questionnaire")
				if let val = exist as? FHIRJSON {
					self.questionnaire = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "questionnaire", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let authored = self.authored {
			json["authored"] = authored.asJSON()
		}
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let item = self.item {
			json["item"] = QuestionnaireResponseItem.asJSONArray(item)
		}
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let questionnaire = self.questionnaire {
			json["questionnaire"] = questionnaire.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}


/**
 *  Groups and questions.
 *
 *  Corresponds to a group or question item from the original questionnaire.
 */
public class QuestionnaireResponseItem: BackboneElement {
	override public class var resourceName: String {
		get { return "QuestionnaireResponseItem" }
	}
	
	/// The response(s) to the question.
	public var answer: [QuestionnaireResponseItemAnswer]?
	
	/// Nested questionnaire response items.
	public var item: [QuestionnaireResponseItem]?
	
	/// Corresponding item within Questionnaire.
	public var linkId: String?
	
	/// The subject this group's answers are about.
	public var subject: Reference?
	
	/// Name for group or question text.
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["answer"] {
				presentKeys.insert("answer")
				if let val = exist as? [FHIRJSON] {
					self.answer = QuestionnaireResponseItemAnswer.from(val, owner: self) as? [QuestionnaireResponseItemAnswer]
				}
				else {
					errors.append(FHIRJSONError(key: "answer", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireResponseItem.from(val, owner: self) as? [QuestionnaireResponseItem]
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
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let answer = self.answer {
			json["answer"] = QuestionnaireResponseItemAnswer.asJSONArray(answer)
		}
		if let item = self.item {
			json["item"] = QuestionnaireResponseItem.asJSONArray(item)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}


/**
 *  The response(s) to the question.
 *
 *  The respondent's answer(s) to the question.
 */
public class QuestionnaireResponseItemAnswer: BackboneElement {
	override public class var resourceName: String {
		get { return "QuestionnaireResponseItemAnswer" }
	}
	
	/// Nested groups and questions.
	public var item: [QuestionnaireResponseItem]?
	
	/// Single-valued answer to the question.
	public var valueAttachment: Attachment?
	
	/// Single-valued answer to the question.
	public var valueBoolean: Bool?
	
	/// Single-valued answer to the question.
	public var valueCoding: Coding?
	
	/// Single-valued answer to the question.
	public var valueDate: Date?
	
	/// Single-valued answer to the question.
	public var valueDateTime: DateTime?
	
	/// Single-valued answer to the question.
	public var valueDecimal: NSDecimalNumber?
	
	/// Single-valued answer to the question.
	public var valueInstant: Instant?
	
	/// Single-valued answer to the question.
	public var valueInteger: Int?
	
	/// Single-valued answer to the question.
	public var valueQuantity: Quantity?
	
	/// Single-valued answer to the question.
	public var valueReference: Reference?
	
	/// Single-valued answer to the question.
	public var valueString: String?
	
	/// Single-valued answer to the question.
	public var valueTime: Time?
	
	/// Single-valued answer to the question.
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = QuestionnaireResponseItem.from(val, owner: self) as? [QuestionnaireResponseItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.insert("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
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
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.insert("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueInstant", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.insert("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let item = self.item {
			json["item"] = QuestionnaireResponseItem.asJSONArray(item)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

