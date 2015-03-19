//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2015-03-19.
//  2015, SMART Platforms.
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
	
	public convenience init(group: QuestionnaireGroup?, status: String?) {
		self.init(json: nil)
		if nil != group {
			self.group = group
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["group"] as? JSONDictionary {
				self.group = QuestionnaireGroup(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	/// Grouped questions
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concept"] as? [JSONDictionary] {
				self.concept = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["group"] as? [JSONDictionary] {
				self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
			}
			if let val = js["linkId"] as? String {
				self.linkId = val
			}
			if let val = js["question"] as? [JSONDictionary] {
				self.question = QuestionnaireGroupQuestion.from(val, owner: self) as? [QuestionnaireGroupQuestion]
			}
			if let val = js["repeats"] as? Bool {
				self.repeats = val
			}
			if let val = js["required"] as? Bool {
				self.required = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["title"] as? String {
				self.title = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	/// Grouped questions
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concept"] as? [JSONDictionary] {
				self.concept = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["group"] as? [JSONDictionary] {
				self.group = QuestionnaireGroup.from(val, owner: self) as? [QuestionnaireGroup]
			}
			if let val = js["linkId"] as? String {
				self.linkId = val
			}
			if let val = js["options"] as? JSONDictionary {
				self.options = Reference(json: val, owner: self)
			}
			if let val = js["repeats"] as? Bool {
				self.repeats = val
			}
			if let val = js["required"] as? Bool {
				self.required = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

