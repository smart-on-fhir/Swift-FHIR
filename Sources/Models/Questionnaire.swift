//
//  Questionnaire.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Questionnaire) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A structured set of questions.

A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
*/
open class Questionnaire: DomainResource {
	override open class var resourceType: String {
		get { return "Questionnaire" }
	}
	
	/// When the questionnaire was approved by publisher.
	public var approvalDate: FHIRDate?
	
	/// Concept that represents the overall questionnaire.
	public var code: [Coding]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// Instantiates protocol or definition.
	public var derivedFrom: [FHIRURL]?
	
	/// Natural language description of the questionnaire.
	public var description_fhir: FHIRString?
	
	/// When the questionnaire is expected to be used.
	public var effectivePeriod: Period?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the questionnaire.
	public var identifier: [Identifier]?
	
	/// Questions and sections within the Questionnaire.
	public var item: [QuestionnaireItem]?
	
	/// Intended jurisdiction for questionnaire (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// When the questionnaire was last reviewed.
	public var lastReviewDate: FHIRDate?
	
	/// Name for this questionnaire (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// Why this questionnaire is defined.
	public var purpose: FHIRString?
	
	/// The status of this questionnaire. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// The types of subjects that can be the subject of responses created for the questionnaire.
	public var subjectType: [ResourceType]?
	
	/// Name for this questionnaire (human friendly).
	public var title: FHIRString?
	
