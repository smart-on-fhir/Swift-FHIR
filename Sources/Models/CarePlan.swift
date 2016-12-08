//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Who's involved in plan?.
	public var careTeam: [Reference]?
	
	/// Type of plan.
	public var category: [CodeableConcept]?
	
	/// Created in context of.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: Reference?
	
	/// Summary of nature of plan.
	public var description_fhir: FHIRString?
	
	/// Desired outcome of plan.
	public var goal: [Reference]?
	
	/// External Ids for this plan.
	public var identifier: [Identifier]?
	
	/// When last updated.
	public var modified: DateTime?
	
	/// Comments about the plan.
	public var note: Annotation?
	
	/// Time period plan covers.
	public var period: Period?
	
	/// Plans related to this one.
	public var relatedPlan: [CarePlanRelatedPlan]?
	
	/// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical
	/// record.
	public var status: CarePlanStatus?
	
	/// Who care plan is for.
	public var subject: Reference?
	
	/// Information considered as part of plan.
	public var support: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: CarePlanStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		activity = try createInstances(of: CarePlanActivity.self, for: "activity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? activity
		addresses = try createInstances(of: Reference.self, for: "addresses", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? addresses
		author = try createInstances(of: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		careTeam = try createInstances(of: Reference.self, for: "careTeam", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? careTeam
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstance(type: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		goal = try createInstances(of: Reference.self, for: "goal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? goal
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		modified = try createInstance(type: DateTime.self, for: "modified", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modified
		note = try createInstance(type: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		relatedPlan = try createInstances(of: CarePlanRelatedPlan.self, for: "relatedPlan", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedPlan
		status = createEnum(type: CarePlanStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		support = try createInstances(of: Reference.self, for: "support", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? support
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "activity", using: self.activity, errors: &errors)
		arrayDecorate(json: &json, withKey: "addresses", using: self.addresses, errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "careTeam", using: self.careTeam, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "goal", using: self.goal, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.modified?.decorate(json: &json, withKey: "modified", errors: &errors)
		self.note?.decorate(json: &json, withKey: "note", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedPlan", using: self.relatedPlan, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "support", using: self.support, errors: &errors)
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
	
	/// Appointments, orders, etc..
	public var actionResulting: [Reference]?
	
	/// In-line definition of activity.
	public var detail: CarePlanActivityDetail?
	
	/// Results of the activity.
	public var outcome: CodeableConcept?
	
	/// Comments about the activity status/progress.
	public var progress: [Annotation]?
	
	/// Activity details defined in specific resource.
	public var reference: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actionResulting = try createInstances(of: Reference.self, for: "actionResulting", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actionResulting
		detail = try createInstance(type: CarePlanActivityDetail.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		progress = try createInstances(of: Annotation.self, for: "progress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? progress
		reference = try createInstance(type: Reference.self, for: "reference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reference
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "actionResulting", using: self.actionResulting, errors: &errors)
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
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
	public var statusReason: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: CarePlanActivityStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		dailyAmount = try createInstance(type: Quantity.self, for: "dailyAmount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dailyAmount
		definition = try createInstance(type: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		goal = try createInstances(of: Reference.self, for: "goal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? goal
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		performer = try createInstances(of: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		productCodeableConcept = try createInstance(type: CodeableConcept.self, for: "productCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productCodeableConcept
		productReference = try createInstance(type: Reference.self, for: "productReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productReference
		prohibited = try createInstance(type: FHIRBool.self, for: "prohibited", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? prohibited
		quantity = try createInstance(type: Quantity.self, for: "quantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? quantity
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		scheduledPeriod = try createInstance(type: Period.self, for: "scheduledPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledPeriod
		scheduledString = try createInstance(type: FHIRString.self, for: "scheduledString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledString
		scheduledTiming = try createInstance(type: Timing.self, for: "scheduledTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledTiming
		status = createEnum(type: CarePlanActivityStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		statusReason = try createInstance(type: CodeableConcept.self, for: "statusReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? statusReason
		
		return errors.isEmpty ? nil : errors
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


/**
Plans related to this one.

Identifies CarePlans with some sort of formal relationship to the current plan.
*/
open class CarePlanRelatedPlan: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanRelatedPlan" }
	}
	
	/// Identifies the type of relationship this plan has to the target plan.
	public var code: CarePlanRelationship?
	
	/// Plan relationship exists with.
	public var plan: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(plan: Reference) {
		self.init()
		self.plan = plan
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: CarePlanRelationship.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		plan = try createInstance(type: Reference.self, for: "plan", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? plan
		if nil == plan && !presentKeys.contains("plan") {
			errors.append(FHIRValidationError(missing: "plan"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.plan?.decorate(json: &json, withKey: "plan", errors: &errors)
		if nil == self.plan {
			errors.append(FHIRValidationError(missing: "plan"))
		}
	}
}

