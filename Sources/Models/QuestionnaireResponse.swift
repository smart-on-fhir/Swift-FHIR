//
//  QuestionnaireResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A structured set of questions and their answers.

A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
corresponding to the structure of the grouping of the underlying questions.
*/
open class QuestionnaireResponse: DomainResource {
	override open class var resourceType: String {
		get { return "QuestionnaireResponse" }
	}
	
	/// Person who received and recorded the answers.
	public var author: Reference?
	
	/// Date this version was authored.
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
	
	/// The lifecycle status of the questionnaire response as a whole.
	public var status: QuestionnaireResponseStatus?
	
	/// The subject of the questions.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: QuestionnaireResponseStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstance(type: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		authored = try createInstance(type: DateTime.self, for: "authored", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authored
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		item = try createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		parent = try createInstances(of: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		questionnaire = try createInstance(type: Reference.self, for: "questionnaire", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? questionnaire
		source = try createInstance(type: Reference.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		status = createEnum(type: QuestionnaireResponseStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
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

Corresponds to a group or question item from the original questionnaire.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		answer = try createInstances(of: QuestionnaireResponseItemAnswer.self, for: "answer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answer
		definition = try createInstance(type: FHIRURL.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		item = try createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		linkId = try createInstance(type: FHIRString.self, for: "linkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? linkId
		if nil == linkId && !presentKeys.contains("linkId") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "linkId"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		item = try createInstances(of: QuestionnaireResponseItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		return errors.isEmpty ? nil : errors
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

