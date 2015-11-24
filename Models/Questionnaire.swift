//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2015-11-24.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A structured set of questions.
 *
 *  A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped
 *  into coherent subsets, corresponding to the structure of the grouping of the underlying questions.
 */
public class Questionnaire: DomainResource
{
	override public class var resourceName: String {
		get { return "Questionnaire" }
	}
	
	/// Date this version was authored
	public var date: DateTime?
	
	/// Grouped questions
	public var group: QuestionnaireGroup?
	
	/// External identifiers for this questionnaire
	public var identifier: [Identifier]?
	
	/// Organization/individual who designed the questionnaire
	public var publisher: String?
	
	/// draft | published | retired
	public var status: String?
	
	/// Resource that can be subject of QuestionnaireResponse
	public var subjectType: [String]?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Logical identifier for this version of Questionnaire
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(group: QuestionnaireGroup, status: String) {
		self.init(json: nil)
		self.group = group
		self.status = status
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? FHIRJSON {
					self.group = QuestionnaireGroup(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "group"))
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
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
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
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Grouped questions.
 *
 *  A collection of related questions (or further groupings of questions).
 */
public class QuestionnaireGroup: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireGroup" }
	}
	
	/// Concept that represents this section in a questionnaire
	public var concept: [Coding]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroup]?
	
	/// To link questionnaire with questionnaire response
	public var linkId: String?
	
	/// Questions in this group
	public var question: [QuestionnaireGroupQuestion]?
	
	/// Whether the group may repeat
	public var repeats: Bool?
	
	/// Whether the group must be included in data results
	public var required: Bool?
	
	/// Additional text for the group
	public var text: String?
	
	/// Name to be displayed for group
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["question"] {
				presentKeys.insert("question")
				if let val = exist as? [FHIRJSON] {
					self.question = QuestionnaireGroupQuestion.from(val, owner: self) as? [QuestionnaireGroupQuestion]
				}
				else {
					errors.append(FHIRJSONError(key: "question", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
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
		if let group = self.group {
			json["group"] = QuestionnaireGroup.asJSONArray(group)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let question = self.question {
			json["question"] = QuestionnaireGroupQuestion.asJSONArray(question)
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
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}


/**
 *  Questions in this group.
 *
 *  Set of questions within this group. The order of questions within the group is relevant.
 */
public class QuestionnaireGroupQuestion: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireGroupQuestion" }
	}
	
	/// Concept that represents this question on a questionnaire
	public var concept: [Coding]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroup]?
	
	/// To link questionnaire with questionnaire response
	public var linkId: String?
	
	/// Permitted answer
	public var option: [Coding]?
	
	/// Valueset containing permitted answers
	public var options: Reference?
	
	/// Whether the question  can have multiple answers
	public var repeats: Bool?
	
	/// Whether the question must be answered in data results
	public var required: Bool?
	
	/// Text of the question as it is shown to the user
	public var text: String?
	
	/// boolean | decimal | integer | date | dateTime +
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["option"] {
				presentKeys.insert("option")
				if let val = exist as? [FHIRJSON] {
					self.option = Coding.from(val, owner: self) as? [Coding]
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let concept = self.concept {
			json["concept"] = Coding.asJSONArray(concept)
		}
		if let group = self.group {
			json["group"] = QuestionnaireGroup.asJSONArray(group)
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		if let option = self.option {
			json["option"] = Coding.asJSONArray(option)
		}
		if let options = self.options {
			json["options"] = options.asJSON()
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

