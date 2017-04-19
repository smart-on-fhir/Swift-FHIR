//
//  QuestionnaireResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A structured set of questions and their answers.

A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
corresponding to the structure of the grouping of the questionnaire being responded to.
*/
open class QuestionnaireResponse: DomainResource {
	override open class var resourceType: String {
		get { return "QuestionnaireResponse" }
	}
	
	/// Person who received and recorded the answers.
	public var author: Reference?
	
	/// Date the answers were gathered.
	public var authored: DateTime?
	
	/// Request fulfilled by this QuestionnaireResponse.
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
	
	/// The position of the questionnaire response within its overall lifecycle.
	public var status: QuestionnaireResponseStatus?
	
	/// The subject of the questions.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: QuestionnaireResponseStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		authored = createInstance(type: DateTime.self, for: "authored", in: json, context: &instCtx, owner: self) ?? authored
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		item = createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		parent = createInstances(of: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		questionnaire = createInstance(type: Reference.self, for: "questionnaire", in: json, context: &instCtx, owner: self) ?? questionnaire
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createEnum(type: QuestionnaireResponseStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.authored?.decorate(json: &json, withKey: "authored", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		arrayDecorate(json: &json, withKey: "parent", using: self.parent, errors: &errors)
		self.questionnaire?.decorate(json: &json, withKey: "questionnaire", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Groups and questions.

A group or question item from the original questionnaire for which answers are provided.
*/
open class QuestionnaireResponseItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireResponseItem" }
	}
	
	/// The response(s) to the question.
	public var answer: [QuestionnaireResponseItemAnswer]?
	
	/// ElementDefinition - details for the item.
	public var definition: FHIRURL?
	
	/// Nested questionnaire response items.
	public var item: [QuestionnaireResponseItem]?
	
	/// Pointer to specific item from Questionnaire.
	public var linkId: FHIRString?
	
	/// The subject this group's answers are about.
	public var subject: Reference?
	
	/// Name for group or question text.
	public var text: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(linkId: FHIRString) {
		self.init()
		self.linkId = linkId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		answer = createInstances(of: QuestionnaireResponseItemAnswer.self, for: "answer", in: json, context: &instCtx, owner: self) ?? answer
		definition = createInstance(type: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		item = createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		linkId = createInstance(type: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		if nil == linkId && !instCtx.containsKey("linkId") {
			instCtx.addError(FHIRValidationError(missing: "linkId"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "answer", using: self.answer, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.linkId?.decorate(json: &json, withKey: "linkId", errors: &errors)
		if nil == self.linkId {
			errors.append(FHIRValidationError(missing: "linkId"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}


/**
The response(s) to the question.

The respondent's answer(s) to the question.
*/
open class QuestionnaireResponseItemAnswer: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireResponseItemAnswer" }
	}
	
	/// Nested groups and questions.
	public var item: [QuestionnaireResponseItem]?
	
	/// Single-valued answer to the question.
	public var valueAttachment: Attachment?
	
	/// Single-valued answer to the question.
	public var valueBoolean: FHIRBool?
	
	/// Single-valued answer to the question.
	public var valueCoding: Coding?
	
	/// Single-valued answer to the question.
	public var valueDate: FHIRDate?
	
	/// Single-valued answer to the question.
	public var valueDateTime: DateTime?
	
	/// Single-valued answer to the question.
	public var valueDecimal: FHIRDecimal?
	
	/// Single-valued answer to the question.
	public var valueInteger: FHIRInteger?
	
	/// Single-valued answer to the question.
	public var valueQuantity: Quantity?
	
	/// Single-valued answer to the question.
	public var valueReference: Reference?
	
	/// Single-valued answer to the question.
	public var valueString: FHIRString?
	
	/// Single-valued answer to the question.
	public var valueTime: FHIRTime?
	
	/// Single-valued answer to the question.
	public var valueUri: FHIRURL?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		item = createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
	}
}

