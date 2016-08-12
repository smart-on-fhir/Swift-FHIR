//
//  Task.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Task) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A task to be performed.
 */
public class Task: DomainResource {
	override public class var resourceName: String {
		get { return "Task" }
	}
	
	/// Request fulfilled by this task.
	public var basedOn: [Reference]?
	
	/// E.g. "Specimen collected", "IV prepped".
	public var businessStatus: CodeableConcept?
	
	/// Task Type.
	public var code: CodeableConcept?
	
	/// Healthcare event during which this task originated.
	public var context: Reference?
	
	/// Task Creation Date.
	public var created: DateTime?
	
	/// Task Definition.
	public var definition: NSURL?
	
	/// Human-readable explanation of task.
	public var description_fhir: String?
	
	/// What task is acting on.
	public var focus: Reference?
	
	/// Beneficiary of the Task.
	public var for_fhir: Reference?
	
	/// Constraints on fulfillment tasks.
	public var fulfillment: TaskFulfillment?
	
	/// Task Instance Identifier.
	public var identifier: Identifier?
	
	/// Supporting information.
	public var input: [TaskInput]?
	
	/// Task Last Modified Date.
	public var lastModified: DateTime?
	
	/// Comments made about the task.
	public var note: [Annotation]?
	
	/// Task Output.
	public var output: [TaskOutput]?
	
	/// Task Owner.
	public var owner: Reference?
	
	/// Composite task.
	public var parent: [Reference]?
	
	/// requester | dispatcher | scheduler | performer | monitor | manager | acquirer | reviewer.
	public var performerType: [CodeableConcept]?
	
	/// low | normal | high.
	public var priority: String?
	
	/// Why task is needed.
	public var reason: CodeableConcept?
	
	/// Task Creator.
	public var requester: Reference?
	
	/// Requisition or grouper id.
	public var requisition: Identifier?
	
	/// proposed | planned | actionable +.
	public var stage: CodeableConcept?
	
