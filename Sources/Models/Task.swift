//
//  Task.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Task) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A task to be performed.
 */
open class Task: DomainResource {
	override open class var resourceType: String {
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
	public var definition: URL?
	
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, lastModified: DateTime, requester: Reference, stage: CodeableConcept, status: String) {
		self.init()
		self.created = created
		self.lastModified = lastModified
		self.requester = requester
		self.stage = stage
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["basedOn"] {
			presentKeys.insert("basedOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.basedOn = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "basedOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "basedOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["businessStatus"] {
			presentKeys.insert("businessStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.businessStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "businessStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "businessStatus", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "created"))
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? FHIRJSON {
				do {
					self.focus = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "focus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["for"] {
			presentKeys.insert("for")
			if let val = exist as? FHIRJSON {
				do {
					self.for_fhir = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "for"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "for", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fulfillment"] {
			presentKeys.insert("fulfillment")
			if let val = exist as? FHIRJSON {
				do {
					self.fulfillment = try TaskFulfillment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fulfillment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fulfillment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["input"] {
			presentKeys.insert("input")
			if let val = exist as? [FHIRJSON] {
				do {
					self.input = try TaskInput.instantiate(fromArray: val, owner: self) as? [TaskInput]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "input"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "input", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["lastModified"] {
			presentKeys.insert("lastModified")
			if let val = exist as? String {
				self.lastModified = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastModified", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "lastModified"))
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["output"] {
			presentKeys.insert("output")
			if let val = exist as? [FHIRJSON] {
				do {
					self.output = try TaskOutput.instantiate(fromArray: val, owner: self) as? [TaskOutput]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "output"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "output", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["owner"] {
			presentKeys.insert("owner")
			if let val = exist as? FHIRJSON {
				do {
					self.owner = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "owner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parent = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["performerType"] {
			presentKeys.insert("performerType")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performerType = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performerType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performerType", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["priority"] {
			presentKeys.insert("priority")
			if let val = exist as? String {
				self.priority = val
			}
			else {
				errors.append(FHIRValidationError(key: "priority", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requester"] {
			presentKeys.insert("requester")
			if let val = exist as? FHIRJSON {
				do {
					self.requester = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requester", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "requester"))
		}
		if let exist = json["requisition"] {
			presentKeys.insert("requisition")
			if let val = exist as? FHIRJSON {
				do {
					self.requisition = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requisition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requisition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["stage"] {
			presentKeys.insert("stage")
			if let val = exist as? FHIRJSON {
				do {
					self.stage = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "stage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "stage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "stage"))
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
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
		
		if let basedOn = self.basedOn {
			json["basedOn"] = basedOn.map() { $0.asJSON(errors: &errors) }
		}
		if let businessStatus = self.businessStatus {
			json["businessStatus"] = businessStatus.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
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
			json["focus"] = focus.asJSON(errors: &errors)
		}
		if let for_fhir = self.for_fhir {
			json["for"] = for_fhir.asJSON(errors: &errors)
		}
		if let fulfillment = self.fulfillment {
			json["fulfillment"] = fulfillment.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let input = self.input {
			json["input"] = input.map() { $0.asJSON(errors: &errors) }
		}
		if let lastModified = self.lastModified {
			json["lastModified"] = lastModified.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let output = self.output {
			json["output"] = output.map() { $0.asJSON(errors: &errors) }
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON(errors: &errors)
		}
		if let parent = self.parent {
			json["parent"] = parent.map() { $0.asJSON(errors: &errors) }
		}
		if let performerType = self.performerType {
			json["performerType"] = performerType.map() { $0.asJSON(errors: &errors) }
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON(errors: &errors)
		}
		if let requisition = self.requisition {
			json["requisition"] = requisition.asJSON(errors: &errors)
		}
		if let stage = self.stage {
			json["stage"] = stage.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusReason = self.statusReason {
			json["statusReason"] = statusReason.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Constraints on fulfillment tasks.
 *
 *  Identifies any limitations on what part of a referenced task subject request should be actioned.
 */
open class TaskFulfillment: BackboneElement {
	override open class var resourceType: String {
		get { return "TaskFulfillment" }
	}
	
	/// Over what time-period is fulfillment sought.
	public var period: Period?
	
	/// For whom is fulfillment sought?.
	public var recipients: [Reference]?
	
	/// How many times to repeat.
	public var repetitions: UInt?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		if let exist = json["recipients"] {
			presentKeys.insert("recipients")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipients = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipients"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipients", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["repetitions"] {
			presentKeys.insert("repetitions")
			if let val = exist as? UInt {
				self.repetitions = val
			}
			else {
				errors.append(FHIRValidationError(key: "repetitions", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let recipients = self.recipients {
			json["recipients"] = recipients.map() { $0.asJSON(errors: &errors) }
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
open class TaskInput: BackboneElement {
	override open class var resourceType: String {
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
	public var valueDate: FHIRDate?
	
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
	public var valueTime: FHIRTime?
	
	/// Input Value.
	public var valueTiming: Timing?
	
	/// Input Value.
	public var valueUnsignedInt: UInt?
	
	/// Input Value.
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? String {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else if let value = value as? String {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? String {
			self.valueMarkdown = value
		}
		else if let value = value as? String {
			self.valueOid = value
		}
		else if let value = value as? UInt {
			self.valuePositiveInt = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? UInt {
			self.valueUnsignedInt = value
		}
		else if let value = value as? URL {
			self.valueUri = value
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
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
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
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
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
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
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
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
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
open class TaskOutput: BackboneElement {
	override open class var resourceType: String {
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
	public var valueDate: FHIRDate?
	
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
	public var valueTime: FHIRTime?
	
	/// Output Value.
	public var valueTiming: Timing?
	
	/// Output Value.
	public var valueUnsignedInt: UInt?
	
	/// Output Value.
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept, value: Any) {
		self.init()
		self.type = type
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? String {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else if let value = value as? String {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? String {
			self.valueMarkdown = value
		}
		else if let value = value as? String {
			self.valueOid = value
		}
		else if let value = value as? UInt {
			self.valuePositiveInt = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? UInt {
			self.valueUnsignedInt = value
		}
		else if let value = value as? URL {
			self.valueUri = value
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
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
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
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
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
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
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
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
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

