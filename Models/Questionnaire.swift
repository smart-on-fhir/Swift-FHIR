//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	var status: String

	/*! Date this version was authored */
	var authored: NSDate

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

	init(status: String, authored: NSDate) {
		self.status = status
		self.authored = authored
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

}


/*!
 *  Nested questionnaire group.
 *
 *  A sub-group within a group. The ordering of groups within this group is relevant.
 */
class QuestionnaireGroupGroup: FHIRElement
{
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
	var answerDateTime: NSDate?

	/*! Single-valued answer to the question */
	var answerDate: NSDate?

	/*! Single-valued answer to the question */
	var answerDecimal:  NSDecimalNumber?

	/*! Single-valued answer to the question */
	var answerString: String?

	/*! Single-valued answer to the question */
	var answerInteger: Int?

	/*! Single-valued answer to the question */
	var answerInstant: Int?

	/*! Single-valued answer to the question */
	var answerBoolean: Bool?

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

}


/*!
 *  Nested questionnaire group.
 *
 *  Nested group, containing nested question for this question. The order of groups within the question is
 *  relevant.
 */
class QuestionnaireGroupQuestionGroup: FHIRElement
{
}
