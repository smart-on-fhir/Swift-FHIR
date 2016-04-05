//
//  Protocol.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Protocol) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Contextual set of behaviors.
 *
 *  A definition of behaviors to be taken in particular circumstances, often including conditions, options and other
 *  decision points.
 */
public class Protocol: DomainResource {
	override public class var resourceName: String {
		get { return "Protocol" }
	}
	
	/// Who wrote protocol?.
	public var author: Reference?
	
	/// To whom does Protocol apply?.
	public var group: Reference?
	
	/// Unique Id for this particular protocol.
	public var identifier: [Identifier]?
	
	/// When is protocol to be used?.
	public var purpose: String?
	
	/// draft | testing | review | active | withdrawn | superseded.
	public var status: String?
	
	/// What's done as part of protocol.
	public var step: [ProtocolStep]?
	
	/// What does protocol deal with?.
	public var subject: Reference?
	
	/// Name of protocol.
	public var title: String?
	
	/// condition | device | drug | study.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(purpose: String, status: String, type: String) {
		self.init(json: nil)
		self.purpose = purpose
		self.status = status
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? FHIRJSON {
					self.group = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? String {
					self.purpose = val
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "purpose"))
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
			if let exist: AnyObject = js["step"] {
				presentKeys.insert("step")
				if let val = exist as? [FHIRJSON] {
					self.step = ProtocolStep.from(val, owner: self) as? [ProtocolStep]
				}
				else {
					errors.append(FHIRJSONError(key: "step", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let step = self.step {
			json["step"] = ProtocolStep.asJSONArray(step)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  What's done as part of protocol.
 */
public class ProtocolStep: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStep" }
	}
	
	/// Activities that occur within timepoint.
	public var activity: [ProtocolStepActivity]?
	
	/// Human description of activity.
	public var description_fhir: String?
	
	/// How long does step last?.
	public var duration: Quantity?
	
	/// Rules prior to completion.
	public var exit: ProtocolStepPrecondition?
	
	/// First activity within timepoint.
	public var firstActivity: NSURL?
	
	/// Label for step.
	public var name: String?
	
	/// What happens next?.
	public var next: [ProtocolStepNext]?
	
	/// Rules prior to execution.
	public var precondition: ProtocolStepPrecondition?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["activity"] {
				presentKeys.insert("activity")
				if let val = exist as? [FHIRJSON] {
					self.activity = ProtocolStepActivity.from(val, owner: self) as? [ProtocolStepActivity]
				}
				else {
					errors.append(FHIRJSONError(key: "activity", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? FHIRJSON {
					self.duration = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exit"] {
				presentKeys.insert("exit")
				if let val = exist as? FHIRJSON {
					self.exit = ProtocolStepPrecondition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exit", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["firstActivity"] {
				presentKeys.insert("firstActivity")
				if let val = exist as? String {
					self.firstActivity = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "firstActivity", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["next"] {
				presentKeys.insert("next")
				if let val = exist as? [FHIRJSON] {
					self.next = ProtocolStepNext.from(val, owner: self) as? [ProtocolStepNext]
				}
				else {
					errors.append(FHIRJSONError(key: "next", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["precondition"] {
				presentKeys.insert("precondition")
				if let val = exist as? FHIRJSON {
					self.precondition = ProtocolStepPrecondition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "precondition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = ProtocolStepActivity.asJSONArray(activity)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let exit = self.exit {
			json["exit"] = exit.asJSON()
		}
		if let firstActivity = self.firstActivity {
			json["firstActivity"] = firstActivity.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let next = self.next {
			json["next"] = ProtocolStepNext.asJSONArray(next)
		}
		if let precondition = self.precondition {
			json["precondition"] = precondition.asJSON()
		}
		
		return json
	}
}


/**
 *  Activities that occur within timepoint.
 */
public class ProtocolStepActivity: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepActivity" }
	}
	
	/// What can be done instead?.
	public var alternative: [NSURL]?
	
	/// Activities that are part of this activity.
	public var component: [ProtocolStepActivityComponent]?
	
	/// Details of activity.
	public var detail: ProtocolStepActivityDetail?
	
	/// What happens next.
	public var following: [NSURL]?
	
	/// Pause before start.
	public var wait: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(detail: ProtocolStepActivityDetail) {
		self.init(json: nil)
		self.detail = detail
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["alternative"] {
				presentKeys.insert("alternative")
				if let val = exist as? [String] {
					self.alternative = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "alternative", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["component"] {
				presentKeys.insert("component")
				if let val = exist as? [FHIRJSON] {
					self.component = ProtocolStepActivityComponent.from(val, owner: self) as? [ProtocolStepActivityComponent]
				}
				else {
					errors.append(FHIRJSONError(key: "component", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? FHIRJSON {
					self.detail = ProtocolStepActivityDetail(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "detail"))
			}
			if let exist: AnyObject = js["following"] {
				presentKeys.insert("following")
				if let val = exist as? [String] {
					self.following = NSURL.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "following", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["wait"] {
				presentKeys.insert("wait")
				if let val = exist as? FHIRJSON {
					self.wait = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "wait", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let alternative = self.alternative {
			var arr = [AnyObject]()
			for val in alternative {
				arr.append(val.asJSON())
			}
			json["alternative"] = arr
		}
		if let component = self.component {
			json["component"] = ProtocolStepActivityComponent.asJSONArray(component)
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let following = self.following {
			var arr = [AnyObject]()
			for val in following {
				arr.append(val.asJSON())
			}
			json["following"] = arr
		}
		if let wait = self.wait {
			json["wait"] = wait.asJSON()
		}
		
		return json
	}
}


/**
 *  Activities that are part of this activity.
 */
public class ProtocolStepActivityComponent: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepActivityComponent" }
	}
	
	/// Component activity.
	public var activity: NSURL?
	
	/// Order of occurrence.
	public var sequence: Int?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(activity: NSURL) {
		self.init(json: nil)
		self.activity = activity
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["activity"] {
				presentKeys.insert("activity")
				if let val = exist as? String {
					self.activity = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "activity", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "activity"))
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? Int {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: Int.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activity = self.activity {
			json["activity"] = activity.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Details of activity.
 *
 *  Information about the nature of the activity, including type, timing and other qualifiers.
 */
public class ProtocolStepActivityDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepActivityDetail" }
	}
	
	/// diet | drug | encounter | observation +.
	public var category: String?
	
	/// Detail type of activity.
	public var code: CodeableConcept?
	
	/// Extra info on activity occurrence.
	public var description_fhir: String?
	
	/// Where it should happen.
	public var location: Reference?
	
	/// Who's responsible?.
	public var performer: [Reference]?
	
	/// What's administered/supplied.
	public var product: Reference?
	
	/// How much is administered/consumed/supplied.
	public var quantity: Quantity?
	
	/// When activity is to occur.
	public var timingCodeableConcept: CodeableConcept?
	
	/// When activity is to occur.
	public var timingTiming: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? FHIRJSON {
					self.product = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["timingCodeableConcept"] {
				presentKeys.insert("timingCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.timingCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["timingTiming"] {
				presentKeys.insert("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "timingTiming", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = Reference.asJSONArray(performer)
		}
		if let product = self.product {
			json["product"] = product.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let timingCodeableConcept = self.timingCodeableConcept {
			json["timingCodeableConcept"] = timingCodeableConcept.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		
		return json
	}
}


/**
 *  What happens next?.
 *
 *  What happens next?
 */
public class ProtocolStepNext: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepNext" }
	}
	
	/// Condition in which next step is executed.
	public var condition: ProtocolStepPrecondition?
	
	/// Description of what happens next.
	public var description_fhir: String?
	
	/// Id of following step.
	public var reference: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? FHIRJSON {
					self.condition = ProtocolStepPrecondition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? String {
					self.reference = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}


/**
 *  Rules prior to execution.
 */
public class ProtocolStepPrecondition: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepPrecondition" }
	}
	
	/// Condition evaluated.
	public var condition: ProtocolStepPreconditionCondition?
	
	/// Description of condition.
	public var description_fhir: String?
	
	/// Not conditions.
	public var exclude: [ProtocolStepPrecondition]?
	
	/// And conditions.
	public var intersection: [ProtocolStepPrecondition]?
	
	/// Or conditions.
	public var union: [ProtocolStepPrecondition]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? FHIRJSON {
					self.condition = ProtocolStepPreconditionCondition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["exclude"] {
				presentKeys.insert("exclude")
				if let val = exist as? [FHIRJSON] {
					self.exclude = ProtocolStepPrecondition.from(val, owner: self) as? [ProtocolStepPrecondition]
				}
				else {
					errors.append(FHIRJSONError(key: "exclude", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["intersection"] {
				presentKeys.insert("intersection")
				if let val = exist as? [FHIRJSON] {
					self.intersection = ProtocolStepPrecondition.from(val, owner: self) as? [ProtocolStepPrecondition]
				}
				else {
					errors.append(FHIRJSONError(key: "intersection", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["union"] {
				presentKeys.insert("union")
				if let val = exist as? [FHIRJSON] {
					self.union = ProtocolStepPrecondition.from(val, owner: self) as? [ProtocolStepPrecondition]
				}
				else {
					errors.append(FHIRJSONError(key: "union", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let condition = self.condition {
			json["condition"] = condition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let exclude = self.exclude {
			json["exclude"] = ProtocolStepPrecondition.asJSONArray(exclude)
		}
		if let intersection = self.intersection {
			json["intersection"] = ProtocolStepPrecondition.asJSONArray(intersection)
		}
		if let union = self.union {
			json["union"] = ProtocolStepPrecondition.asJSONArray(union)
		}
		
		return json
	}
}


/**
 *  Condition evaluated.
 *
 *  Defines the name/value pair that must hold for the condition to be met.
 */
public class ProtocolStepPreconditionCondition: BackboneElement {
	override public class var resourceName: String {
		get { return "ProtocolStepPreconditionCondition" }
	}
	
	/// Observation / test / assertion.
	public var type: CodeableConcept?
	
	/// Value needed to satisfy condition.
	public var valueBoolean: Bool?
	
	/// Value needed to satisfy condition.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value needed to satisfy condition.
	public var valueQuantity: Quantity?
	
	/// Value needed to satisfy condition.
	public var valueRange: Range?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, valueBoolean: Bool, valueCodeableConcept: CodeableConcept, valueQuantity: Quantity, valueRange: Range) {
		self.init(json: nil)
		self.type = type
		self.valueBoolean = valueBoolean
		self.valueCodeableConcept = valueCodeableConcept
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.insert("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCodeableConcept"] {
				presentKeys.insert("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.insert("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueRange"] {
				presentKeys.insert("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
				errors.append(FHIRJSONError(key: "value*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		
		return json
	}
}