	/// Canonical identifier for this questionnaire, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the questionnaire.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		approvalDate = createInstance(type: FHIRDate.self, for: "approvalDate", in: json, context: &instCtx, owner: self) ?? approvalDate
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		derivedFrom = createInstances(of: FHIRURL.self, for: "derivedFrom", in: json, context: &instCtx, owner: self) ?? derivedFrom
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		item = createInstances(of: QuestionnaireItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		lastReviewDate = createInstance(type: FHIRDate.self, for: "lastReviewDate", in: json, context: &instCtx, owner: self) ?? lastReviewDate
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subjectType = createEnums(of: ResourceType.self, for: "subjectType", in: json, context: &instCtx) ?? subjectType
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.approvalDate?.decorate(json: &json, withKey: "approvalDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "derivedFrom", using: self.derivedFrom, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.lastReviewDate?.decorate(json: &json, withKey: "lastReviewDate", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "subjectType", using: self.subjectType, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
Questions and sections within the Questionnaire.

A particular question, question grouping or display text that is part of the questionnaire.
*/
open class QuestionnaireItem: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItem" }
	}
	
	/// Permitted answer.
	public var answerOption: [QuestionnaireItemAnswerOption]?
	
	/// Valueset containing permitted answers.
	public var answerValueSet: FHIRURL?
	
	/// Corresponding concept for this item in a terminology.
	public var code: [Coding]?
	
	/// ElementDefinition - details for the item.
	public var definition: FHIRURL?
	
	/// Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
	public var enableBehavior: EnableWhenBehavior?
	
	/// Only allow data when.
	public var enableWhen: [QuestionnaireItemEnableWhen]?
	
	/// Initial value(s) when item is first rendered.
	public var initial: [QuestionnaireItemInitial]?
	
	/// Nested questionnaire items.
	public var item: [QuestionnaireItem]?
	
	/// Unique id for item in questionnaire.
	public var linkId: FHIRString?
	
	/// No more than this many characters.
	public var maxLength: FHIRInteger?
	
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
	
	/// The type of questionnaire item this is - whether text for display, a grouping of other items or a particular
	/// type of data to be captured (string, integer, coded choice, etc.).
	public var type: QuestionnaireItemType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(linkId: FHIRString, type: QuestionnaireItemType) {
		self.init()
		self.linkId = linkId
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		answerOption = createInstances(of: QuestionnaireItemAnswerOption.self, for: "answerOption", in: json, context: &instCtx, owner: self) ?? answerOption
		answerValueSet = createInstance(type: FHIRURL.self, for: "answerValueSet", in: json, context: &instCtx, owner: self) ?? answerValueSet
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		definition = createInstance(type: FHIRURL.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		enableBehavior = createEnum(type: EnableWhenBehavior.self, for: "enableBehavior", in: json, context: &instCtx) ?? enableBehavior
		enableWhen = createInstances(of: QuestionnaireItemEnableWhen.self, for: "enableWhen", in: json, context: &instCtx, owner: self) ?? enableWhen
		initial = createInstances(of: QuestionnaireItemInitial.self, for: "initial", in: json, context: &instCtx, owner: self) ?? initial
		item = createInstances(of: QuestionnaireItem.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		linkId = createInstance(type: FHIRString.self, for: "linkId", in: json, context: &instCtx, owner: self) ?? linkId
		if nil == linkId && !instCtx.containsKey("linkId") {
			instCtx.addError(FHIRValidationError(missing: "linkId"))
		}
		maxLength = createInstance(type: FHIRInteger.self, for: "maxLength", in: json, context: &instCtx, owner: self) ?? maxLength
		prefix = createInstance(type: FHIRString.self, for: "prefix", in: json, context: &instCtx, owner: self) ?? prefix
		readOnly = createInstance(type: FHIRBool.self, for: "readOnly", in: json, context: &instCtx, owner: self) ?? readOnly
		repeats = createInstance(type: FHIRBool.self, for: "repeats", in: json, context: &instCtx, owner: self) ?? repeats
		required = createInstance(type: FHIRBool.self, for: "required", in: json, context: &instCtx, owner: self) ?? required
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		type = createEnum(type: QuestionnaireItemType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "answerOption", using: self.answerOption, errors: &errors)
		self.answerValueSet?.decorate(json: &json, withKey: "answerValueSet", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		self.enableBehavior?.decorate(json: &json, withKey: "enableBehavior", errors: &errors)
		arrayDecorate(json: &json, withKey: "enableWhen", using: self.enableWhen, errors: &errors)
		arrayDecorate(json: &json, withKey: "initial", using: self.initial, errors: &errors)
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
		self.linkId?.decorate(json: &json, withKey: "linkId", errors: &errors)
		if nil == self.linkId {
			errors.append(FHIRValidationError(missing: "linkId"))
		}
		self.maxLength?.decorate(json: &json, withKey: "maxLength", errors: &errors)
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
Permitted answer.

One of the permitted answers for a "choice" or "open-choice" question.
*/
open class QuestionnaireItemAnswerOption: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemAnswerOption" }
	}
	
	/// Whether option is selected by default.
	public var initialSelected: FHIRBool?
	
	/// Answer value.
	public var valueCoding: Coding?
	
	/// Answer value.
	public var valueDate: FHIRDate?
	
	/// Answer value.
	public var valueInteger: FHIRInteger?
	
	/// Answer value.
	public var valueReference: Reference?
	
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
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		initialSelected = createInstance(type: FHIRBool.self, for: "initialSelected", in: json, context: &instCtx, owner: self) ?? initialSelected
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding && nil == self.valueReference {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.initialSelected?.decorate(json: &json, withKey: "initialSelected", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueInteger && nil == self.valueDate && nil == self.valueTime && nil == self.valueString && nil == self.valueCoding && nil == self.valueReference {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Only allow data when.

A constraint indicating that this item should only be enabled (displayed/allow answers to be captured) when the
specified condition is true.
*/
open class QuestionnaireItemEnableWhen: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemEnableWhen" }
	}
	
	/// Value for question comparison based on operator.
	public var answerBoolean: FHIRBool?
	
	/// Value for question comparison based on operator.
	public var answerCoding: Coding?
	
	/// Value for question comparison based on operator.
	public var answerDate: FHIRDate?
	
	/// Value for question comparison based on operator.
	public var answerDateTime: DateTime?
	
	/// Value for question comparison based on operator.
	public var answerDecimal: FHIRDecimal?
	
	/// Value for question comparison based on operator.
	public var answerInteger: FHIRInteger?
	
	/// Value for question comparison based on operator.
	public var answerQuantity: Quantity?
	
	/// Value for question comparison based on operator.
	public var answerReference: Reference?
	
	/// Value for question comparison based on operator.
	public var answerString: FHIRString?
	
	/// Value for question comparison based on operator.
	public var answerTime: FHIRTime?
	
	/// Specifies the criteria by which the question is enabled.
	public var operator_fhir: QuestionnaireItemOperator?
	
	/// Question that determines whether item is enabled.
	public var question: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(answer: Any, operator_fhir: QuestionnaireItemOperator, question: FHIRString) {
		self.init()
		if let value = answer as? FHIRBool {
			self.answerBoolean = value
		}
		else if let value = answer as? FHIRDecimal {
			self.answerDecimal = value
		}
		else if let value = answer as? FHIRInteger {
			self.answerInteger = value
		}
		else if let value = answer as? FHIRDate {
			self.answerDate = value
		}
		else if let value = answer as? DateTime {
			self.answerDateTime = value
		}
		else if let value = answer as? FHIRTime {
			self.answerTime = value
		}
		else if let value = answer as? FHIRString {
			self.answerString = value
		}
		else if let value = answer as? Coding {
			self.answerCoding = value
		}
		else if let value = answer as? Quantity {
			self.answerQuantity = value
		}
		else if let value = answer as? Reference {
			self.answerReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: answer))” for property “\(answer)” is invalid, ignoring")
		}
		self.operator_fhir = operator_fhir
		self.question = question
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
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
		operator_fhir = createEnum(type: QuestionnaireItemOperator.self, for: "operator", in: json, context: &instCtx) ?? operator_fhir
		if nil == operator_fhir && !instCtx.containsKey("operator") {
			instCtx.addError(FHIRValidationError(missing: "operator"))
		}
		question = createInstance(type: FHIRString.self, for: "question", in: json, context: &instCtx, owner: self) ?? question
		if nil == question && !instCtx.containsKey("question") {
			instCtx.addError(FHIRValidationError(missing: "question"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.answerBoolean && nil == self.answerDecimal && nil == self.answerInteger && nil == self.answerDate && nil == self.answerDateTime && nil == self.answerTime && nil == self.answerString && nil == self.answerCoding && nil == self.answerQuantity && nil == self.answerReference {
			instCtx.addError(FHIRValidationError(missing: "answer[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
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
		self.operator_fhir?.decorate(json: &json, withKey: "operator", errors: &errors)
		if nil == self.operator_fhir {
			errors.append(FHIRValidationError(missing: "operator"))
		}
		self.question?.decorate(json: &json, withKey: "question", errors: &errors)
		if nil == self.question {
			errors.append(FHIRValidationError(missing: "question"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.answerBoolean && nil == self.answerDecimal && nil == self.answerInteger && nil == self.answerDate && nil == self.answerDateTime && nil == self.answerTime && nil == self.answerString && nil == self.answerCoding && nil == self.answerQuantity && nil == self.answerReference {
			errors.append(FHIRValidationError(missing: "answer[x]"))
		}
	}
}


/**
Initial value(s) when item is first rendered.

One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user input.
*/
open class QuestionnaireItemInitial: BackboneElement {
	override open class var resourceType: String {
		get { return "QuestionnaireItemInitial" }
	}
	
	/// Actual value for initializing the question.
	public var valueAttachment: Attachment?
	
	/// Actual value for initializing the question.
	public var valueBoolean: FHIRBool?
	
	/// Actual value for initializing the question.
	public var valueCoding: Coding?
	
	/// Actual value for initializing the question.
	public var valueDate: FHIRDate?
	
	/// Actual value for initializing the question.
	public var valueDateTime: DateTime?
	
	/// Actual value for initializing the question.
	public var valueDecimal: FHIRDecimal?
	
	/// Actual value for initializing the question.
	public var valueInteger: FHIRInteger?
	
	/// Actual value for initializing the question.
	public var valueQuantity: Quantity?
	
	/// Actual value for initializing the question.
	public var valueReference: Reference?
	
	/// Actual value for initializing the question.
	public var valueString: FHIRString?
	
	/// Actual value for initializing the question.
	public var valueTime: FHIRTime?
	
	/// Actual value for initializing the question.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(value: Any) {
		self.init()
		if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRURL {
			self.valueUri = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
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
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBoolean && nil == self.valueDecimal && nil == self.valueInteger && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueTime && nil == self.valueString && nil == self.valueUri && nil == self.valueAttachment && nil == self.valueCoding && nil == self.valueQuantity && nil == self.valueReference {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
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
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBoolean && nil == self.valueDecimal && nil == self.valueInteger && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueTime && nil == self.valueString && nil == self.valueUri && nil == self.valueAttachment && nil == self.valueCoding && nil == self.valueQuantity && nil == self.valueReference {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}

