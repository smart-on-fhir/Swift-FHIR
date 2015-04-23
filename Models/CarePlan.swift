//
//  CarePlan.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CarePlan) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["activity"] {
				presentKeys.addObject("activity")
				if let val = exist as? [FHIRJSON] {
					self.activity = CarePlanActivity.from(val, owner: self) as? [CarePlanActivity]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"activity\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["concern"] {
				presentKeys.addObject("concern")
				if let val = exist as? [FHIRJSON] {
					self.concern = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"concern\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["goal"] {
				presentKeys.addObject("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"goal\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modified"] {
				presentKeys.addObject("modified")
				if let val = exist as? String {
					self.modified = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modified\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["participant"] {
				presentKeys.addObject("participant")
				if let val = exist as? [FHIRJSON] {
					self.participant = CarePlanParticipant.from(val, owner: self) as? [CarePlanParticipant]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"participant\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["support"] {
				presentKeys.addObject("support")
				if let val = exist as? [FHIRJSON] {
					self.support = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"support\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["actionResulting"] {
				presentKeys.addObject("actionResulting")
				if let val = exist as? [FHIRJSON] {
					self.actionResulting = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actionResulting\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? FHIRJSON {
					self.detail = CarePlanActivityDetail(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.addObject("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(category: String?, prohibited: Bool?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
		if nil != prohibited {
			self.prohibited = prohibited
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"category\" but it is missing"))
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dailyAmount"] {
				presentKeys.addObject("dailyAmount")
				if let val = exist as? FHIRJSON {
					self.dailyAmount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dailyAmount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["goal"] {
				presentKeys.addObject("goal")
				if let val = exist as? [FHIRJSON] {
					self.goal = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"goal\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["location"] {
				presentKeys.addObject("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"location\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"note\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.addObject("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"performer\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.addObject("product")
				if let val = exist as? FHIRJSON {
					self.product = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"product\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prohibited"] {
				presentKeys.addObject("prohibited")
				if let val = exist as? Bool {
					self.prohibited = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prohibited\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"prohibited\" but it is missing"))
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.addObject("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reasonCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.addObject("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reasonReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduledPeriod"] {
				presentKeys.addObject("scheduledPeriod")
				if let val = exist as? FHIRJSON {
					self.scheduledPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduledPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduledString"] {
				presentKeys.addObject("scheduledString")
				if let val = exist as? String {
					self.scheduledString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduledString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["scheduledTiming"] {
				presentKeys.addObject("scheduledTiming")
				if let val = exist as? FHIRJSON {
					self.scheduledTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"scheduledTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["statusReason"] {
				presentKeys.addObject("statusReason")
				if let val = exist as? FHIRJSON {
					self.statusReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"statusReason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(member: Reference?) {
		self.init(json: nil)
		if nil != member {
			self.member = member
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["member"] {
				presentKeys.addObject("member")
				if let val = exist as? FHIRJSON {
					self.member = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"member\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"member\" but it is missing"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

