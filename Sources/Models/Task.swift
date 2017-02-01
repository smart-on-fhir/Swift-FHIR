//
//  Task.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Task) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A task to be performed.
*/
open class Task: DomainResource {
	override open class var resourceType: String {
		get { return "Task" }
	}
	
	/// Task Creation Date.
	public var authoredOn: DateTime?
	
	/// Request fulfilled by this task.
	public var basedOn: [Reference]?
	
	/// E.g. "Specimen collected", "IV prepped".
	public var businessStatus: CodeableConcept?
	
	/// Task Type.
	public var code: CodeableConcept?
	
	/// Healthcare event during which this task originated.
	public var context: Reference?
	
	/// Formal definition of task.
	public var definitionReference: Reference?
	
	/// Formal definition of task.
	public var definitionUri: FHIRURL?
	
	/// Human-readable explanation of task.
	public var description_fhir: FHIRString?
	
	/// Start and end time of execution.
	public var executionPeriod: Period?
	
	/// What task is acting on.
	public var focus: Reference?
	
	/// Beneficiary of the Task.
	public var for_fhir: Reference?
	
	/// Requisition or grouper id.
	public var groupIdentifier: Identifier?
	
	/// Task Instance Identifier.
	public var identifier: [Identifier]?
	
	/// Information used to perform task.
	public var input: [TaskInput]?
	
	/// Indicates the "level" of actionability associated with the Task.  I.e. Is this a proposed task, a planned task,
	/// an actionable task, etc.
	public var intent: RequestIntent?
	
	/// Task Last Modified Date.
	public var lastModified: DateTime?
	
	/// Comments made about the task.
	public var note: [Annotation]?
	
	/// Information produced as part of task.
	public var output: [TaskOutput]?
	
	/// Task Owner.
	public var owner: Reference?
	
	/// Composite task.
	public var partOf: [Reference]?
	
	/// requester | dispatcher | scheduler | performer | monitor | manager | acquirer | reviewer.
	public var performerType: [CodeableConcept]?
	
	/// Indicates how quickly the Task should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Why task is needed.
	public var reason: CodeableConcept?
	
	/// Key events in history of the Task.
	public var relevantHistory: [Reference]?
	
	/// Who is asking for task to be done.
	public var requester: TaskRequester?
	
	/// Constraints on fulfillment tasks.
	public var restriction: TaskRestriction?
	
