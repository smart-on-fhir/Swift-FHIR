//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Healthcare plan for patient or group.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or
 *  community for a period of time, possibly limited to care for a specific condition or set of conditions.
 */
public class CarePlan: DomainResource {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["activity"] {
				presentKeys.insert("activity")
				if let val = exist as? [FHIRJSON] {
					self.activity = CarePlanActivity.from(val, owner: self) as? [CarePlanActivity]
				}
				else {
					errors.append(FHIRJSONError(key: "activity", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["addresses"] {
				presentKeys.insert("addresses")
				if let val = exist as? [FHIRJSON] {
					self.addresses = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "addresses", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["careTeam"] {
				presentKeys.insert("careTeam")
				if let val = exist as? [FHIRJSON] {
					self.careTeam = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "careTeam", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["goal"] {
				presentKeys.insert("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "goal", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["modified"] {
				presentKeys.insert("modified")
				if let val = exist as? String {
					self.modified = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "modified", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? FHIRJSON {
					self.note = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatedPlan"] {
				presentKeys.insert("relatedPlan")
				if let val = exist as? [FHIRJSON] {
					self.relatedPlan = CarePlanRelatedPlan.from(val, owner: self) as? [CarePlanRelatedPlan]
				}
				else {
					errors.append(FHIRJSONError(key: "relatedPlan", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["support"] {
				presentKeys.insert("support")
				if let val = exist as? [FHIRJSON] {
					self.support = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "support", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = CarePlanActivity.asJSONArray(activity)
		}
		if let addresses = self.addresses {
			json["addresses"] = Reference.asJSONArray(addresses)
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let careTeam = self.careTeam {
			json["careTeam"] = Reference.asJSONArray(careTeam)
		}
		if let category = self.category {
			json["category"] = CodeableConcept.asJSONArray(category)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let goal = self.goal {
			json["goal"] = Reference.asJSONArray(goal)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
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
			json["relatedPlan"] = CarePlanRelatedPlan.asJSONArray(relatedPlan)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let support = self.support {
			json["support"] = Reference.asJSONArray(support)
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
public class CarePlanActivity: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["actionResulting"] {
				presentKeys.insert("actionResulting")
				if let val = exist as? [FHIRJSON] {
					self.actionResulting = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "actionResulting", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? FHIRJSON {
					self.detail = CarePlanActivityDetail(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["progress"] {
				presentKeys.insert("progress")
				if let val = exist as? [FHIRJSON] {
					self.progress = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "progress", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actionResulting = self.actionResulting {
			json["actionResulting"] = Reference.asJSONArray(actionResulting)
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let progress = self.progress {
			json["progress"] = Annotation.asJSONArray(progress)
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
public class CarePlanActivityDetail: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dailyAmount"] {
				presentKeys.insert("dailyAmount")
				if let val = exist as? FHIRJSON {
					self.dailyAmount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dailyAmount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? FHIRJSON {
					self.definition = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["goal"] {
				presentKeys.insert("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "goal", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productCodeableConcept"] {
				presentKeys.insert("productCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.productCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productReference"] {
				presentKeys.insert("productReference")
				if let val = exist as? FHIRJSON {
					self.productReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "productReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prohibited"] {
				presentKeys.insert("prohibited")
				if let val = exist as? Bool {
					self.prohibited = val
				}
				else {
					errors.append(FHIRJSONError(key: "prohibited", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "prohibited"))
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCode"] {
				presentKeys.insert("reasonCode")
				if let val = exist as? [FHIRJSON] {
					self.reasonCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? [FHIRJSON] {
					self.reasonReference = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledPeriod"] {
				presentKeys.insert("scheduledPeriod")
				if let val = exist as? FHIRJSON {
					self.scheduledPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledString"] {
				presentKeys.insert("scheduledString")
				if let val = exist as? String {
					self.scheduledString = val
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["scheduledTiming"] {
				presentKeys.insert("scheduledTiming")
				if let val = exist as? FHIRJSON {
					self.scheduledTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "scheduledTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["statusReason"] {
				presentKeys.insert("statusReason")
				if let val = exist as? FHIRJSON {
					self.statusReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "statusReason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
			json["goal"] = Reference.asJSONArray(goal)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
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
			json["reasonCode"] = CodeableConcept.asJSONArray(reasonCode)
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = Reference.asJSONArray(reasonReference)
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
public class CarePlanRelatedPlan: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["plan"] {
				presentKeys.insert("plan")
				if let val = exist as? FHIRJSON {
					self.plan = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "plan", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "plan"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

