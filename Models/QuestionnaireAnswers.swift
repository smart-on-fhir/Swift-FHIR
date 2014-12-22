//
//  QuestionnaireAnswers.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (questionnaireanswers.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A structured set of questions and their answers.
 *
 *  A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
 *  corresponding to the structure of the grouping of the underlying questions.
 */
public class QuestionnaireAnswers: FHIRResource
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswers" }
	}
	
	/// Person who received and recorded the answers
	public var author: Reference?
	
	/// Date this version was authored
	public var authored: NSDate?
	
	/// Primary encounter during which the answers were collected
	public var encounter: Reference?
	
	/// Grouped questions
	public var group: QuestionnaireAnswersGroup?
	
	/// Unique id for this set of answers
	public var identifier: Identifier?
	
	/// Form being answered
	public var questionnaire: Reference?
	
	/// The person who answered the questions
	public var source: Reference?
	
	/// in progress | completed | amended
	public var status: String?
	
	/// The subject of the questions
	public var subject: Reference?
	
	public convenience init(authored: NSDate?, status: String?) {
		self.init(json: nil)
		if nil != authored {
			self.authored = authored
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["authored"] as? String {
				self.authored = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["group"] as? NSDictionary {
				self.group = QuestionnaireAnswersGroup(json: val, owner: self)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["questionnaire"] as? NSDictionary {
				self.questionnaire = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Grouped questions.
 *
 *  A group of questions to a possibly similarly grouped set of questions in the questionnaire answers.
 */
public class QuestionnaireAnswersGroup: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroup" }
	}
	
	/// Grouped questions
	public var group: [QuestionnaireAnswersGroup]?
	
	/// Corresponding group within Questionnaire
	public var linkId: String?
	
	/// Questions in this group
	public var question: [QuestionnaireAnswersGroupQuestion]?
	
	/// The subject this group's answers are about
	public var subject: Reference?
	
	/// Additional text for the group
	public var text: String?
	
	/// Name for this group
	public var title: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireAnswersGroup.from(val, owner: self) as? [QuestionnaireAnswersGroup]
			}
			if let val = js["linkId"] as? String {
				self.linkId = val
			}
			if let val = js["question"] as? [NSDictionary] {
				self.question = QuestionnaireAnswersGroupQuestion.from(val, owner: self) as? [QuestionnaireAnswersGroupQuestion]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
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
public class QuestionnaireAnswersGroupQuestion: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroupQuestion" }
	}
	
	/// The response(s) to the question
	public var answer: [QuestionnaireAnswersGroupQuestionAnswer]?
	
	/// Grouped questions
	public var group: [QuestionnaireAnswersGroup]?
	
	/// Corresponding question within Questionnaire
	public var linkId: String?
	
	/// Text of the question as it is shown to the user
	public var text: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["answer"] as? [NSDictionary] {
				self.answer = QuestionnaireAnswersGroupQuestionAnswer.from(val, owner: self) as? [QuestionnaireAnswersGroupQuestionAnswer]
			}
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireAnswersGroup.from(val, owner: self) as? [QuestionnaireAnswersGroup]
			}
			if let val = js["linkId"] as? String {
				self.linkId = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
}


/**
 *  The response(s) to the question.
 *
 *  The respondent's answer(s) to the question.
 */
public class QuestionnaireAnswersGroupQuestionAnswer: FHIRElement
{
	override public class var resourceName: String {
		get { return "QuestionnaireAnswersGroupQuestionAnswer" }
	}
	
	/// Single-valued answer to the question
	public var valueAttachment: Attachment?
	
	/// Single-valued answer to the question
	public var valueBoolean: Bool?
	
	/// Single-valued answer to the question
	public var valueCoding: Coding?
	
	/// Single-valued answer to the question
	public var valueDate: NSDate?
	
	/// Single-valued answer to the question
	public var valueDateTime: NSDate?
	
	/// Single-valued answer to the question
	public var valueDecimal: NSDecimalNumber?
	
	/// Single-valued answer to the question
	public var valueInstant: NSDate?
	
	/// Single-valued answer to the question
	public var valueInteger: Int?
	
	/// Single-valued answer to the question
	public var valueQuantity: Quantity?
	
	/// Single-valued answer to the question
	public var valueReference: Reference?
	
	/// Single-valued answer to the question
	public var valueString: String?
	
	/// Single-valued answer to the question
	public var valueTime: NSDate?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["valueAttachment"] as? NSDictionary {
				self.valueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCoding"] as? NSDictionary {
				self.valueCoding = Coding(json: val, owner: self)
			}
			if let val = js["valueDate"] as? String {
				self.valueDate = NSDate(json: val)
			}
			if let val = js["valueDateTime"] as? String {
				self.valueDateTime = NSDate(json: val)
			}
			if let val = js["valueDecimal"] as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueInstant"] as? String {
				self.valueInstant = NSDate(json: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueReference"] as? NSDictionary {
				self.valueReference = Reference(json: val, owner: self)
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueTime"] as? String {
				self.valueTime = NSDate(json: val)
			}
		}
	}
}