	/// The current status of the task.
	public var status: TaskStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: RequestIntent, status: TaskStatus) {
		self.init()
		self.intent = intent
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		businessStatus = try createInstance(type: CodeableConcept.self, for: "businessStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? businessStatus
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definitionReference = try createInstance(type: Reference.self, for: "definitionReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definitionReference
		definitionUri = try createInstance(type: FHIRURL.self, for: "definitionUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definitionUri
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		executionPeriod = try createInstance(type: Period.self, for: "executionPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? executionPeriod
		focus = try createInstance(type: Reference.self, for: "focus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focus
		for_fhir = try createInstance(type: Reference.self, for: "for", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? for_fhir
		groupIdentifier = try createInstance(type: Identifier.self, for: "groupIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupIdentifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		input = try createInstances(of: TaskInput.self, for: "input", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? input
		intent = createEnum(type: RequestIntent.self, for: "intent", in: json, presentKeys: &presentKeys, errors: &errors) ?? intent
		if nil == intent && !presentKeys.contains("intent") {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		lastModified = try createInstance(type: DateTime.self, for: "lastModified", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastModified
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		output = try createInstances(of: TaskOutput.self, for: "output", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? output
		owner = try createInstance(type: Reference.self, for: "owner", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? owner
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		performerType = try createInstances(of: CodeableConcept.self, for: "performerType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performerType
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reason = try createInstance(type: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		relevantHistory = try createInstances(of: Reference.self, for: "relevantHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relevantHistory
		requester = try createInstance(type: TaskRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		restriction = try createInstance(type: TaskRestriction.self, for: "restriction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? restriction
		status = createEnum(type: TaskStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		statusReason = try createInstance(type: CodeableConcept.self, for: "statusReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusReason
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.businessStatus?.decorate(json: &json, withKey: "businessStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.definitionReference?.decorate(json: &json, withKey: "definitionReference", errors: &errors)
		self.definitionUri?.decorate(json: &json, withKey: "definitionUri", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.executionPeriod?.decorate(json: &json, withKey: "executionPeriod", errors: &errors)
		self.focus?.decorate(json: &json, withKey: "focus", errors: &errors)
		self.for_fhir?.decorate(json: &json, withKey: "for", errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "input", using: self.input, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		self.lastModified?.decorate(json: &json, withKey: "lastModified", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "output", using: self.output, errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "performerType", using: self.performerType, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.reason?.decorate(json: &json, withKey: "reason", errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.restriction?.decorate(json: &json, withKey: "restriction", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
	}
}


/**
Information used to perform task.

Additional information that may be needed in the execution of the task.
*/
open class TaskInput: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskInput" }
	}
	
	/// Label for the input.
	public var type: CodeableConcept?
	
	/// Content to use in performing the task.
	public var valueAddress: Address?
	
	/// Content to use in performing the task.
	public var valueAge: Age?
	
	/// Content to use in performing the task.
	public var valueAnnotation: Annotation?
	
	/// Content to use in performing the task.
	public var valueAttachment: Attachment?
	
	/// Content to use in performing the task.
	public var valueBase64Binary: Base64Binary?
	
	/// Content to use in performing the task.
	public var valueBoolean: FHIRBool?
	
	/// Content to use in performing the task.
	public var valueCode: FHIRString?
	
	/// Content to use in performing the task.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Content to use in performing the task.
	public var valueCoding: Coding?
	
	/// Content to use in performing the task.
	public var valueContactPoint: ContactPoint?
	
	/// Content to use in performing the task.
	public var valueCount: Count?
	
	/// Content to use in performing the task.
	public var valueDate: FHIRDate?
	
	/// Content to use in performing the task.
	public var valueDateTime: DateTime?
	
	/// Content to use in performing the task.
	public var valueDecimal: FHIRDecimal?
	
	/// Content to use in performing the task.
	public var valueDistance: Distance?
	
	/// Content to use in performing the task.
	public var valueDuration: Duration?
	
	/// Content to use in performing the task.
	public var valueHumanName: HumanName?
	
	/// Content to use in performing the task.
	public var valueId: FHIRString?
	
	/// Content to use in performing the task.
	public var valueIdentifier: Identifier?
	
	/// Content to use in performing the task.
	public var valueInstant: Instant?
	
	/// Content to use in performing the task.
	public var valueInteger: FHIRInteger?
	
	/// Content to use in performing the task.
	public var valueMarkdown: FHIRString?
	
	/// Content to use in performing the task.
	public var valueMeta: Meta?
	
	/// Content to use in performing the task.
	public var valueMoney: Money?
	
	/// Content to use in performing the task.
	public var valueOid: FHIRURL?
	
	/// Content to use in performing the task.
	public var valuePeriod: Period?
	
	/// Content to use in performing the task.
	public var valuePositiveInt: FHIRInteger?
	
	/// Content to use in performing the task.
	public var valueQuantity: Quantity?
	
	/// Content to use in performing the task.
	public var valueRange: Range?
	
	/// Content to use in performing the task.
	public var valueRatio: Ratio?
	
	/// Content to use in performing the task.
	public var valueReference: Reference?
	
	/// Content to use in performing the task.
	public var valueSampledData: SampledData?
	
	/// Content to use in performing the task.
	public var valueSignature: Signature?
	
	/// Content to use in performing the task.
	public var valueString: FHIRString?
	
	/// Content to use in performing the task.
	public var valueTime: FHIRTime?
	
	/// Content to use in performing the task.
	public var valueTiming: Timing?
	
	/// Content to use in performing the task.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Content to use in performing the task.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRString {
			self.valueMarkdown = value
		}
		else if let value = value as? FHIRURL {
			self.valueOid = value
		}
		else if let value = value as? FHIRInteger {
			self.valuePositiveInt = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRInteger {
			self.valueUnsignedInt = value
		}
		else if let value = value as? FHIRURL {
			self.valueUri = value
		}
		else if let value = value as? Address {
			self.valueAddress = value
		}
		else if let value = value as? Age {
			self.valueAge = value
		}
		else if let value = value as? Annotation {
			self.valueAnnotation = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		}
		else if let value = value as? Count {
			self.valueCount = value
		}
		else if let value = value as? Distance {
			self.valueDistance = value
		}
		else if let value = value as? Duration {
			self.valueDuration = value
		}
		else if let value = value as? HumanName {
			self.valueHumanName = value
		}
		else if let value = value as? Identifier {
			self.valueIdentifier = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else if let value = value as? Period {
			self.valuePeriod = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else if let value = value as? Ratio {
			self.valueRatio = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else if let value = value as? SampledData {
			self.valueSampledData = value
		}
		else if let value = value as? Signature {
			self.valueSignature = value
		}
		else if let value = value as? Timing {
			self.valueTiming = value
		}
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		valueAddress = try createInstance(type: Address.self, for: "valueAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAddress
		valueAge = try createInstance(type: Age.self, for: "valueAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAge
		valueAnnotation = try createInstance(type: Annotation.self, for: "valueAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAnnotation
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueBase64Binary = try createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBase64Binary
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueContactPoint = try createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueContactPoint
		valueCount = try createInstance(type: Count.self, for: "valueCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCount
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueDistance = try createInstance(type: Distance.self, for: "valueDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDistance
		valueDuration = try createInstance(type: Duration.self, for: "valueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDuration
		valueHumanName = try createInstance(type: HumanName.self, for: "valueHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueHumanName
		valueId = try createInstance(type: FHIRString.self, for: "valueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueId
		valueIdentifier = try createInstance(type: Identifier.self, for: "valueIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueIdentifier
		valueInstant = try createInstance(type: Instant.self, for: "valueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInstant
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueMarkdown = try createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMarkdown
		valueMeta = try createInstance(type: Meta.self, for: "valueMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMeta
		valueMoney = try createInstance(type: Money.self, for: "valueMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMoney
		valueOid = try createInstance(type: FHIRURL.self, for: "valueOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueOid
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valuePositiveInt = try createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePositiveInt
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueSignature = try createInstance(type: Signature.self, for: "valueSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSignature
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		valueTiming = try createInstance(type: Timing.self, for: "valueTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTiming
		valueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUnsignedInt
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.valueAddress?.decorate(json: &json, withKey: "valueAddress", errors: &errors)
		self.valueAge?.decorate(json: &json, withKey: "valueAge", errors: &errors)
		self.valueAnnotation?.decorate(json: &json, withKey: "valueAnnotation", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMeta?.decorate(json: &json, withKey: "valueMeta", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Information produced as part of task.

Outputs produced by the Task.
*/
open class TaskOutput: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskOutput" }
	}
	
	/// Label for output.
	public var type: CodeableConcept?
	
	/// Result of output.
	public var valueAddress: Address?
	
	/// Result of output.
	public var valueAge: Age?
	
	/// Result of output.
	public var valueAnnotation: Annotation?
	
	/// Result of output.
	public var valueAttachment: Attachment?
	
	/// Result of output.
	public var valueBase64Binary: Base64Binary?
	
	/// Result of output.
	public var valueBoolean: FHIRBool?
	
	/// Result of output.
	public var valueCode: FHIRString?
	
	/// Result of output.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Result of output.
	public var valueCoding: Coding?
	
	/// Result of output.
	public var valueContactPoint: ContactPoint?
	
	/// Result of output.
	public var valueCount: Count?
	
	/// Result of output.
	public var valueDate: FHIRDate?
	
	/// Result of output.
	public var valueDateTime: DateTime?
	
	/// Result of output.
	public var valueDecimal: FHIRDecimal?
	
	/// Result of output.
	public var valueDistance: Distance?
	
	/// Result of output.
	public var valueDuration: Duration?
	
	/// Result of output.
	public var valueHumanName: HumanName?
	
	/// Result of output.
	public var valueId: FHIRString?
	
	/// Result of output.
	public var valueIdentifier: Identifier?
	
	/// Result of output.
	public var valueInstant: Instant?
	
	/// Result of output.
	public var valueInteger: FHIRInteger?
	
	/// Result of output.
	public var valueMarkdown: FHIRString?
	
	/// Result of output.
	public var valueMeta: Meta?
	
	/// Result of output.
	public var valueMoney: Money?
	
	/// Result of output.
	public var valueOid: FHIRURL?
	
	/// Result of output.
	public var valuePeriod: Period?
	
	/// Result of output.
	public var valuePositiveInt: FHIRInteger?
	
	/// Result of output.
	public var valueQuantity: Quantity?
	
	/// Result of output.
	public var valueRange: Range?
	
	/// Result of output.
	public var valueRatio: Ratio?
	
	/// Result of output.
	public var valueReference: Reference?
	
	/// Result of output.
	public var valueSampledData: SampledData?
	
	/// Result of output.
	public var valueSignature: Signature?
	
	/// Result of output.
	public var valueString: FHIRString?
	
	/// Result of output.
	public var valueTime: FHIRTime?
	
	/// Result of output.
	public var valueTiming: Timing?
	
	/// Result of output.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Result of output.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRString {
			self.valueMarkdown = value
		}
		else if let value = value as? FHIRURL {
			self.valueOid = value
		}
		else if let value = value as? FHIRInteger {
			self.valuePositiveInt = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRInteger {
			self.valueUnsignedInt = value
		}
		else if let value = value as? FHIRURL {
			self.valueUri = value
		}
		else if let value = value as? Address {
			self.valueAddress = value
		}
		else if let value = value as? Age {
			self.valueAge = value
		}
		else if let value = value as? Annotation {
			self.valueAnnotation = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		}
		else if let value = value as? Count {
			self.valueCount = value
		}
		else if let value = value as? Distance {
			self.valueDistance = value
		}
		else if let value = value as? Duration {
			self.valueDuration = value
		}
		else if let value = value as? HumanName {
			self.valueHumanName = value
		}
		else if let value = value as? Identifier {
			self.valueIdentifier = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else if let value = value as? Period {
			self.valuePeriod = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else if let value = value as? Ratio {
			self.valueRatio = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else if let value = value as? SampledData {
			self.valueSampledData = value
		}
		else if let value = value as? Signature {
			self.valueSignature = value
		}
		else if let value = value as? Timing {
			self.valueTiming = value
		}
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		valueAddress = try createInstance(type: Address.self, for: "valueAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAddress
		valueAge = try createInstance(type: Age.self, for: "valueAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAge
		valueAnnotation = try createInstance(type: Annotation.self, for: "valueAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAnnotation
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueBase64Binary = try createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBase64Binary
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueContactPoint = try createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueContactPoint
		valueCount = try createInstance(type: Count.self, for: "valueCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCount
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueDistance = try createInstance(type: Distance.self, for: "valueDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDistance
		valueDuration = try createInstance(type: Duration.self, for: "valueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDuration
		valueHumanName = try createInstance(type: HumanName.self, for: "valueHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueHumanName
		valueId = try createInstance(type: FHIRString.self, for: "valueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueId
		valueIdentifier = try createInstance(type: Identifier.self, for: "valueIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueIdentifier
		valueInstant = try createInstance(type: Instant.self, for: "valueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInstant
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueMarkdown = try createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMarkdown
		valueMeta = try createInstance(type: Meta.self, for: "valueMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMeta
		valueMoney = try createInstance(type: Money.self, for: "valueMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMoney
		valueOid = try createInstance(type: FHIRURL.self, for: "valueOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueOid
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valuePositiveInt = try createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePositiveInt
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueSignature = try createInstance(type: Signature.self, for: "valueSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSignature
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		valueTiming = try createInstance(type: Timing.self, for: "valueTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTiming
		valueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUnsignedInt
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.valueAddress?.decorate(json: &json, withKey: "valueAddress", errors: &errors)
		self.valueAge?.decorate(json: &json, withKey: "valueAge", errors: &errors)
		self.valueAnnotation?.decorate(json: &json, withKey: "valueAnnotation", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMeta?.decorate(json: &json, withKey: "valueMeta", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Who is asking for task to be done.

The creator of the task.
*/
open class TaskRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskRequester" }
	}
	
	/// Individual asking for task.
	public var agent: Reference?
	
	/// Organization individual is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstance(type: Reference.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if nil == agent && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.agent?.decorate(json: &json, withKey: "agent", errors: &errors)
		if nil == self.agent {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}


/**
Constraints on fulfillment tasks.

If the Task.focus is a request resource and the task is seeking fulfillment (i.e is asking for the request to be
actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
*/
open class TaskRestriction: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskRestriction" }
	}
	
	/// When fulfillment sought.
	public var period: Period?
	
	/// For whom is fulfillment sought?.
	public var recipient: [Reference]?
	
	/// How many times to repeat.
	public var repetitions: FHIRInteger?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		repetitions = try createInstance(type: FHIRInteger.self, for: "repetitions", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? repetitions
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.repetitions?.decorate(json: &json, withKey: "repetitions", errors: &errors)
	}
}

