//
//  Task.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Task) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Human-readable explanation of task.
	public var description_fhir: FHIRString?
	
	/// Healthcare event during which this task originated.
	public var encounter: Reference?
	
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
	
	/// Formal definition of task.
	public var instantiatesCanonical: FHIRURL?
	
	/// Formal definition of task.
	public var instantiatesUri: FHIRURL?
	
	/// Associated insurance coverage.
	public var insurance: [Reference]?
	
	/// unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option.
	public var intent: FHIRString?
	
	/// Task Last Modified Date.
	public var lastModified: DateTime?
	
	/// Where task occurs.
	public var location: Reference?
	
	/// Comments made about the task.
	public var note: [Annotation]?
	
	/// Information produced as part of task.
	public var output: [TaskOutput]?
	
	/// Responsible individual.
	public var owner: Reference?
	
	/// Composite task.
	public var partOf: [Reference]?
	
	/// Requested performer.
	public var performerType: [CodeableConcept]?
	
	/// Indicates how quickly the Task should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Why task is needed.
	public var reasonCode: CodeableConcept?
	
	/// Why task is needed.
	public var reasonReference: Reference?
	
	/// Key events in history of the Task.
	public var relevantHistory: [Reference]?
	
	/// Who is asking for task to be done.
	public var requester: Reference?
	
	/// Constraints on fulfillment tasks.
	public var restriction: TaskRestriction?
	
	/// The current status of the task.
	public var status: TaskStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: FHIRString, status: TaskStatus) {
		self.init()
		self.intent = intent
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		businessStatus = createInstance(type: CodeableConcept.self, for: "businessStatus", in: json, context: &instCtx, owner: self) ?? businessStatus
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		executionPeriod = createInstance(type: Period.self, for: "executionPeriod", in: json, context: &instCtx, owner: self) ?? executionPeriod
		focus = createInstance(type: Reference.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		for_fhir = createInstance(type: Reference.self, for: "for", in: json, context: &instCtx, owner: self) ?? for_fhir
		groupIdentifier = createInstance(type: Identifier.self, for: "groupIdentifier", in: json, context: &instCtx, owner: self) ?? groupIdentifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		input = createInstances(of: TaskInput.self, for: "input", in: json, context: &instCtx, owner: self) ?? input
		instantiatesCanonical = createInstance(type: FHIRURL.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstance(type: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		insurance = createInstances(of: Reference.self, for: "insurance", in: json, context: &instCtx, owner: self) ?? insurance
		intent = createInstance(type: FHIRString.self, for: "intent", in: json, context: &instCtx, owner: self) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		lastModified = createInstance(type: DateTime.self, for: "lastModified", in: json, context: &instCtx, owner: self) ?? lastModified
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		output = createInstances(of: TaskOutput.self, for: "output", in: json, context: &instCtx, owner: self) ?? output
		owner = createInstance(type: Reference.self, for: "owner", in: json, context: &instCtx, owner: self) ?? owner
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		performerType = createInstances(of: CodeableConcept.self, for: "performerType", in: json, context: &instCtx, owner: self) ?? performerType
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstance(type: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstance(type: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		relevantHistory = createInstances(of: Reference.self, for: "relevantHistory", in: json, context: &instCtx, owner: self) ?? relevantHistory
		requester = createInstance(type: Reference.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		restriction = createInstance(type: TaskRestriction.self, for: "restriction", in: json, context: &instCtx, owner: self) ?? restriction
		status = createEnum(type: TaskStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.businessStatus?.decorate(json: &json, withKey: "businessStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.executionPeriod?.decorate(json: &json, withKey: "executionPeriod", errors: &errors)
		self.focus?.decorate(json: &json, withKey: "focus", errors: &errors)
		self.for_fhir?.decorate(json: &json, withKey: "for", errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "input", using: self.input, errors: &errors)
		self.instantiatesCanonical?.decorate(json: &json, withKey: "instantiatesCanonical", errors: &errors)
		self.instantiatesUri?.decorate(json: &json, withKey: "instantiatesUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "insurance", using: self.insurance, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		self.lastModified?.decorate(json: &json, withKey: "lastModified", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "output", using: self.output, errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "performerType", using: self.performerType, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.reasonCode?.decorate(json: &json, withKey: "reasonCode", errors: &errors)
		self.reasonReference?.decorate(json: &json, withKey: "reasonReference", errors: &errors)
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
	public var valueCanonical: FHIRURL?
	
	/// Content to use in performing the task.
	public var valueCode: FHIRString?
	
	/// Content to use in performing the task.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Content to use in performing the task.
	public var valueCoding: Coding?
	
	/// Content to use in performing the task.
	public var valueContactDetail: ContactDetail?
	
	/// Content to use in performing the task.
	public var valueContactPoint: ContactPoint?
	
	/// Content to use in performing the task.
	public var valueContributor: Contributor?
	
	/// Content to use in performing the task.
	public var valueCount: Count?
	
	/// Content to use in performing the task.
	public var valueDataRequirement: DataRequirement?
	
	/// Content to use in performing the task.
	public var valueDate: FHIRDate?
	
	/// Content to use in performing the task.
	public var valueDateTime: DateTime?
	
	/// Content to use in performing the task.
	public var valueDecimal: FHIRDecimal?
	
	/// Content to use in performing the task.
	public var valueDistance: Distance?
	
	/// Content to use in performing the task.
	public var valueDosage: Dosage?
	
	/// Content to use in performing the task.
	public var valueDuration: Duration?
	
	/// Content to use in performing the task.
	public var valueExpression: Expression?
	
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
	public var valueMoney: Money?
	
	/// Content to use in performing the task.
	public var valueOid: FHIRURL?
	
	/// Content to use in performing the task.
	public var valueParameterDefinition: ParameterDefinition?
	
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
	public var valueRelatedArtifact: RelatedArtifact?
	
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
	public var valueTriggerDefinition: TriggerDefinition?
	
	/// Content to use in performing the task.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Content to use in performing the task.
	public var valueUri: FHIRURL?
	
	/// Content to use in performing the task.
	public var valueUrl: FHIRURL?
	
	/// Content to use in performing the task.
	public var valueUsageContext: UsageContext?
	
	/// Content to use in performing the task.
	public var valueUuid: FHIRURL?
	
	
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
		else if let value = value as? FHIRURL {
			self.valueCanonical = value
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
		else if let value = value as? FHIRURL {
			self.valueUrl = value
		}
		else if let value = value as? FHIRURL {
			self.valueUuid = value
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
		else if let value = value as? ContactDetail {
			self.valueContactDetail = value
		}
		else if let value = value as? Contributor {
			self.valueContributor = value
		}
		else if let value = value as? DataRequirement {
			self.valueDataRequirement = value
		}
		else if let value = value as? Expression {
			self.valueExpression = value
		}
		else if let value = value as? ParameterDefinition {
			self.valueParameterDefinition = value
		}
		else if let value = value as? RelatedArtifact {
			self.valueRelatedArtifact = value
		}
		else if let value = value as? TriggerDefinition {
			self.valueTriggerDefinition = value
		}
		else if let value = value as? UsageContext {
			self.valueUsageContext = value
		}
		else if let value = value as? Dosage {
			self.valueDosage = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueAddress = createInstance(type: Address.self, for: "valueAddress", in: json, context: &instCtx, owner: self) ?? valueAddress
		valueAge = createInstance(type: Age.self, for: "valueAge", in: json, context: &instCtx, owner: self) ?? valueAge
		valueAnnotation = createInstance(type: Annotation.self, for: "valueAnnotation", in: json, context: &instCtx, owner: self) ?? valueAnnotation
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCanonical = createInstance(type: FHIRURL.self, for: "valueCanonical", in: json, context: &instCtx, owner: self) ?? valueCanonical
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueContactDetail = createInstance(type: ContactDetail.self, for: "valueContactDetail", in: json, context: &instCtx, owner: self) ?? valueContactDetail
		valueContactPoint = createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, context: &instCtx, owner: self) ?? valueContactPoint
		valueContributor = createInstance(type: Contributor.self, for: "valueContributor", in: json, context: &instCtx, owner: self) ?? valueContributor
		valueCount = createInstance(type: Count.self, for: "valueCount", in: json, context: &instCtx, owner: self) ?? valueCount
		valueDataRequirement = createInstance(type: DataRequirement.self, for: "valueDataRequirement", in: json, context: &instCtx, owner: self) ?? valueDataRequirement
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueDistance = createInstance(type: Distance.self, for: "valueDistance", in: json, context: &instCtx, owner: self) ?? valueDistance
		valueDosage = createInstance(type: Dosage.self, for: "valueDosage", in: json, context: &instCtx, owner: self) ?? valueDosage
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valueExpression = createInstance(type: Expression.self, for: "valueExpression", in: json, context: &instCtx, owner: self) ?? valueExpression
		valueHumanName = createInstance(type: HumanName.self, for: "valueHumanName", in: json, context: &instCtx, owner: self) ?? valueHumanName
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueIdentifier = createInstance(type: Identifier.self, for: "valueIdentifier", in: json, context: &instCtx, owner: self) ?? valueIdentifier
		valueInstant = createInstance(type: Instant.self, for: "valueInstant", in: json, context: &instCtx, owner: self) ?? valueInstant
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueMarkdown = createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, context: &instCtx, owner: self) ?? valueMarkdown
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueOid = createInstance(type: FHIRURL.self, for: "valueOid", in: json, context: &instCtx, owner: self) ?? valueOid
		valueParameterDefinition = createInstance(type: ParameterDefinition.self, for: "valueParameterDefinition", in: json, context: &instCtx, owner: self) ?? valueParameterDefinition
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valuePositiveInt = createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, context: &instCtx, owner: self) ?? valuePositiveInt
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueRelatedArtifact = createInstance(type: RelatedArtifact.self, for: "valueRelatedArtifact", in: json, context: &instCtx, owner: self) ?? valueRelatedArtifact
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueSignature = createInstance(type: Signature.self, for: "valueSignature", in: json, context: &instCtx, owner: self) ?? valueSignature
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueTiming = createInstance(type: Timing.self, for: "valueTiming", in: json, context: &instCtx, owner: self) ?? valueTiming
		valueTriggerDefinition = createInstance(type: TriggerDefinition.self, for: "valueTriggerDefinition", in: json, context: &instCtx, owner: self) ?? valueTriggerDefinition
		valueUnsignedInt = createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, context: &instCtx, owner: self) ?? valueUnsignedInt
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
		valueUrl = createInstance(type: FHIRURL.self, for: "valueUrl", in: json, context: &instCtx, owner: self) ?? valueUrl
		valueUsageContext = createInstance(type: UsageContext.self, for: "valueUsageContext", in: json, context: &instCtx, owner: self) ?? valueUsageContext
		valueUuid = createInstance(type: FHIRURL.self, for: "valueUuid", in: json, context: &instCtx, owner: self) ?? valueUuid
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCanonical && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueUrl && nil == self.valueUuid && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueContactDetail && nil == self.valueContributor && nil == self.valueDataRequirement && nil == self.valueExpression && nil == self.valueParameterDefinition && nil == self.valueRelatedArtifact && nil == self.valueTriggerDefinition && nil == self.valueUsageContext && nil == self.valueDosage {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
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
		self.valueCanonical?.decorate(json: &json, withKey: "valueCanonical", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactDetail?.decorate(json: &json, withKey: "valueContactDetail", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueContributor?.decorate(json: &json, withKey: "valueContributor", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDataRequirement?.decorate(json: &json, withKey: "valueDataRequirement", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDosage?.decorate(json: &json, withKey: "valueDosage", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueExpression?.decorate(json: &json, withKey: "valueExpression", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valueParameterDefinition?.decorate(json: &json, withKey: "valueParameterDefinition", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueRelatedArtifact?.decorate(json: &json, withKey: "valueRelatedArtifact", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueTriggerDefinition?.decorate(json: &json, withKey: "valueTriggerDefinition", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		self.valueUrl?.decorate(json: &json, withKey: "valueUrl", errors: &errors)
		self.valueUsageContext?.decorate(json: &json, withKey: "valueUsageContext", errors: &errors)
		self.valueUuid?.decorate(json: &json, withKey: "valueUuid", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCanonical && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueUrl && nil == self.valueUuid && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueContactDetail && nil == self.valueContributor && nil == self.valueDataRequirement && nil == self.valueExpression && nil == self.valueParameterDefinition && nil == self.valueRelatedArtifact && nil == self.valueTriggerDefinition && nil == self.valueUsageContext && nil == self.valueDosage {
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
	public var valueCanonical: FHIRURL?
	
	/// Result of output.
	public var valueCode: FHIRString?
	
	/// Result of output.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Result of output.
	public var valueCoding: Coding?
	
	/// Result of output.
	public var valueContactDetail: ContactDetail?
	
	/// Result of output.
	public var valueContactPoint: ContactPoint?
	
	/// Result of output.
	public var valueContributor: Contributor?
	
	/// Result of output.
	public var valueCount: Count?
	
	/// Result of output.
	public var valueDataRequirement: DataRequirement?
	
	/// Result of output.
	public var valueDate: FHIRDate?
	
	/// Result of output.
	public var valueDateTime: DateTime?
	
	/// Result of output.
	public var valueDecimal: FHIRDecimal?
	
	/// Result of output.
	public var valueDistance: Distance?
	
	/// Result of output.
	public var valueDosage: Dosage?
	
	/// Result of output.
	public var valueDuration: Duration?
	
	/// Result of output.
	public var valueExpression: Expression?
	
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
	public var valueMoney: Money?
	
	/// Result of output.
	public var valueOid: FHIRURL?
	
	/// Result of output.
	public var valueParameterDefinition: ParameterDefinition?
	
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
	public var valueRelatedArtifact: RelatedArtifact?
	
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
	public var valueTriggerDefinition: TriggerDefinition?
	
	/// Result of output.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Result of output.
	public var valueUri: FHIRURL?
	
	/// Result of output.
	public var valueUrl: FHIRURL?
	
	/// Result of output.
	public var valueUsageContext: UsageContext?
	
	/// Result of output.
	public var valueUuid: FHIRURL?
	
	
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
		else if let value = value as? FHIRURL {
			self.valueCanonical = value
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
		else if let value = value as? FHIRURL {
			self.valueUrl = value
		}
		else if let value = value as? FHIRURL {
			self.valueUuid = value
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
		else if let value = value as? ContactDetail {
			self.valueContactDetail = value
		}
		else if let value = value as? Contributor {
			self.valueContributor = value
		}
		else if let value = value as? DataRequirement {
			self.valueDataRequirement = value
		}
		else if let value = value as? Expression {
			self.valueExpression = value
		}
		else if let value = value as? ParameterDefinition {
			self.valueParameterDefinition = value
		}
		else if let value = value as? RelatedArtifact {
			self.valueRelatedArtifact = value
		}
		else if let value = value as? TriggerDefinition {
			self.valueTriggerDefinition = value
		}
		else if let value = value as? UsageContext {
			self.valueUsageContext = value
		}
		else if let value = value as? Dosage {
			self.valueDosage = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueAddress = createInstance(type: Address.self, for: "valueAddress", in: json, context: &instCtx, owner: self) ?? valueAddress
		valueAge = createInstance(type: Age.self, for: "valueAge", in: json, context: &instCtx, owner: self) ?? valueAge
		valueAnnotation = createInstance(type: Annotation.self, for: "valueAnnotation", in: json, context: &instCtx, owner: self) ?? valueAnnotation
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCanonical = createInstance(type: FHIRURL.self, for: "valueCanonical", in: json, context: &instCtx, owner: self) ?? valueCanonical
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueContactDetail = createInstance(type: ContactDetail.self, for: "valueContactDetail", in: json, context: &instCtx, owner: self) ?? valueContactDetail
		valueContactPoint = createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, context: &instCtx, owner: self) ?? valueContactPoint
		valueContributor = createInstance(type: Contributor.self, for: "valueContributor", in: json, context: &instCtx, owner: self) ?? valueContributor
		valueCount = createInstance(type: Count.self, for: "valueCount", in: json, context: &instCtx, owner: self) ?? valueCount
		valueDataRequirement = createInstance(type: DataRequirement.self, for: "valueDataRequirement", in: json, context: &instCtx, owner: self) ?? valueDataRequirement
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueDistance = createInstance(type: Distance.self, for: "valueDistance", in: json, context: &instCtx, owner: self) ?? valueDistance
		valueDosage = createInstance(type: Dosage.self, for: "valueDosage", in: json, context: &instCtx, owner: self) ?? valueDosage
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valueExpression = createInstance(type: Expression.self, for: "valueExpression", in: json, context: &instCtx, owner: self) ?? valueExpression
		valueHumanName = createInstance(type: HumanName.self, for: "valueHumanName", in: json, context: &instCtx, owner: self) ?? valueHumanName
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueIdentifier = createInstance(type: Identifier.self, for: "valueIdentifier", in: json, context: &instCtx, owner: self) ?? valueIdentifier
		valueInstant = createInstance(type: Instant.self, for: "valueInstant", in: json, context: &instCtx, owner: self) ?? valueInstant
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueMarkdown = createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, context: &instCtx, owner: self) ?? valueMarkdown
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueOid = createInstance(type: FHIRURL.self, for: "valueOid", in: json, context: &instCtx, owner: self) ?? valueOid
		valueParameterDefinition = createInstance(type: ParameterDefinition.self, for: "valueParameterDefinition", in: json, context: &instCtx, owner: self) ?? valueParameterDefinition
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valuePositiveInt = createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, context: &instCtx, owner: self) ?? valuePositiveInt
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueRelatedArtifact = createInstance(type: RelatedArtifact.self, for: "valueRelatedArtifact", in: json, context: &instCtx, owner: self) ?? valueRelatedArtifact
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueSignature = createInstance(type: Signature.self, for: "valueSignature", in: json, context: &instCtx, owner: self) ?? valueSignature
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueTiming = createInstance(type: Timing.self, for: "valueTiming", in: json, context: &instCtx, owner: self) ?? valueTiming
		valueTriggerDefinition = createInstance(type: TriggerDefinition.self, for: "valueTriggerDefinition", in: json, context: &instCtx, owner: self) ?? valueTriggerDefinition
		valueUnsignedInt = createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, context: &instCtx, owner: self) ?? valueUnsignedInt
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
		valueUrl = createInstance(type: FHIRURL.self, for: "valueUrl", in: json, context: &instCtx, owner: self) ?? valueUrl
		valueUsageContext = createInstance(type: UsageContext.self, for: "valueUsageContext", in: json, context: &instCtx, owner: self) ?? valueUsageContext
		valueUuid = createInstance(type: FHIRURL.self, for: "valueUuid", in: json, context: &instCtx, owner: self) ?? valueUuid
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCanonical && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueUrl && nil == self.valueUuid && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueContactDetail && nil == self.valueContributor && nil == self.valueDataRequirement && nil == self.valueExpression && nil == self.valueParameterDefinition && nil == self.valueRelatedArtifact && nil == self.valueTriggerDefinition && nil == self.valueUsageContext && nil == self.valueDosage {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
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
		self.valueCanonical?.decorate(json: &json, withKey: "valueCanonical", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactDetail?.decorate(json: &json, withKey: "valueContactDetail", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueContributor?.decorate(json: &json, withKey: "valueContributor", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDataRequirement?.decorate(json: &json, withKey: "valueDataRequirement", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDosage?.decorate(json: &json, withKey: "valueDosage", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueExpression?.decorate(json: &json, withKey: "valueExpression", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valueParameterDefinition?.decorate(json: &json, withKey: "valueParameterDefinition", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueRelatedArtifact?.decorate(json: &json, withKey: "valueRelatedArtifact", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueTriggerDefinition?.decorate(json: &json, withKey: "valueTriggerDefinition", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		self.valueUrl?.decorate(json: &json, withKey: "valueUrl", errors: &errors)
		self.valueUsageContext?.decorate(json: &json, withKey: "valueUsageContext", errors: &errors)
		self.valueUuid?.decorate(json: &json, withKey: "valueUuid", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCanonical && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueUrl && nil == self.valueUuid && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueContactDetail && nil == self.valueContributor && nil == self.valueDataRequirement && nil == self.valueExpression && nil == self.valueParameterDefinition && nil == self.valueRelatedArtifact && nil == self.valueTriggerDefinition && nil == self.valueUsageContext && nil == self.valueDosage {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Constraints on fulfillment tasks.

If the Task.focus is a request resource and the task is seeking fulfillment (i.e. is asking for the request to be
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		recipient = createInstances(of: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		repetitions = createInstance(type: FHIRInteger.self, for: "repetitions", in: json, context: &instCtx, owner: self) ?? repetitions
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.repetitions?.decorate(json: &json, withKey: "repetitions", errors: &errors)
	}
}

