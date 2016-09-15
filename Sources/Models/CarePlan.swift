//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2016-09-15.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Healthcare plan for patient or group.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 *  community for a period of time, possibly limited to care for a specific condition or set of conditions.
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
	
	/// Summary of nature of plan.
	public var description_fhir: String?
	
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
	
	/// proposed | draft | active | completed | cancelled.
	public var status: String?
	
	/// Who care plan is for.
	public var subject: Reference?
	
	/// Information considered as part of plan.
	public var support: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["activity"] {
				presentKeys.insert("activity")
				if let val = exist as? [FHIRJSON] {
					self.activity = CarePlanActivity.instantiate(fromArray: val, owner: self) as? [CarePlanActivity]
				}
				else {
					errors.append(FHIRJSONError(key: "activity", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["addresses"] {
				presentKeys.insert("addresses")
				if let val = exist as? [FHIRJSON] {
					self.addresses = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "addresses", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["careTeam"] {
				presentKeys.insert("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "careTeam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["goal"] {
				presentKeys.insert("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "goal", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["modified"] {
				presentKeys.insert("modified")
				if let val = exist as? String {
					self.modified = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "modified", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["relatedPlan"] {
				presentKeys.insert("relatedPlan")
				if let val = exist as? [FHIRJSON] {
					self.relatedPlan = CarePlanRelatedPlan.instantiate(fromArray: val, owner: self) as? [CarePlanRelatedPlan]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedPlan", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["support"] {
				presentKeys.insert("support")
				if let val = exist as? [FHIRJSON] {
					self.support = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "support", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = activity.map() { $0.asJSON() }
		}
		if let addresses = self.addresses {
			json["addresses"] = addresses.map() { $0.asJSON() }
		}
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON() }
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = careTeam.map() { $0.asJSON() }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON() }
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let goal = self.goal {
			json["goal"] = goal.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let modified = self.modified {
			json["modified"] = modified.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let relatedPlan = self.relatedPlan {
			json["relatedPlan"] = relatedPlan.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let support = self.support {
			json["support"] = support.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Action to occur as part of plan.
 *
 *  Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to
 *  perform, self-monitoring, education, etc.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["actionResulting"] {
				presentKeys.insert("actionResulting")
				if let val = exist as? [FHIRJSON] {
					self.actionResulting = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "actionResulting", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? FHIRJSON {
					self.detail = CarePlanActivityDetail(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["progress"] {
				presentKeys.insert("progress")
				if let val = exist as? [FHIRJSON] {
					self.progress = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "progress", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionResulting = self.actionResulting {
			json["actionResulting"] = actionResulting.map() { $0.asJSON() }
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let progress = self.progress {
			json["progress"] = progress.map() { $0.asJSON() }
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}


/**
 *  In-line definition of activity.
 *
 *  A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know
 *  about specific resources such as procedure etc.
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
	public var description_fhir: String?
	
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
	
	/// Why activity should be done.
	public var reasonCode: [CodeableConcept]?
	
	/// Condition triggering need for activity.
	public var reasonReference: [Reference]?
	
	/// When activity is to occur.
	public var scheduledPeriod: Period?
	
	/// When activity is to occur.
	public var scheduledString: String?
	
	/// When activity is to occur.
	public var scheduledTiming: Timing?
	
	/// not-started | scheduled | in-progress | on-hold | completed | cancelled.
	public var status: String?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(prohibited: Bool) {
		self.init(json: nil)
		self.prohibited = prohibited
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["dailyAmount"] {
				presentKeys.insert("dailyAmount")
				if let val = exist as? FHIRJSON {
					self.dailyAmount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dailyAmount", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? FHIRJSON {
					self.definition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["goal"] {
				presentKeys.insert("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "goal", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["productCodeableConcept"] {
				presentKeys.insert("productCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.productCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["productReference"] {
				presentKeys.insert("productReference")
				if let val = exist as? FHIRJSON {
					self.productReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["prohibited"] {
				presentKeys.insert("prohibited")
				if let val = exist as? Bool {
					self.prohibited = val
				}
				else {
					errors.append(FHIRJSONError(key: "prohibited", wants: Bool.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "prohibited"))
			}
			if let exist = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["scheduledPeriod"] {
				presentKeys.insert("scheduledPeriod")
				if let val = exist as? FHIRJSON {
					self.scheduledPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledPeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["scheduledString"] {
				presentKeys.insert("scheduledString")
				if let val = exist as? String {
					self.scheduledString = val
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledString", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["scheduledTiming"] {
				presentKeys.insert("scheduledTiming")
				if let val = exist as? FHIRJSON {
					self.scheduledTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledTiming", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["statusReason"] {
				presentKeys.insert("statusReason")
				if let val = exist as? FHIRJSON {
					self.statusReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "statusReason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let dailyAmount = self.dailyAmount {
			json["dailyAmount"] = dailyAmount.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let goal = self.goal {
			json["goal"] = goal.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON() }
		}
		if let productCodeableConcept = self.productCodeableConcept {
			json["productCodeableConcept"] = productCodeableConcept.asJSON()
		}
		if let productReference = self.productReference {
			json["productReference"] = productReference.asJSON()
		}
		if let prohibited = self.prohibited {
			json["prohibited"] = prohibited.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let reasonCode = self.reasonCode {
			json["reasonCode"] = reasonCode.map() { $0.asJSON() }
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.map() { $0.asJSON() }
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON()
		}
		if let scheduledString = self.scheduledString {
			json["scheduledString"] = scheduledString.asJSON()
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.asJSON()
		}
		
		return json
	}
}


/**
 *  Plans related to this one.
 *
 *  Identifies CarePlans with some sort of formal relationship to the current plan.
 */
open class CarePlanRelatedPlan: BackboneElement {
	override open class var resourceType: String {
		get { return "CarePlanRelatedPlan" }
	}
	
	/// includes | replaces | fulfills.
	public var code: String?
	
	/// Plan relationship exists with.
	public var plan: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(plan: Reference) {
		self.init(json: nil)
		self.plan = plan
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["plan"] {
				presentKeys.insert("plan")
				if let val = exist as? FHIRJSON {
					self.plan = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "plan", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "plan"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON()
		}
		
		return json
	}
}

