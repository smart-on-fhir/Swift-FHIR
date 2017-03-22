//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Healthcare plan for patient or group.

Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
community for a period of time, possibly limited to care for a specific condition or set of conditions.
*/
open class CarePlan: DomainResource {
	override open class var resourceType: String {
		get { return "CarePlan" }
	}
	
	/// Action to occur as part of plan.
	public var activity: [CarePlanActivity]?
	
	/// Health issues this plan addresses.
	public var addresses: [Reference]?
	
	/// Who is responsible for contents of the plan.
	public var author: [Reference]?
	
	/// Fulfills care plan.
	public var basedOn: [Reference]?
	
	/// Who's involved in plan?.
	public var careTeam: [Reference]?
	
	/// Type of plan.
	public var category: [CodeableConcept]?
	
	/// Created in context of.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Summary of nature of plan.
	public var description_fhir: FHIRString?
	
	/// Desired outcome of plan.
	public var goal: [Reference]?
	
	/// External Ids for this plan.
	public var identifier: [Identifier]?
	
	/// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into
	/// the workflow chain.
	public var intent: CarePlanIntent?
	
	/// Comments about the plan.
	public var note: [Annotation]?
	
	/// Part of referenced CarePlan.
	public var partOf: [Reference]?
	
	/// Time period plan covers.
	public var period: Period?
	
	/// CarePlan replaced by this CarePlan.
	public var replaces: [Reference]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	public var status: CarePlanStatus?
	
	/// Who care plan is for.
	public var subject: Reference?
	
	/// Information considered as part of plan.
	public var supportingInfo: [Reference]?
	
	/// Human-friendly name for the CarePlan.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(intent: CarePlanIntent, status: CarePlanStatus, subject: Reference) {
		self.init()
		self.intent = intent
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		activity = createInstances(of: CarePlanActivity.self, for: "activity", in: json, context: &instCtx, owner: self) ?? activity
		addresses = createInstances(of: Reference.self, for: "addresses", in: json, context: &instCtx, owner: self) ?? addresses
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		careTeam = createInstances(of: Reference.self, for: "careTeam", in: json, context: &instCtx, owner: self) ?? careTeam
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		goal = createInstances(of: Reference.self, for: "goal", in: json, context: &instCtx, owner: self) ?? goal
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		intent = createEnum(type: CarePlanIntent.self, for: "intent", in: json, context: &instCtx) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		replaces = createInstances(of: Reference.self, for: "replaces", in: json, context: &instCtx, owner: self) ?? replaces
		status = createEnum(type: CarePlanStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = createInstances(of: Reference.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "activity", using: self.activity, errors: &errors)
		arrayDecorate(json: &json, withKey: "addresses", using: self.addresses, errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "goal", using: self.goal, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}


/**
Action to occur as part of plan.

Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform,
self-monitoring, education, etc.
*/
open class CarePlanActivity: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanActivity" }
	}
	
	/// In-line definition of activity.
	public var detail: CarePlanActivityDetail?
	
	/// Results of the activity.
	public var outcomeCodeableConcept: [CodeableConcept]?
	
	/// Appointment, Encounter, Procedure, etc..
	public var outcomeReference: [Reference]?
	
	/// Comments about the activity status/progress.
	public var progress: [Annotation]?
	
	/// Activity details defined in specific resource.
	public var reference: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		detail = createInstance(type: CarePlanActivityDetail.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		outcomeCodeableConcept = createInstances(of: CodeableConcept.self, for: "outcomeCodeableConcept", in: json, context: &instCtx, owner: self) ?? outcomeCodeableConcept
		outcomeReference = createInstances(of: Reference.self, for: "outcomeReference", in: json, context: &instCtx, owner: self) ?? outcomeReference
		progress = createInstances(of: Annotation.self, for: "progress", in: json, context: &instCtx, owner: self) ?? progress
		reference = createInstance(type: Reference.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		arrayDecorate(json: &json, withKey: "outcomeCodeableConcept", using: self.outcomeCodeableConcept, errors: &errors)
		arrayDecorate(json: &json, withKey: "outcomeReference", using: self.outcomeReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "progress", using: self.progress, errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
	}
}


/**
In-line definition of activity.

A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
about specific resources such as procedure etc.
*/
open class CarePlanActivityDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanActivityDetail" }
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other.
	public var category: CodeableConcept?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// How to consume/day?.
	public var dailyAmount: Quantity?
	
	/// Protocol or definition.
	public var definition: Reference?
	
	/// Extra info describing activity to perform.
	public var description_fhir: FHIRString?
	
	/// Goals this activity relates to.
	public var goal: [Reference]?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// Who will be responsible?.
	public var performer: [Reference]?
	
	/// What is to be administered/supplied.
	public var productCodeableConcept: CodeableConcept?
	
	/// What is to be administered/supplied.
	public var productReference: Reference?
	
	/// Do NOT do.
	public var prohibited: FHIRBool?
	
	/// How much to administer/supply/consume.
	public var quantity: Quantity?
	
	/// Why activity should be done or why activity was prohibited.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity.
	public var reasonReference: [Reference]?
	
	/// When activity is to occur.
	public var scheduledPeriod: Period?
	
	/// When activity is to occur.
	public var scheduledString: FHIRString?
	
	/// When activity is to occur.
	public var scheduledTiming: Timing?
	
	/// Identifies what progress is being made for the specific activity.
	public var status: CarePlanActivityStatus?
	
	/// Reason for current status.
	public var statusReason: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: CarePlanActivityStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		dailyAmount = createInstance(type: Quantity.self, for: "dailyAmount", in: json, context: &instCtx, owner: self) ?? dailyAmount
		definition = createInstance(type: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		goal = createInstances(of: Reference.self, for: "goal", in: json, context: &instCtx, owner: self) ?? goal
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		productCodeableConcept = createInstance(type: CodeableConcept.self, for: "productCodeableConcept", in: json, context: &instCtx, owner: self) ?? productCodeableConcept
		productReference = createInstance(type: Reference.self, for: "productReference", in: json, context: &instCtx, owner: self) ?? productReference
		prohibited = createInstance(type: FHIRBool.self, for: "prohibited", in: json, context: &instCtx, owner: self) ?? prohibited
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		scheduledPeriod = createInstance(type: Period.self, for: "scheduledPeriod", in: json, context: &instCtx, owner: self) ?? scheduledPeriod
		scheduledString = createInstance(type: FHIRString.self, for: "scheduledString", in: json, context: &instCtx, owner: self) ?? scheduledString
		scheduledTiming = createInstance(type: Timing.self, for: "scheduledTiming", in: json, context: &instCtx, owner: self) ?? scheduledTiming
		status = createEnum(type: CarePlanActivityStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: FHIRString.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.dailyAmount?.decorate(json: &json, withKey: "dailyAmount", errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "goal", using: self.goal, errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		self.productCodeableConcept?.decorate(json: &json, withKey: "productCodeableConcept", errors: &errors)
		self.productReference?.decorate(json: &json, withKey: "productReference", errors: &errors)
		self.prohibited?.decorate(json: &json, withKey: "prohibited", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.scheduledPeriod?.decorate(json: &json, withKey: "scheduledPeriod", errors: &errors)
		self.scheduledString?.decorate(json: &json, withKey: "scheduledString", errors: &errors)
		self.scheduledTiming?.decorate(json: &json, withKey: "scheduledTiming", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
	}
}

