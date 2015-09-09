//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Healthcare plan for patient.
 *
 *  Describes the intention of how one or more practitioners intend to deliver care for a particular patient for a
 *  period of time, possibly limited to care for a specific condition or set of conditions.
 */
public class CarePlan: DomainResource
{
	override public class var resourceName: String {
		get { return "CarePlan" }
	}
	
	/// Action to occur as part of plan
	public var activity: [CarePlanActivity]?
	
	/// Who is responsible for plan
	public var author: [Reference]?
	
	/// Type of plan
	public var category: [CodeableConcept]?
	
	/// Health issues this plan addresses
	public var concern: [Reference]?
	
	/// Desired outcome of plan
	public var goal: [Reference]?
	
	/// External Ids for this plan
	public var identifier: [Identifier]?
	
	/// When last updated
	public var modified: DateTime?
	
	/// Comments about the plan
	public var notes: String?
	
	/// Who's involved in plan?
	public var participant: [CarePlanParticipant]?
	
	/// Who care plan is for
	public var patient: Reference?
	
	/// Time period plan covers
	public var period: Period?
	
	/// planned | active | completed
	public var status: String?
	
	/// Information considered as part of plan
	public var support: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["concern"] {
				presentKeys.insert("concern")
				if let val = exist as? [FHIRJSON] {
					self.concern = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "concern", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.insert("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = CarePlanParticipant.from(val, owner: self) as? [CarePlanParticipant]
				}
				else {
					errors.append(FHIRJSONError(key: "participant", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let category = self.category {
			json["category"] = CodeableConcept.asJSONArray(category)
		}
		if let concern = self.concern {
			json["concern"] = Reference.asJSONArray(concern)
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
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = CarePlanParticipant.asJSONArray(participant)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
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
public class CarePlanActivity: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanActivity" }
	}
	
	/// Appointments, orders, etc.
	public var actionResulting: [Reference]?
	
	/// In-line definition of activity
	public var detail: CarePlanActivityDetail?
	
	/// Comments about the activity
	public var notes: String?
	
	/// Activity details defined in specific resource
	public var reference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["notes"] {
				presentKeys.insert("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(FHIRJSONError(key: "notes", wants: String.self, has: exist.dynamicType))
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
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
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
public class CarePlanActivityDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanActivityDetail" }
	}
	
	/// diet | drug | encounter | observation | procedure | supply | other
	public var category: String?
	
	/// Detail type of activity
	public var code: CodeableConcept?
	
	/// How to consume/day?
	public var dailyAmount: Quantity?
	
	/// Goals this activity relates to
	public var goal: [Reference]?
	
	/// Where it should happen
	public var location: Reference?
	
	/// Extra info on activity occurrence
	public var note: String?
	
	/// Who will be responsible?
	public var performer: [Reference]?
	
	/// What is to be administered/supplied
	public var product: Reference?
	
	/// Do NOT do
	public var prohibited: Bool?
	
	/// How much to administer/supply/consume
	public var quantity: Quantity?
	
	/// Why activity should be done
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why activity should be done
	public var reasonReference: Reference?
	
	/// When activity is to occur
	public var scheduledPeriod: Period?
	
	/// When activity is to occur
	public var scheduledString: String?
	
	/// When activity is to occur
	public var scheduledTiming: Timing?
	
	/// not-started | scheduled | in-progress | on-hold | completed | cancelled
	public var status: String?
	
	/// Reason for current status
	public var statusReason: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: String?, prohibited: Bool?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? FHIRJSON {
					self.product = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let goal = self.goal {
			json["goal"] = Reference.asJSONArray(goal)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		if let prohibited = self.prohibited {
			json["prohibited"] = prohibited.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
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
 *  Who's involved in plan?.
 *
 *  Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
 */
public class CarePlanParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "CarePlanParticipant" }
	}
	
	/// Who is involved
	public var member: Reference?
	
	/// Type of involvement
	public var role: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(member: Reference?) {
		self.init(json: nil)
		if nil != member {
			self.member = member
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["member"] {
				presentKeys.insert("member")
				if let val = exist as? FHIRJSON {
					self.member = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "member", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "member"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let member = self.member {
			json["member"] = member.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		
		return json
	}
}

