//
//  Questionnaire.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (questionnaire.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A structured set of questions and their answers.
 *
 *  Scope and Usage The Questionnaire may be a single list of questions, or can be hierarchically organized in groups
 *  and sub-groups, each containing questions. Questions may contain and single answer, which can take the form of
 *  simple text, numbers, dates or a set of coded choices.
 *  
 *  Questionnaires cover the need to communicate data originating from forms used in medical history examinations,
 *  research questionnaires and sometimes full clinical speciality records. In many systems this data is collected using
 *  user-defined screens and forms. Questionnaires record specifics about data capture - exactly what questions were
 *  asked, in what order, what choices for answers were, etc. Each of these questions are part of the Questionnaire, and
 *  as such the Questionnaire is a separately identifiable Resource, whereas the individual questions are not.
 *  
 *  Examples of Questionnaires include:
 *  
 *  * Past medical history (PMH)
 *  * Family diseases
 *  * Social history
 *  * Research questionnaires
 *  * Quality and evaluation forms
 *  Support for validation is outside the scope of this Resource, although basic structural features can be defined
 *  using the Questionnaire core extensions.
 */
public class Questionnaire: FHIRResource
{
	override public class var resourceName: String {
		get { return "Questionnaire" }
	}
	
	/// Person who received and recorded the answers
	public var author: FHIRReference<Practitioner>?
	
	/// Date this version was authored
	public var authored: NSDate?
	
	/// Primary encounter during which the answers were collected
	public var encounter: FHIRReference<Encounter>?
	
	/// Grouped questions
	public var group: QuestionnaireGroup?
	
	/// External Ids for this questionnaire
	public var identifier: [Identifier]?
	
	/// Name/code for a predefined list of questions
	public var name: CodeableConcept?
	
	/// The person who answered the questions
	public var source: FHIRReference<Patient>?
	
	/// draft | published | retired | in progress | completed | amended
	public var status: String?
	
