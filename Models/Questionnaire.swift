//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2015-04-23.
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
	
	/// External Ids for this questionnaire
	public var identifier: [Identifier]?
	
	/// Organization/individual who designed the questionnaire
	public var publisher: String?
	
	/// draft | published | retired
	public var status: String?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Logical id for this version of Questionnaire
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(group: QuestionnaireGroup?, status: String?) {
		self.init(json: nil)
		if nil != group {
			self.group = group
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? FHIRJSON {
					self.group = QuestionnaireGroup(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"group\" but it is missing"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
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
	
	/// Concept that represents this section on a questionnaire
	public var concept: [Coding]?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroup]?
	
	/// To link questionnaire with questionnaire answers
	public var linkId: String?
	
	/// Questions in this group
	public var question: [QuestionnaireGroupQuestion]?
	
	/// Whether the group may repeat
	public var repeats: Bool?
	
	/// Must group be included in data results?
	public var required: Bool?
	
	/// Additional text for the group
	public var text: String?
	
	/// Name to be displayed for group
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["concept"] {
				presentKeys.addObject("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concept\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["linkId"] {
				presentKeys.addObject("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"linkId\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["question"] {
				presentKeys.addObject("question")
				if let val = exist as? [FHIRJSON] {
					self.question = QuestionnaireGroupQuestion.from(val, owner: self) as? [QuestionnaireGroupQuestion]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"question\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["repeats"] {
				presentKeys.addObject("repeats")
				if let val = exist as? Bool {
					self.repeats = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"repeats\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.addObject("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"required\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
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
	
	/// To link questionnaire with questionnaire answers
	public var linkId: String?
	
	/// Valueset containing the possible options
	public var options: Reference?
	
	/// Can question  have multiple answers?
	public var repeats: Bool?
	
	/// Must question be answered in data results?
	public var required: Bool?
	
	/// Text of the question as it is shown to the user
	public var text: String?
	
	/// boolean | decimal | integer | date | dateTime +
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["concept"] {
				presentKeys.addObject("concept")
				if let val = exist as? [FHIRJSON] {
					self.concept = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concept\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? [FHIRJSON] {
					self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["linkId"] {
				presentKeys.addObject("linkId")
				if let val = exist as? String {
					self.linkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"linkId\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["options"] {
				presentKeys.addObject("options")
				if let val = exist as? FHIRJSON {
					self.options = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"options\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["repeats"] {
				presentKeys.addObject("repeats")
				if let val = exist as? Bool {
					self.repeats = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"repeats\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["required"] {
				presentKeys.addObject("required")
				if let val = exist as? Bool {
					self.required = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"required\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
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

