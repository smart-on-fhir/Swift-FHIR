//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A structured set of questions.

A structured set of questions intended to guide the collection of answers. The questions are ordered and grouped into
coherent subsets, corresponding to the structure of the grouping of the underlying questions.
*/
open class Questionnaire: DomainResource {
	override open class var resourceType: String {
		get { return "Questionnaire" }
	}
	
	/// Concept that represents the overall questionnaire.
	public var code: [Coding]?
	
	/// Date this version was authored.
	public var date: DateTime?
	
	/// External identifiers for this questionnaire.
	public var identifier: [Identifier]?
	
	/// Questions and sections within the Questionnaire.
	public var item: [QuestionnaireItem]?
	
	/// Organization/individual who designed the questionnaire.
	public var publisher: FHIRString?
	
	/// The lifecycle status of the questionnaire as a whole.
	public var status: QuestionnaireStatus?
	
	/// Resource that can be subject of QuestionnaireResponse.
	public var subjectType: [FHIRString]?
	
	/// Contact information of the publisher.
	public var telecom: [ContactPoint]?
	
	/// Name for the questionnaire.
	public var title: FHIRString?
	
	/// Globally unique logical identifier for  questionnaire.
	public var url: FHIRURL?
	
	/// Questionnaire intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical identifier for this version of Questionnaire.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: QuestionnaireStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstances(of: Coding.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		item = try createInstances(of: QuestionnaireItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		status = createEnum(type: QuestionnaireStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subjectType = try createInstances(of: FHIRString.self, for: "subjectType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subjectType
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: CodeableConcept.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "subjectType", using: self.subjectType, errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Questions and sections within the Questionnaire.

The questions and groupings of questions that make up the questionnaire.
*/
open class QuestionnaireItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItem" }
	}
	
	/// Concept that represents this item within in a questionnaire.
	public var code: [Coding]?
	
	/// ElementDefinition - details for the item.
	public var definition: FHIRURL?
	
	/// Only allow data when:.
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Default value when item is first rendered.
	public var initialAttachment: Attachment?
	
	/// Default value when item is first rendered.
	public var initialBoolean: FHIRBool?
	
	/// Default value when item is first rendered.
	public var initialCoding: Coding?
	
	/// Default value when item is first rendered.
	public var initialDate: FHIRDate?
	
	/// Default value when item is first rendered.
	public var initialDateTime: DateTime?
	
	/// Default value when item is first rendered.
	public var initialDecimal: FHIRDecimal?
	
	/// Default value when item is first rendered.
	public var initialInteger: FHIRInteger?
	
	/// Default value when item is first rendered.
	public var initialQuantity: Quantity?
	
	/// Default value when item is first rendered.
	public var initialReference: Reference?
	
	/// Default value when item is first rendered.
	public var initialString: FHIRString?
	
	/// Default value when item is first rendered.
	public var initialTime: FHIRTime?
	
	/// Default value when item is first rendered.
	public var initialUri: FHIRURL?
	
	/// Nested questionnaire items.
	public var item: [QuestionnaireItem]?
	
	/// Unique id for item in questionnaire.
	public var linkId: FHIRString?
	
	/// No more than this many characters.
	public var maxLength: FHIRInteger?
	
	/// Permitted answer.
	public var option: [QuestionnaireItemOption]?
	
	/// Valueset containing permitted answers.
	public var options: Reference?
	
	/// E.g. "1(a)", "2.5.3".
	public var prefix: FHIRString?
	
	/// Don't allow human editing.
	public var readOnly: FHIRBool?
	
	/// Whether the item may repeat.
	public var repeats: FHIRBool?
	
	/// Whether the item must be included in data results.
	public var required: FHIRBool?
	
	/// Primary text for the item.
	public var text: FHIRString?
	
	/// Identifies the type of questionnaire item this is - whether text for display, a grouping of other items or a
	/// particular type of data to be captured (string, integer, coded choice, etc.).
	public var type: QuestionnaireItemType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(linkId: FHIRString, type: QuestionnaireItemType) {
		self.init()
		self.linkId = linkId
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstances(of: Coding.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		definition = try createInstance(type: FHIRURL.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		enableWhen = try createInstances(of: QuestionnaireItemEnableWhen.self, for: "enableWhen", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enableWhen
		initialAttachment = try createInstance(type: Attachment.self, for: "initialAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialAttachment
		initialBoolean = try createInstance(type: FHIRBool.self, for: "initialBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialBoolean
		initialCoding = try createInstance(type: Coding.self, for: "initialCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialCoding
		initialDate = try createInstance(type: FHIRDate.self, for: "initialDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialDate
		initialDateTime = try createInstance(type: DateTime.self, for: "initialDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialDateTime
		initialDecimal = try createInstance(type: FHIRDecimal.self, for: "initialDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialDecimal
		initialInteger = try createInstance(type: FHIRInteger.self, for: "initialInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialInteger
		initialQuantity = try createInstance(type: Quantity.self, for: "initialQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialQuantity
		initialReference = try createInstance(type: Reference.self, for: "initialReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialReference
		initialString = try createInstance(type: FHIRString.self, for: "initialString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialString
		initialTime = try createInstance(type: FHIRTime.self, for: "initialTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialTime
		initialUri = try createInstance(type: FHIRURL.self, for: "initialUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? initialUri
		item = try createInstances(of: QuestionnaireItem.self, for: "item", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? item
		linkId = try createInstance(type: FHIRString.self, for: "linkId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? linkId
		if nil == linkId && !presentKeys.contains("linkId") {
			errors.append(FHIRValidationError(missing: "linkId"))
		}
		maxLength = try createInstance(type: FHIRInteger.self, for: "maxLength", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxLength
		option = try createInstances(of: QuestionnaireItemOption.self, for: "option", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? option
		options = try createInstance(type: Reference.self, for: "options", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? options
		prefix = try createInstance(type: FHIRString.self, for: "prefix", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prefix
		readOnly = try createInstance(type: FHIRBool.self, for: "readOnly", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? readOnly
		repeats = try createInstance(type: FHIRBool.self, for: "repeats", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? repeats
		required = try createInstance(type: FHIRBool.self, for: "required", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? required
		text = try createInstance(type: FHIRString.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		type = createEnum(type: QuestionnaireItemType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "enableWhen", using: self.enableWhen, errors: &errors)
		self.initialAttachment?.decorate(json: &json, withKey: "initialAttachment", errors: &errors)
		self.initialBoolean?.decorate(json: &json, withKey: "initialBoolean", errors: &errors)
		self.initialCoding?.decorate(json: &json, withKey: "initialCoding", errors: &errors)
		self.initialDate?.decorate(json: &json, withKey: "initialDate", errors: &errors)
		self.initialDateTime?.decorate(json: &json, withKey: "initialDateTime", errors: &errors)
		self.initialDecimal?.decorate(json: &json, withKey: "initialDecimal", errors: &errors)
		self.initialInteger?.decorate(json: &json, withKey: "initialInteger", errors: &errors)
		self.initialQuantity?.decorate(json: &json, withKey: "initialQuantity", errors: &errors)
		self.initialReference?.decorate(json: &json, withKey: "initialReference", errors: &errors)
		self.initialString?.decorate(json: &json, withKey: "initialString", errors: &errors)
		self.initialTime?.decorate(json: &json, withKey: "initialTime", errors: &errors)
		self.initialUri?.decorate(json: &json, withKey: "initialUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.linkId?.decorate(json: &json, withKey: "linkId", errors: &errors)
		if nil == self.linkId {
			errors.append(FHIRValidationError(missing: "linkId"))
		}
		self.maxLength?.decorate(json: &json, withKey: "maxLength", errors: &errors)
		arrayDecorate(json: &json, withKey: "option", using: self.option, errors: &errors)
		self.options?.decorate(json: &json, withKey: "options", errors: &errors)
		self.prefix?.decorate(json: &json, withKey: "prefix", errors: &errors)
		self.readOnly?.decorate(json: &json, withKey: "readOnly", errors: &errors)
		self.repeats?.decorate(json: &json, withKey: "repeats", errors: &errors)
		self.required?.decorate(json: &json, withKey: "required", errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Only allow data when:.

If present, indicates that this item should only be enabled (displayed/allow answers to be captured) when the specified
condition is true.
*/
open class QuestionnaireItemEnableWhen: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemEnableWhen" }
	}
	
	/// Value question must have.
	public var answerAttachment: Attachment?
	
	/// Value question must have.
	public var answerBoolean: FHIRBool?
	
	/// Value question must have.
	public var answerCoding: Coding?
	
	/// Value question must have.
	public var answerDate: FHIRDate?
	
	/// Value question must have.
	public var answerDateTime: DateTime?
	
	/// Value question must have.
	public var answerDecimal: FHIRDecimal?
	
	/// Value question must have.
	public var answerInteger: FHIRInteger?
	
	/// Value question must have.
	public var answerQuantity: Quantity?
	
	/// Value question must have.
	public var answerReference: Reference?
	
	/// Value question must have.
	public var answerString: FHIRString?
	
	/// Value question must have.
	public var answerTime: FHIRTime?
	
	/// Value question must have.
	public var answerUri: FHIRURL?
	
	/// Enable when answered or not.
	public var hasAnswer: FHIRBool?
	
	/// Question that determines whether item is enabled.
	public var question: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(question: FHIRString) {
		self.init()
		self.question = question
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		answerAttachment = try createInstance(type: Attachment.self, for: "answerAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerAttachment
		answerBoolean = try createInstance(type: FHIRBool.self, for: "answerBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerBoolean
		answerCoding = try createInstance(type: Coding.self, for: "answerCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerCoding
		answerDate = try createInstance(type: FHIRDate.self, for: "answerDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerDate
		answerDateTime = try createInstance(type: DateTime.self, for: "answerDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerDateTime
		answerDecimal = try createInstance(type: FHIRDecimal.self, for: "answerDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerDecimal
		answerInteger = try createInstance(type: FHIRInteger.self, for: "answerInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerInteger
		answerQuantity = try createInstance(type: Quantity.self, for: "answerQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerQuantity
		answerReference = try createInstance(type: Reference.self, for: "answerReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerReference
		answerString = try createInstance(type: FHIRString.self, for: "answerString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerString
		answerTime = try createInstance(type: FHIRTime.self, for: "answerTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerTime
		answerUri = try createInstance(type: FHIRURL.self, for: "answerUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? answerUri
		hasAnswer = try createInstance(type: FHIRBool.self, for: "hasAnswer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? hasAnswer
		question = try createInstance(type: FHIRString.self, for: "question", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? question
		if nil == question && !presentKeys.contains("question") {
			errors.append(FHIRValidationError(missing: "question"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.answerAttachment?.decorate(json: &json, withKey: "answerAttachment", errors: &errors)
		self.answerBoolean?.decorate(json: &json, withKey: "answerBoolean", errors: &errors)
		self.answerCoding?.decorate(json: &json, withKey: "answerCoding", errors: &errors)
		self.answerDate?.decorate(json: &json, withKey: "answerDate", errors: &errors)
		self.answerDateTime?.decorate(json: &json, withKey: "answerDateTime", errors: &errors)
		self.answerDecimal?.decorate(json: &json, withKey: "answerDecimal", errors: &errors)
		self.answerInteger?.decorate(json: &json, withKey: "answerInteger", errors: &errors)
		self.answerQuantity?.decorate(json: &json, withKey: "answerQuantity", errors: &errors)
		self.answerReference?.decorate(json: &json, withKey: "answerReference", errors: &errors)
		self.answerString?.decorate(json: &json, withKey: "answerString", errors: &errors)
		self.answerTime?.decorate(json: &json, withKey: "answerTime", errors: &errors)
		self.answerUri?.decorate(json: &json, withKey: "answerUri", errors: &errors)
		self.hasAnswer?.decorate(json: &json, withKey: "hasAnswer", errors: &errors)
		self.question?.decorate(json: &json, withKey: "question", errors: &errors)
		if nil == self.question {
			errors.append(FHIRValidationError(missing: "question"))
		}
	}
}


/**
Permitted answer.

For a "choice" question, identifies one of the permitted answers for the question.
*/
open class QuestionnaireItemOption: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemOption" }
	}
	
	/// Answer value.
	public var valueCoding: Coding?
	
	/// Answer value.
	public var valueDate: FHIRDate?
	
	/// Answer value.
	public var valueInteger: FHIRInteger?
	
	/// Answer value.
	public var valueString: FHIRString?
	
	/// Answer value.
	public var valueTime: FHIRTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}

