//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2016-12-06.
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
		if let exist = json["activity"] {
			presentKeys.insert("activity")
			if let val = exist as? [FHIRJSON] {
				do {
					self.activity = try CarePlanActivity.instantiate(fromArray: val, owner: self) as? [CarePlanActivity]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "activity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "activity", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["addresses"] {
			presentKeys.insert("addresses")
			if let val = exist as? [FHIRJSON] {
				do {
					self.addresses = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "addresses"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "addresses", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? [FHIRJSON] {
				do {
					self.author = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["careTeam"] {
			presentKeys.insert("careTeam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.careTeam = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "careTeam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "careTeam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? FHIRJSON {
				do {
					self.definition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["goal"] {
			presentKeys.insert("goal")
			if let val = exist as? [FHIRJSON] {
				do {
					self.goal = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "goal"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "goal", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["modified"] {
			presentKeys.insert("modified")
			if let val = exist as? String {
				self.modified = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "modified", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? FHIRJSON {
				do {
					self.note = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedPlan"] {
			presentKeys.insert("relatedPlan")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedPlan = try CarePlanRelatedPlan.instantiate(fromArray: val, owner: self) as? [CarePlanRelatedPlan]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedPlan"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedPlan", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = CarePlanStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["support"] {
			presentKeys.insert("support")
			if let val = exist as? [FHIRJSON] {
				do {
					self.support = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "support"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "support", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let activity = self.activity {
			json["activity"] = activity.map() { $0.asJSON(errors: &errors) }
		}
		if let addresses = self.addresses {
			json["addresses"] = addresses.map() { $0.asJSON(errors: &errors) }
		}
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON(errors: &errors) }
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = careTeam.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let goal = self.goal {
			json["goal"] = goal.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let modified = self.modified {
			json["modified"] = modified.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let relatedPlan = self.relatedPlan {
			json["relatedPlan"] = relatedPlan.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let support = self.support {
			json["support"] = support.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["actionResulting"] {
			presentKeys.insert("actionResulting")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actionResulting = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actionResulting"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actionResulting", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? FHIRJSON {
				do {
					self.detail = try CarePlanActivityDetail(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["progress"] {
			presentKeys.insert("progress")
			if let val = exist as? [FHIRJSON] {
				do {
					self.progress = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "progress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "progress", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? FHIRJSON {
				do {
					self.reference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actionResulting = self.actionResulting {
			json["actionResulting"] = actionResulting.map() { $0.asJSON(errors: &errors) }
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON(errors: &errors)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let progress = self.progress {
			json["progress"] = progress.map() { $0.asJSON(errors: &errors) }
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		
		return json
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
	public var prohibited: Bool?
	
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
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["dailyAmount"] {
			presentKeys.insert("dailyAmount")
			if let val = exist as? FHIRJSON {
				do {
					self.dailyAmount = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dailyAmount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dailyAmount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? FHIRJSON {
				do {
					self.definition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["goal"] {
			presentKeys.insert("goal")
			if let val = exist as? [FHIRJSON] {
				do {
					self.goal = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "goal"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "goal", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["location"] {
			presentKeys.insert("location")
			if let val = exist as? FHIRJSON {
				do {
					self.location = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "location"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performer = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["productCodeableConcept"] {
			presentKeys.insert("productCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.productCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "productCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "productCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["productReference"] {
			presentKeys.insert("productReference")
			if let val = exist as? FHIRJSON {
				do {
					self.productReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "productReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "productReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["prohibited"] {
			presentKeys.insert("prohibited")
			if let val = exist as? Bool {
				self.prohibited = val
			}
			else {
				errors.append(FHIRValidationError(key: "prohibited", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? FHIRJSON {
				do {
					self.quantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "quantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonCode"] {
			presentKeys.insert("reasonCode")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonCode = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonReference"] {
			presentKeys.insert("reasonReference")
			if let val = exist as? [FHIRJSON] {
				do {
					self.reasonReference = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledPeriod"] {
			presentKeys.insert("scheduledPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.scheduledPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "scheduledPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledString"] {
			presentKeys.insert("scheduledString")
			if let val = exist as? String {
				self.scheduledString = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["scheduledTiming"] {
			presentKeys.insert("scheduledTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.scheduledTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "scheduledTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "scheduledTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = CarePlanActivityStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["statusReason"] {
			presentKeys.insert("statusReason")
			if let val = exist as? FHIRJSON {
				do {
					self.statusReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "statusReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "statusReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let dailyAmount = self.dailyAmount {
			json["dailyAmount"] = dailyAmount.asJSON(errors: &errors)
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let goal = self.goal {
			json["goal"] = goal.map() { $0.asJSON(errors: &errors) }
		}
		if let location = self.location {
			json["location"] = location.asJSON(errors: &errors)
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON(errors: &errors) }
		}
		if let productCodeableConcept = self.productCodeableConcept {
			json["productCodeableConcept"] = productCodeableConcept.asJSON(errors: &errors)
		}
		if let productReference = self.productReference {
			json["productReference"] = productReference.asJSON(errors: &errors)
		}
		if let prohibited = self.prohibited {
			json["prohibited"] = prohibited.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON(errors: &errors)
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON(errors: &errors) }
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON(errors: &errors)
		}
		if let scheduledString = self.scheduledString {
			json["scheduledString"] = scheduledString.asJSON()
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = CarePlanRelationship(rawValue: val) {
					self.code = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "code", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["plan"] {
			presentKeys.insert("plan")
			if let val = exist as? FHIRJSON {
				do {
					self.plan = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "plan"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "plan", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "plan"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "plan"))
		}
		
		return json
	}
}