	/// The subject of the questions
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
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
				self.author = FHIRReference(json: val, owner: self)
			}
			if let val = js["authored"] as? String {
				self.authored = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = FHIRReference(json: val, owner: self)
			}
			if let val = js["group"] as? NSDictionary {
				self.group = QuestionnaireGroup(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = FHIRReference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
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
	/// Nested questionnaire group
	public var group: [QuestionnaireGroupGroup]?
	
	/// Text that is displayed above the contents of the group
	public var header: String?
	
	/// Code or name of the section on a questionnaire
	public var name: CodeableConcept?
	
	/// Questions in this group
	public var question: [QuestionnaireGroupQuestion]?
	
	/// The subject this group's answers are about
	public var subject: FHIRReference<FHIRResource>?
	
	/// Additional text for the group
	public var text: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireGroupGroup.from(val, owner: self) as? [QuestionnaireGroupGroup]
			}
			if let val = js["header"] as? String {
				self.header = val
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["question"] as? [NSDictionary] {
				self.question = QuestionnaireGroupQuestion.from(val, owner: self) as? [QuestionnaireGroupQuestion]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
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
	/// Single-valued answer to the question
	public var answerBoolean: Bool?
	
	/// Single-valued answer to the question
	public var answerDate: NSDate?
	
	/// Single-valued answer to the question
	public var answerDateTime: NSDate?
	
	/// Single-valued answer to the question
	public var answerDecimal: NSDecimalNumber?
	
	/// Single-valued answer to the question
	public var answerInstant: NSDate?
	
	/// Single-valued answer to the question
	public var answerInteger: Int?
	
	/// Single-valued answer to the question
	public var answerString: String?
	
	/// Selected options
	public var choice: [Coding]?
	
	/// Structured answer
	public var dataAddress: Address?
	
	/// Structured answer
	public var dataAttachment: Attachment?
	
	/// Structured answer
	public var dataBase64Binary: String?
	
	/// Structured answer
	public var dataBoolean: Bool?
	
	/// Structured answer
	public var dataCode: String?
	
	/// Structured answer
	public var dataCodeableConcept: CodeableConcept?
	
	/// Structured answer
	public var dataCoding: Coding?
	
	/// Structured answer
	public var dataContact: Contact?
	
	/// Structured answer
	public var dataDate: NSDate?
	
	/// Structured answer
	public var dataDateTime: NSDate?
	
	/// Structured answer
	public var dataDecimal: NSDecimalNumber?
	
	/// Structured answer
	public var dataHumanName: HumanName?
	
	/// Structured answer
	public var dataIdentifier: Identifier?
	
	/// Structured answer
	public var dataInstant: NSDate?
	
	/// Structured answer
	public var dataInteger: Int?
	
	/// Structured answer
	public var dataPeriod: Period?
	
	/// Structured answer
	public var dataQuantity: Quantity?
	
	/// Structured answer
	public var dataRange: Range?
	
	/// Structured answer
	public var dataRatio: Ratio?
	
	/// Structured answer
	public var dataResource: FHIRResource?
	
	/// Structured answer
	public var dataSchedule: Schedule?
	
	/// Structured answer
	public var dataString: String?
	
	/// Structured answer
	public var dataUri: NSURL?
	
	/// Nested questionnaire group
	public var group: [QuestionnaireGroupQuestionGroup]?
	
	/// Code or name of the question
	public var name: CodeableConcept?
	
	/// Valueset containing the possible options
	public var options: FHIRReference<ValueSet>?
	
	/// Remarks about the answer given
	public var remarks: String?
	
	/// Text of the question as it is shown to the user
	public var text: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["answerBoolean"] as? Bool {
				self.answerBoolean = val
			}
			if let val = js["answerDate"] as? String {
				self.answerDate = NSDate(json: val)
			}
			if let val = js["answerDateTime"] as? String {
				self.answerDateTime = NSDate(json: val)
			}
			if let val = js["answerDecimal"] as? NSNumber {
				self.answerDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["answerInstant"] as? String {
				self.answerInstant = NSDate(json: val)
			}
			if let val = js["answerInteger"] as? Int {
				self.answerInteger = val
			}
			if let val = js["answerString"] as? String {
				self.answerString = val
			}
			if let val = js["choice"] as? [NSDictionary] {
				self.choice = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["dataAddress"] as? NSDictionary {
				self.dataAddress = Address(json: val, owner: self)
			}
			if let val = js["dataAttachment"] as? NSDictionary {
				self.dataAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["dataBase64Binary"] as? String {
				self.dataBase64Binary = val
			}
			if let val = js["dataBoolean"] as? Bool {
				self.dataBoolean = val
			}
			if let val = js["dataCode"] as? String {
				self.dataCode = val
			}
			if let val = js["dataCodeableConcept"] as? NSDictionary {
				self.dataCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["dataCoding"] as? NSDictionary {
				self.dataCoding = Coding(json: val, owner: self)
			}
			if let val = js["dataContact"] as? NSDictionary {
				self.dataContact = Contact(json: val, owner: self)
			}
			if let val = js["dataDate"] as? String {
				self.dataDate = NSDate(json: val)
			}
			if let val = js["dataDateTime"] as? String {
				self.dataDateTime = NSDate(json: val)
			}
			if let val = js["dataDecimal"] as? NSNumber {
				self.dataDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["dataHumanName"] as? NSDictionary {
				self.dataHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["dataIdentifier"] as? NSDictionary {
				self.dataIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["dataInstant"] as? String {
				self.dataInstant = NSDate(json: val)
			}
			if let val = js["dataInteger"] as? Int {
				self.dataInteger = val
			}
			if let val = js["dataPeriod"] as? NSDictionary {
				self.dataPeriod = Period(json: val, owner: self)
			}
			if let val = js["dataQuantity"] as? NSDictionary {
				self.dataQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["dataRange"] as? NSDictionary {
				self.dataRange = Range(json: val, owner: self)
			}
			if let val = js["dataRatio"] as? NSDictionary {
				self.dataRatio = Ratio(json: val, owner: self)
			}
			if let val = js["dataResource"] as? NSDictionary {
				self.dataResource = FHIRResource(json: val, owner: self)
			}
			if let val = js["dataSchedule"] as? NSDictionary {
				self.dataSchedule = Schedule(json: val, owner: self)
			}
			if let val = js["dataString"] as? String {
				self.dataString = val
			}
			if let val = js["dataUri"] as? String {
				self.dataUri = NSURL(json: val)
			}
			if let val = js["group"] as? [NSDictionary] {
				self.group = QuestionnaireGroupQuestionGroup.from(val, owner: self) as? [QuestionnaireGroupQuestionGroup]
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["options"] as? NSDictionary {
				self.options = FHIRReference(json: val, owner: self)
			}
			if let val = js["remarks"] as? String {
				self.remarks = val
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
}


/**
 *  Nested questionnaire group.
 *
 *  Nested group, containing nested question for this question. The order of groups within the question is relevant.
 */
public class QuestionnaireGroupQuestionGroup: FHIRElement
{	

}

