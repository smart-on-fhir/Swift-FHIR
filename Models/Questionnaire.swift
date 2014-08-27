//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (questionnaire.profile.json) on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A structured set of questions and their answers.
 *
 *  Scope and Usage The Questionnaire may be a single list of questions, or can be hierarchically organized in
 *  groups and sub-groups, each containing questions. Questions may contain and single answer, which can take the
 *  form of simple text, numbers, dates or a set of coded choices.
 *  
 *  Questionnaires cover the need to communicate data originating from forms used in medical history examinations,
 *  research questionnaires and sometimes full clinical speciality records. In many systems this data is collected
 *  using user-defined screens and forms. Questionnaires record specifics about data capture - exactly what
 *  questions were asked, in what order, what choices for answers were, etc. Each of these questions are part of
 *  the Questionnaire, and as such the Questionnaire is a separately identifiable Resource, whereas the individual
 *  questions are not.
 *  
 *  Examples of Questionnaires include:
 *  
 *  * Past medical history (PMH)
 *  * Family diseases
 *  * Social history
 *  * Research questionnaires
 *  * Quality and evaluation forms
 *  Support for validation is outside the scope of this Resource, although basic structural features can be
 *  defined using the Questionnaire core extensions.
 */
public class Questionnaire: FHIRResource
{
	override public class var resourceName: String {
		get { return "Questionnaire" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** draft | published | retired | in progress | completed | amended */
	public var status: String?
	
	/** Date this version was authored */
	public var authored: NSDate?
	
	/** The subject of the questions */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Person who received and recorded the answers */
	public var author: FHIRElement? {
		get { return resolveReference("author") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "author")
			}
		}
	}
	
	/** The person who answered the questions */
	public var source: FHIRElement? {
		get { return resolveReference("source") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "source")
			}
		}
	}
	
	/** Name/code for a predefined list of questions */
	public var name: CodeableConcept?
	
	/** External Ids for this questionnaire */
	public var identifier: [Identifier]?
	
	/** Primary encounter during which the answers were collected */
	public var encounter: FHIRElement? {
		get { return resolveReference("encounter") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "encounter")
			}
		}
	}
	
	/** Grouped questions */
	public var group: QuestionnaireGroup?
	
	public convenience init(status: String?, authored: NSDate?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
		if nil != authored {
			self.authored = authored
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["authored"] as? String {
				self.authored = NSDate(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = ResourceReference(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = ResourceReference(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["group"] as? NSDictionary {
				self.group = QuestionnaireGroup(json: val)
			}
		}
	}
}


/**
 *  Grouped questions.
 *
 *  A group of questions to a possibly similarly grouped set of questions in the questionnaire.
 */
public class QuestionnaireGroup: FHIRElement
{	
	/** Code or name of the section on a questionnaire */
	public var name: CodeableConcept?
	
	/** Text that is displayed above the contents of the group */
	public var header: String?
	
	/** Additional text for the group */
	public var text: String?
	
	/** The subject this group's answers are about */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Nested questionnaire group */
	public var group: [QuestionnaireGroupGroup]?
	
	/** Questions in this group */
	public var question: [QuestionnaireGroupQuestion]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["header"] as? String {
				self.header = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireGroupGroup.from(val) as? [QuestionnaireGroupGroup]
			}
			if let val = js["question"] as? [NSDictionary] {
				self.question = QuestionnaireGroupQuestion.from(val) as? [QuestionnaireGroupQuestion]
			}
		}
	}
}


/**
 *  Nested questionnaire group.
 *
 *  A sub-group within a group. The ordering of groups within this group is relevant.
 */
public class QuestionnaireGroupGroup: FHIRElement
{	

}


/**
 *  Questions in this group.
 *
 *  Set of questions within this group. The order of questions within the group is relevant.
 */
public class QuestionnaireGroupQuestion: FHIRElement
{	
	/** Code or name of the question */
	public var name: CodeableConcept?
	
	/** Text of the question as it is shown to the user */
	public var text: String?
	
	/** Single-valued answer to the question */
	public var answerDecimal: NSDecimalNumber?
	
	/** Single-valued answer to the question */
	public var answerInteger: Int?
	
	/** Single-valued answer to the question */
	public var answerBoolean: Bool?
	
	/** Single-valued answer to the question */
	public var answerDate: NSDate?
	
	/** Single-valued answer to the question */
	public var answerString: String?
	
	/** Single-valued answer to the question */
	public var answerDateTime: NSDate?
	
	/** Single-valued answer to the question */
	public var answerInstant: NSDate?
	
	/** Selected options */
	public var choice: [Coding]?
	
	/** Valueset containing the possible options */
	public var options: FHIRElement? {
		get { return resolveReference("options") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "options")
			}
		}
	}
	
	/** Structured answer */
	public var data: FHIRElement?
	
	/** Remarks about the answer given */
	public var remarks: String?
	
	/** Nested questionnaire group */
	public var group: [QuestionnaireGroupQuestionGroup]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["answerDecimal"] as? Double {
				self.answerDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["answerInteger"] as? Int {
				self.answerInteger = val
			}
			if let val = js["answerBoolean"] as? Int {
				self.answerBoolean = (1 == val)
			}
			if let val = js["answerDate"] as? String {
				self.answerDate = NSDate(json: val)
			}
			if let val = js["answerString"] as? String {
				self.answerString = val
			}
			if let val = js["answerDateTime"] as? String {
				self.answerDateTime = NSDate(json: val)
			}
			if let val = js["answerInstant"] as? String {
				self.answerInstant = NSDate(json: val)
			}
			if let val = js["choice"] as? [NSDictionary] {
				self.choice = Coding.from(val) as? [Coding]
			}
			if let val = js["options"] as? NSDictionary {
				self.options = ResourceReference(json: val)
			}
			if let val = js["data"] as? NSDictionary {
				self.data = FHIRElement(json: val)
			}
			if let val = js["remarks"] as? String {
				self.remarks = val
			}
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireGroupQuestionGroup.from(val) as? [QuestionnaireGroupQuestionGroup]
			}
		}
	}
}


/**
 *  Nested questionnaire group.
 *
 *  Nested group, containing nested question for this question. The order of groups within the question is
 *  relevant.
 */
public class QuestionnaireGroupQuestionGroup: FHIRElement
{	

}

