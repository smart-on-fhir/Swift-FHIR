//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class Questionnaire: FHIRResource
{
	override var resourceName: String {
		get { return "Questionnaire" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! draft | published | retired | in progress | completed | amended */
	var status: String?
	
	/*! Date this version was authored */
	var authored: NSDate?
	
	/*! The subject of the questions */
	var subject: ResourceReference?
	
	/*! Person who received and recorded the answers */
	var author: ResourceReference?
	
	/*! The person who answered the questions */
	var source: ResourceReference?
	
	/*! Name/code for a predefined list of questions */
	var name: CodeableConcept?
	
	/*! External Ids for this questionnaire */
	var identifier: Identifier[]?
	
	/*! Primary encounter during which the answers were collected */
	var encounter: ResourceReference?
	
	/*! Grouped questions */
	var group: QuestionnaireGroup?
	
	convenience init(status: String?, authored: NSDate?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if authored {
			self.authored = authored
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
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
			if let val = js["identifier"] as? Array<NSDictionary> {
				self.identifier = Identifier.from(val) as? Identifier[]
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["group"] as? NSDictionary {
				self.group = QuestionnaireGroup(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Grouped questions.
 *
 *  A group of questions to a possibly similarly grouped set of questions in the questionnaire.
 */
class QuestionnaireGroup: FHIRElement
{	
	/*! Code or name of the section on a questionnaire */
	var name: CodeableConcept?
	
	/*! Text that is displayed above the contents of the group */
	var header: String?
	
	/*! Additional text for the group */
	var text: String?
	
	/*! The subject this group's answers are about */
	var subject: ResourceReference?
	
	/*! Nested questionnaire group */
	var group: QuestionnaireGroupGroup[]?
	
	/*! Questions in this group */
	var question: QuestionnaireGroupQuestion[]?
	
	
	init(json: NSDictionary?) {
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
			if let val = js["group"] as? Array<NSDictionary> {
				self.group = QuestionnaireGroupGroup.from(val) as? QuestionnaireGroupGroup[]
			}
			if let val = js["question"] as? Array<NSDictionary> {
				self.question = QuestionnaireGroupQuestion.from(val) as? QuestionnaireGroupQuestion[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Nested questionnaire group.
 *
 *  A sub-group within a group. The ordering of groups within this group is relevant.
 */
class QuestionnaireGroupGroup: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}


/*!
 *  Questions in this group.
 *
 *  Set of questions within this group. The order of questions within the group is relevant.
 */
class QuestionnaireGroupQuestion: FHIRElement
{	
	/*! Code or name of the question */
	var name: CodeableConcept?
	
	/*! Text of the question as it is shown to the user */
	var text: String?
	
	/*! Single-valued answer to the question */
	var answerInstant: Int?
	
	/*! Single-valued answer to the question */
	var answerBoolean: Bool?
	
	/*! Single-valued answer to the question */
	var answerDateTime: NSDate?
	
	/*! Single-valued answer to the question */
	var answerInteger: Int?
	
	/*! Single-valued answer to the question */
	var answerDecimal: NSDecimalNumber?
	
	/*! Single-valued answer to the question */
	var answerString: String?
	
	/*! Single-valued answer to the question */
	var answerDate: NSDate?
	
	/*! Selected options */
	var choice: Coding[]?
	
	/*! Valueset containing the possible options */
	var options: ResourceReference?
	
	/*! Structured answer */
	var data: FHIRElement?
	
	/*! Remarks about the answer given */
	var remarks: String?
	
	/*! Nested questionnaire group */
	var group: QuestionnaireGroupQuestionGroup[]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["answerInstant"] as? Int {
				self.answerInstant = val
			}
			if let val = js["answerBoolean"] as? Int {
				self.answerBoolean = (1 == val)
			}
			if let val = js["answerDateTime"] as? String {
				self.answerDateTime = NSDate(json: val)
			}
			if let val = js["answerInteger"] as? Int {
				self.answerInteger = val
			}
			if let val = js["answerDecimal"] as? String {
				self.answerDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["answerString"] as? String {
				self.answerString = val
			}
			if let val = js["answerDate"] as? String {
				self.answerDate = NSDate(json: val)
			}
			if let val = js["choice"] as? Array<NSDictionary> {
				self.choice = Coding.from(val) as? Coding[]
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
			if let val = js["group"] as? Array<NSDictionary> {
				self.group = QuestionnaireGroupQuestionGroup.from(val) as? QuestionnaireGroupQuestionGroup[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Nested questionnaire group.
 *
 *  Nested group, containing nested question for this question. The order of groups within the question is
 *  relevant.
 */
class QuestionnaireGroupQuestionGroup: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}