	/// draft | requested | received | accepted | +.
	public var status: String?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, lastModified: DateTime, requester: Reference, stage: CodeableConcept, status: String) {
		self.init(json: nil)
		self.created = created
		self.lastModified = lastModified
		self.requester = requester
		self.stage = stage
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["basedOn"] {
				presentKeys.insert("basedOn")
				if let val = exist as? [FHIRJSON] {
					self.basedOn = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "basedOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["businessStatus"] {
				presentKeys.insert("businessStatus")
				if let val = exist as? FHIRJSON {
					self.businessStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "businessStatus", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "created"))
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["focus"] {
				presentKeys.insert("focus")
				if let val = exist as? FHIRJSON {
					self.focus = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "focus", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["for"] {
				presentKeys.insert("for")
				if let val = exist as? FHIRJSON {
					self.for_fhir = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "for", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fulfillment"] {
				presentKeys.insert("fulfillment")
				if let val = exist as? FHIRJSON {
					self.fulfillment = TaskFulfillment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fulfillment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["input"] {
				presentKeys.insert("input")
				if let val = exist as? [FHIRJSON] {
					self.input = TaskInput.from(val, owner: self) as? [TaskInput]
				}
				else {
					errors.append(FHIRJSONError(key: "input", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lastModified"] {
				presentKeys.insert("lastModified")
				if let val = exist as? String {
					self.lastModified = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastModified", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "lastModified"))
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["output"] {
				presentKeys.insert("output")
				if let val = exist as? [FHIRJSON] {
					self.output = TaskOutput.from(val, owner: self) as? [TaskOutput]
				}
				else {
					errors.append(FHIRJSONError(key: "output", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["owner"] {
				presentKeys.insert("owner")
				if let val = exist as? FHIRJSON {
					self.owner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "owner", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? [FHIRJSON] {
					self.parent = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["performerType"] {
				presentKeys.insert("performerType")
				if let val = exist as? [FHIRJSON] {
					self.performerType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "performerType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.insert("priority")
				if let val = exist as? String {
					self.priority = val
				}
				else {
					errors.append(FHIRJSONError(key: "priority", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requester"] {
				presentKeys.insert("requester")
				if let val = exist as? FHIRJSON {
					self.requester = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requester", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "requester"))
			}
			if let exist: AnyObject = js["requisition"] {
				presentKeys.insert("requisition")
				if let val = exist as? FHIRJSON {
					self.requisition = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requisition", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["stage"] {
				presentKeys.insert("stage")
				if let val = exist as? FHIRJSON {
					self.stage = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "stage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "stage"))
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
		
		if let basedOn = self.basedOn {
			json["basedOn"] = Reference.asJSONArray(basedOn)
		}
		if let businessStatus = self.businessStatus {
			json["businessStatus"] = businessStatus.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON()
		}
		if let for_fhir = self.for_fhir {
			json["for"] = for_fhir.asJSON()
		}
		if let fulfillment = self.fulfillment {
			json["fulfillment"] = fulfillment.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let input = self.input {
			json["input"] = TaskInput.asJSONArray(input)
		}
		if let lastModified = self.lastModified {
			json["lastModified"] = lastModified.asJSON()
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
		}
		if let output = self.output {
			json["output"] = TaskOutput.asJSONArray(output)
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = Reference.asJSONArray(parent)
		}
		if let performerType = self.performerType {
			json["performerType"] = CodeableConcept.asJSONArray(performerType)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON()
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON()
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
 *  Constraints on fulfillment tasks.
 *
 *  Identifies any limitations on what part of a referenced task subject request should be actioned.
 */
public class TaskFulfillment: BackboneElement {
	override public class var resourceName: String {
		get { return "TaskFulfillment" }
	}
	
	/// Over what time-period is fulfillment sought.
	public var period: Period?
	
	/// For whom is fulfillment sought?.
	public var recipients: [Reference]?
	
	/// How many times to repeat.
	public var repetitions: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["recipients"] {
				presentKeys.insert("recipients")
				if let val = exist as? [FHIRJSON] {
					self.recipients = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipients", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["repetitions"] {
				presentKeys.insert("repetitions")
				if let val = exist as? UInt {
					self.repetitions = val
				}
				else {
					errors.append(FHIRJSONError(key: "repetitions", wants: UInt.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let recipients = self.recipients {
			json["recipients"] = Reference.asJSONArray(recipients)
		}
		if let repetitions = self.repetitions {
			json["repetitions"] = repetitions.asJSON()
		}
		
		return json
	}
}


/**
 *  Supporting information.
 *
 *  Additional information that may be needed in the execution of the task.
 */
public class TaskInput: BackboneElement {
	override public class var resourceName: String {
		get { return "TaskInput" }
	}
	
	/// Label for the input.
	public var type: CodeableConcept?
	
	/// Input Value.
	public var valueAddress: Address?
	
	/// Input Value.
	public var valueAge: Age?
	
	/// Input Value.
	public var valueAnnotation: Annotation?
	
	/// Input Value.
	public var valueAttachment: Attachment?
	
	/// Input Value.
	public var valueBase64Binary: Base64Binary?
	
	/// Input Value.
	public var valueBoolean: Bool?
	
	/// Input Value.
	public var valueCode: String?
	
	/// Input Value.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Input Value.
	public var valueCoding: Coding?
	
	/// Input Value.
	public var valueContactPoint: ContactPoint?
	
	/// Input Value.
	public var valueCount: Count?
	
	/// Input Value.
	public var valueDate: Date?
	
	/// Input Value.
	public var valueDateTime: DateTime?
	
	/// Input Value.
	public var valueDecimal: NSDecimalNumber?
	
	/// Input Value.
	public var valueDistance: Distance?
	
	/// Input Value.
	public var valueDuration: Duration?
	
	/// Input Value.
	public var valueHumanName: HumanName?
	
	/// Input Value.
	public var valueId: String?
	
	/// Input Value.
	public var valueIdentifier: Identifier?
	
	/// Input Value.
	public var valueInstant: Instant?
	
	/// Input Value.
	public var valueInteger: Int?
	
	/// Input Value.
	public var valueMarkdown: String?
	
	/// Input Value.
	public var valueMeta: Meta?
	
	/// Input Value.
	public var valueMoney: Money?
	
	/// Input Value.
	public var valueOid: String?
	
	/// Input Value.
	public var valuePeriod: Period?
	
	/// Input Value.
	public var valuePositiveInt: UInt?
	
	/// Input Value.
	public var valueQuantity: Quantity?
	
	/// Input Value.
	public var valueRange: Range?
	
	/// Input Value.
	public var valueRatio: Ratio?
	
	/// Input Value.
	public var valueReference: Reference?
	
	/// Input Value.
	public var valueSampledData: SampledData?
	
	/// Input Value.
	public var valueSignature: Signature?
	
	/// Input Value.
	public var valueString: String?
	
	/// Input Value.
	public var valueTime: Time?
	
	/// Input Value.
	public var valueTiming: Timing?
	
	/// Input Value.
	public var valueUnsignedInt: UInt?
	
	/// Input Value.
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, valueAddress: Address, valueAge: Age, valueAnnotation: Annotation, valueAttachment: Attachment, valueBase64Binary: Base64Binary, valueBoolean: Bool, valueCode: String, valueCodeableConcept: CodeableConcept, valueCoding: Coding, valueContactPoint: ContactPoint, valueCount: Count, valueDate: Date, valueDateTime: DateTime, valueDecimal: NSDecimalNumber, valueDistance: Distance, valueDuration: Duration, valueHumanName: HumanName, valueId: String, valueIdentifier: Identifier, valueInstant: Instant, valueInteger: Int, valueMarkdown: String, valueMeta: Meta, valueMoney: Money, valueOid: String, valuePeriod: Period, valuePositiveInt: UInt, valueQuantity: Quantity, valueRange: Range, valueRatio: Ratio, valueReference: Reference, valueSampledData: SampledData, valueSignature: Signature, valueString: String, valueTime: Time, valueTiming: Timing, valueUnsignedInt: UInt, valueUri: NSURL) {
		self.init(json: nil)
		self.type = type
		self.valueAddress = valueAddress
		self.valueAge = valueAge
		self.valueAnnotation = valueAnnotation
		self.valueAttachment = valueAttachment
		self.valueBase64Binary = valueBase64Binary
		self.valueBoolean = valueBoolean
		self.valueCode = valueCode
		self.valueCodeableConcept = valueCodeableConcept
		self.valueCoding = valueCoding
		self.valueContactPoint = valueContactPoint
		self.valueCount = valueCount
		self.valueDate = valueDate
		self.valueDateTime = valueDateTime
		self.valueDecimal = valueDecimal
		self.valueDistance = valueDistance
		self.valueDuration = valueDuration
		self.valueHumanName = valueHumanName
		self.valueId = valueId
		self.valueIdentifier = valueIdentifier
		self.valueInstant = valueInstant
		self.valueInteger = valueInteger
		self.valueMarkdown = valueMarkdown
		self.valueMeta = valueMeta
		self.valueMoney = valueMoney
		self.valueOid = valueOid
		self.valuePeriod = valuePeriod
		self.valuePositiveInt = valuePositiveInt
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
		self.valueRatio = valueRatio
		self.valueReference = valueReference
		self.valueSampledData = valueSampledData
		self.valueSignature = valueSignature
		self.valueString = valueString
		self.valueTime = valueTime
		self.valueTiming = valueTiming
		self.valueUnsignedInt = valueUnsignedInt
		self.valueUri = valueUri
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
			if let exist: AnyObject = js["valueAddress"] {
				presentKeys.insert("valueAddress")
				if let val = exist as? FHIRJSON {
					self.valueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAge"] {
				presentKeys.insert("valueAge")
				if let val = exist as? FHIRJSON {
					self.valueAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAnnotation"] {
				presentKeys.insert("valueAnnotation")
				if let val = exist as? FHIRJSON {
					self.valueAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.insert("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueBase64Binary"] {
				presentKeys.insert("valueBase64Binary")
				if let val = exist as? String {
					self.valueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueBase64Binary", wants: String.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueContactPoint"] {
				presentKeys.insert("valueContactPoint")
				if let val = exist as? FHIRJSON {
					self.valueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCount"] {
				presentKeys.insert("valueCount")
				if let val = exist as? FHIRJSON {
					self.valueCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDistance"] {
				presentKeys.insert("valueDistance")
				if let val = exist as? FHIRJSON {
					self.valueDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDuration"] {
				presentKeys.insert("valueDuration")
				if let val = exist as? FHIRJSON {
					self.valueDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueIdentifier"] {
				presentKeys.insert("valueIdentifier")
				if let val = exist as? FHIRJSON {
					self.valueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.insert("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMarkdown"] {
				presentKeys.insert("valueMarkdown")
				if let val = exist as? String {
					self.valueMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMeta"] {
				presentKeys.insert("valueMeta")
				if let val = exist as? FHIRJSON {
					self.valueMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMoney"] {
				presentKeys.insert("valueMoney")
				if let val = exist as? FHIRJSON {
					self.valueMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueOid"] {
				presentKeys.insert("valueOid")
				if let val = exist as? String {
					self.valueOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePositiveInt"] {
				presentKeys.insert("valuePositiveInt")
				if let val = exist as? UInt {
					self.valuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valuePositiveInt", wants: UInt.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueRatio"] {
				presentKeys.insert("valueRatio")
				if let val = exist as? FHIRJSON {
					self.valueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.insert("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSampledData"] {
				presentKeys.insert("valueSampledData")
				if let val = exist as? FHIRJSON {
					self.valueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSignature"] {
				presentKeys.insert("valueSignature")
				if let val = exist as? FHIRJSON {
					self.valueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTiming"] {
				presentKeys.insert("valueTiming")
				if let val = exist as? FHIRJSON {
					self.valueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUnsignedInt"] {
				presentKeys.insert("valueUnsignedInt")
				if let val = exist as? UInt {
					self.valueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
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
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON()
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON()
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON()
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON()
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON()
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON()
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON()
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON()
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON()
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}


/**
 *  Task Output.
 *
 *  Outputs produced by the Task.
 */
public class TaskOutput: BackboneElement {
	override public class var resourceName: String {
		get { return "TaskOutput" }
	}
	
	/// Output Name.
	public var type: CodeableConcept?
	
	/// Output Value.
	public var valueAddress: Address?
	
	/// Output Value.
	public var valueAge: Age?
	
	/// Output Value.
	public var valueAnnotation: Annotation?
	
	/// Output Value.
	public var valueAttachment: Attachment?
	
	/// Output Value.
	public var valueBase64Binary: Base64Binary?
	
	/// Output Value.
	public var valueBoolean: Bool?
	
	/// Output Value.
	public var valueCode: String?
	
	/// Output Value.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Output Value.
	public var valueCoding: Coding?
	
	/// Output Value.
	public var valueContactPoint: ContactPoint?
	
	/// Output Value.
	public var valueCount: Count?
	
	/// Output Value.
	public var valueDate: Date?
	
	/// Output Value.
	public var valueDateTime: DateTime?
	
	/// Output Value.
	public var valueDecimal: NSDecimalNumber?
	
	/// Output Value.
	public var valueDistance: Distance?
	
	/// Output Value.
	public var valueDuration: Duration?
	
	/// Output Value.
	public var valueHumanName: HumanName?
	
	/// Output Value.
	public var valueId: String?
	
	/// Output Value.
	public var valueIdentifier: Identifier?
	
	/// Output Value.
	public var valueInstant: Instant?
	
	/// Output Value.
	public var valueInteger: Int?
	
	/// Output Value.
	public var valueMarkdown: String?
	
	/// Output Value.
	public var valueMeta: Meta?
	
	/// Output Value.
	public var valueMoney: Money?
	
	/// Output Value.
	public var valueOid: String?
	
	/// Output Value.
	public var valuePeriod: Period?
	
	/// Output Value.
	public var valuePositiveInt: UInt?
	
	/// Output Value.
	public var valueQuantity: Quantity?
	
	/// Output Value.
	public var valueRange: Range?
	
	/// Output Value.
	public var valueRatio: Ratio?
	
	/// Output Value.
	public var valueReference: Reference?
	
	/// Output Value.
	public var valueSampledData: SampledData?
	
	/// Output Value.
	public var valueSignature: Signature?
	
	/// Output Value.
	public var valueString: String?
	
	/// Output Value.
	public var valueTime: Time?
	
	/// Output Value.
	public var valueTiming: Timing?
	
	/// Output Value.
	public var valueUnsignedInt: UInt?
	
	/// Output Value.
	public var valueUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, valueAddress: Address, valueAge: Age, valueAnnotation: Annotation, valueAttachment: Attachment, valueBase64Binary: Base64Binary, valueBoolean: Bool, valueCode: String, valueCodeableConcept: CodeableConcept, valueCoding: Coding, valueContactPoint: ContactPoint, valueCount: Count, valueDate: Date, valueDateTime: DateTime, valueDecimal: NSDecimalNumber, valueDistance: Distance, valueDuration: Duration, valueHumanName: HumanName, valueId: String, valueIdentifier: Identifier, valueInstant: Instant, valueInteger: Int, valueMarkdown: String, valueMeta: Meta, valueMoney: Money, valueOid: String, valuePeriod: Period, valuePositiveInt: UInt, valueQuantity: Quantity, valueRange: Range, valueRatio: Ratio, valueReference: Reference, valueSampledData: SampledData, valueSignature: Signature, valueString: String, valueTime: Time, valueTiming: Timing, valueUnsignedInt: UInt, valueUri: NSURL) {
		self.init(json: nil)
		self.type = type
		self.valueAddress = valueAddress
		self.valueAge = valueAge
		self.valueAnnotation = valueAnnotation
		self.valueAttachment = valueAttachment
		self.valueBase64Binary = valueBase64Binary
		self.valueBoolean = valueBoolean
		self.valueCode = valueCode
		self.valueCodeableConcept = valueCodeableConcept
		self.valueCoding = valueCoding
		self.valueContactPoint = valueContactPoint
		self.valueCount = valueCount
		self.valueDate = valueDate
		self.valueDateTime = valueDateTime
		self.valueDecimal = valueDecimal
		self.valueDistance = valueDistance
		self.valueDuration = valueDuration
		self.valueHumanName = valueHumanName
		self.valueId = valueId
		self.valueIdentifier = valueIdentifier
		self.valueInstant = valueInstant
		self.valueInteger = valueInteger
		self.valueMarkdown = valueMarkdown
		self.valueMeta = valueMeta
		self.valueMoney = valueMoney
		self.valueOid = valueOid
		self.valuePeriod = valuePeriod
		self.valuePositiveInt = valuePositiveInt
		self.valueQuantity = valueQuantity
		self.valueRange = valueRange
		self.valueRatio = valueRatio
		self.valueReference = valueReference
		self.valueSampledData = valueSampledData
		self.valueSignature = valueSignature
		self.valueString = valueString
		self.valueTime = valueTime
		self.valueTiming = valueTiming
		self.valueUnsignedInt = valueUnsignedInt
		self.valueUri = valueUri
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
			if let exist: AnyObject = js["valueAddress"] {
				presentKeys.insert("valueAddress")
				if let val = exist as? FHIRJSON {
					self.valueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAge"] {
				presentKeys.insert("valueAge")
				if let val = exist as? FHIRJSON {
					self.valueAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAnnotation"] {
				presentKeys.insert("valueAnnotation")
				if let val = exist as? FHIRJSON {
					self.valueAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueAttachment"] {
				presentKeys.insert("valueAttachment")
				if let val = exist as? FHIRJSON {
					self.valueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueBase64Binary"] {
				presentKeys.insert("valueBase64Binary")
				if let val = exist as? String {
					self.valueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueBase64Binary", wants: String.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? String {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? FHIRJSON {
					self.valueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueContactPoint"] {
				presentKeys.insert("valueContactPoint")
				if let val = exist as? FHIRJSON {
					self.valueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCount"] {
				presentKeys.insert("valueCount")
				if let val = exist as? FHIRJSON {
					self.valueCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDate"] {
				presentKeys.insert("valueDate")
				if let val = exist as? String {
					self.valueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDecimal"] {
				presentKeys.insert("valueDecimal")
				if let val = exist as? NSNumber {
					self.valueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDistance"] {
				presentKeys.insert("valueDistance")
				if let val = exist as? FHIRJSON {
					self.valueDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDuration"] {
				presentKeys.insert("valueDuration")
				if let val = exist as? FHIRJSON {
					self.valueDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueHumanName"] {
				presentKeys.insert("valueHumanName")
				if let val = exist as? FHIRJSON {
					self.valueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueId"] {
				presentKeys.insert("valueId")
				if let val = exist as? String {
					self.valueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueIdentifier"] {
				presentKeys.insert("valueIdentifier")
				if let val = exist as? FHIRJSON {
					self.valueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInstant"] {
				presentKeys.insert("valueInstant")
				if let val = exist as? String {
					self.valueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueInteger"] {
				presentKeys.insert("valueInteger")
				if let val = exist as? Int {
					self.valueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMarkdown"] {
				presentKeys.insert("valueMarkdown")
				if let val = exist as? String {
					self.valueMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMeta"] {
				presentKeys.insert("valueMeta")
				if let val = exist as? FHIRJSON {
					self.valueMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueMoney"] {
				presentKeys.insert("valueMoney")
				if let val = exist as? FHIRJSON {
					self.valueMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueOid"] {
				presentKeys.insert("valueOid")
				if let val = exist as? String {
					self.valueOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePositiveInt"] {
				presentKeys.insert("valuePositiveInt")
				if let val = exist as? UInt {
					self.valuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valuePositiveInt", wants: UInt.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["valueRatio"] {
				presentKeys.insert("valueRatio")
				if let val = exist as? FHIRJSON {
					self.valueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueReference"] {
				presentKeys.insert("valueReference")
				if let val = exist as? FHIRJSON {
					self.valueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSampledData"] {
				presentKeys.insert("valueSampledData")
				if let val = exist as? FHIRJSON {
					self.valueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSignature"] {
				presentKeys.insert("valueSignature")
				if let val = exist as? FHIRJSON {
					self.valueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueString"] {
				presentKeys.insert("valueString")
				if let val = exist as? String {
					self.valueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTime"] {
				presentKeys.insert("valueTime")
				if let val = exist as? String {
					self.valueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueTiming"] {
				presentKeys.insert("valueTiming")
				if let val = exist as? FHIRJSON {
					self.valueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUnsignedInt"] {
				presentKeys.insert("valueUnsignedInt")
				if let val = exist as? UInt {
					self.valueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueUri"] {
				presentKeys.insert("valueUri")
				if let val = exist as? String {
					self.valueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueUri", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
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
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON()
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON()
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON()
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON()
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON()
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON()
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON()
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON()
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON()
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON()
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON()
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON()
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON()
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON()
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON()
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON()
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON()
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

