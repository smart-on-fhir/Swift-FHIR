//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (questionnaire.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A structured set of questions.
 *
 *  A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped
 *  into coherent subsets, corresponding to the structure of the grouping of the underlying questions.
 */
public class Questionnaire: FHIRResource
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
	
	/// Organization who designed the questionnaire
	public var publisher: String?
	
	/// draft | published | retired
	public var status: String?
	
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
			if let val = js["version"] as? String {
				self.version = val
			}
		}
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
	
	/// Whether the group may repeat
	public var repeats: Bool?
	
	/// Must group be included in data results?
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
}

