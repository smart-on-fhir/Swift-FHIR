//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2017-02-24.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		item = createInstances(of: QuestionnaireItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		status = createEnum(type: QuestionnaireStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectType = createInstances(of: FHIRString.self, for: "subjectType", in: json, context: &instCtx, owner: self) ?? subjectType
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: CodeableConcept.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
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
	
	/// Corresponding Concept for this item in a terminology.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		definition = createInstance(type: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		enableWhen = createInstances(of: QuestionnaireItemEnableWhen.self, for: "enableWhen", in: json, context: &instCtx, owner: self) ?? enableWhen
		initialAttachment = createInstance(type: Attachment.self, for: "initialAttachment", in: json, context: &instCtx, owner: self) ?? initialAttachment
		initialBoolean = createInstance(type: FHIRBool.self, for: "initialBoolean", in: json, context: &instCtx, owner: self) ?? initialBoolean
		initialCoding = createInstance(type: Coding.self, for: "initialCoding", in: json, context: &instCtx, owner: self) ?? initialCoding
		initialDate = createInstance(type: FHIRDate.self, for: "initialDate", in: json, context: &instCtx, owner: self) ?? initialDate
		initialDateTime = createInstance(type: DateTime.self, for: "initialDateTime", in: json, context: &instCtx, owner: self) ?? initialDateTime
		initialDecimal = createInstance(type: FHIRDecimal.self, for: "initialDecimal", in: json, context: &instCtx, owner: self) ?? initialDecimal
		initialInteger = createInstance(type: FHIRInteger.self, for: "initialInteger", in: json, context: &instCtx, owner: self) ?? initialInteger
		initialQuantity = createInstance(type: Quantity.self, for: "initialQuantity", in: json, context: &instCtx, owner: self) ?? initialQuantity
		initialReference = createInstance(type: Reference.self, for: "initialReference", in: json, context: &instCtx, owner: self) ?? initialReference
		initialString = createInstance(type: FHIRString.self, for: "initialString", in: json, context: &instCtx, owner: self) ?? initialString
		initialTime = createInstance(type: FHIRTime.self, for: "initialTime", in: json, context: &instCtx, owner: self) ?? initialTime
		initialUri = createInstance(type: FHIRURL.self, for: "initialUri", in: json, context: &instCtx, owner: self) ?? initialUri
		item = createInstances(of: QuestionnaireItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		linkId = createInstance(type: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		if nil == linkId && !instCtx.containsKey("linkId") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "linkId"))
		}
		maxLength = createInstance(type: FHIRInteger.self, for: "maxLength", in: json, context: &instCtx, owner: self) ?? maxLength
		option = createInstances(of: QuestionnaireItemOption.self, for: "option", in: json, context: &instCtx, owner: self) ?? option
		options = createInstance(type: Reference.self, for: "options", in: json, context: &instCtx, owner: self) ?? options
		prefix = createInstance(type: FHIRString.self, for: "prefix", in: json, context: &instCtx, owner: self) ?? prefix
		readOnly = createInstance(type: FHIRBool.self, for: "readOnly", in: json, context: &instCtx, owner: self) ?? readOnly
		repeats = createInstance(type: FHIRBool.self, for: "repeats", in: json, context: &instCtx, owner: self) ?? repeats
		required = createInstance(type: FHIRBool.self, for: "required", in: json, context: &instCtx, owner: self) ?? required
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createEnum(type: QuestionnaireItemType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		answerAttachment = createInstance(type: Attachment.self, for: "answerAttachment", in: json, context: &instCtx, owner: self) ?? answerAttachment
		answerBoolean = createInstance(type: FHIRBool.self, for: "answerBoolean", in: json, context: &instCtx, owner: self) ?? answerBoolean
		answerCoding = createInstance(type: Coding.self, for: "answerCoding", in: json, context: &instCtx, owner: self) ?? answerCoding
		answerDate = createInstance(type: FHIRDate.self, for: "answerDate", in: json, context: &instCtx, owner: self) ?? answerDate
		answerDateTime = createInstance(type: DateTime.self, for: "answerDateTime", in: json, context: &instCtx, owner: self) ?? answerDateTime
		answerDecimal = createInstance(type: FHIRDecimal.self, for: "answerDecimal", in: json, context: &instCtx, owner: self) ?? answerDecimal
		answerInteger = createInstance(type: FHIRInteger.self, for: "answerInteger", in: json, context: &instCtx, owner: self) ?? answerInteger
		answerQuantity = createInstance(type: Quantity.self, for: "answerQuantity", in: json, context: &instCtx, owner: self) ?? answerQuantity
		answerReference = createInstance(type: Reference.self, for: "answerReference", in: json, context: &instCtx, owner: self) ?? answerReference
		answerString = createInstance(type: FHIRString.self, for: "answerString", in: json, context: &instCtx, owner: self) ?? answerString
		answerTime = createInstance(type: FHIRTime.self, for: "answerTime", in: json, context: &instCtx, owner: self) ?? answerTime
		answerUri = createInstance(type: FHIRURL.self, for: "answerUri", in: json, context: &instCtx, owner: self) ?? answerUri
		hasAnswer = createInstance(type: FHIRBool.self, for: "hasAnswer", in: json, context: &instCtx, owner: self) ?? hasAnswer
		question = createInstance(type: FHIRString.self, for: "question", in: json, context: &instCtx, owner: self) ?? question
		if nil == question && !instCtx.containsKey("question") && !_isSummaryResource {
			instCtx.addError(FHIRValidationError(missing: "question"))
		}
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
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

