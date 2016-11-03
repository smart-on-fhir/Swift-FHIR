//
//  Consent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Consent) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A healthcare consumer’s policy choices to permits or denies recipients or roles to perform actions for specific
 *  purposes and periods of time.
 *
 *  A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient
 *  role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
 */
open class Consent: DomainResource {
	override open class var resourceType: String {
		get { return "Consent" }
	}
	
	/// Classification of the consent statement - for indexing/retrieval.
	public var category: [CodeableConcept]?
	
	/// Who is agreeing to the policy and exceptions.
	public var consentor: [Reference]?
	
	/// When this Consent was created or indexed.
	public var dateTime: DateTime?
	
	/// Additional rule -  addition or removal of permissions.
	public var except: [ConsentExcept]?
	
	/// Identifier for this record (external references).
	public var identifier: Identifier?
	
	/// Organization that manages the consent.
	public var organization: Reference?
	
	/// Who the consent applies to.
	public var patient: Reference?
	
	/// Period that this consent applies.
	public var period: Period?
	
	/// Policy that this consents to.
	public var policy: URL?
	
	/// Context of activities for which the agreement is made.
	public var purpose: [Coding]?
	
	/// Whose access is controlled by the policy.
	public var recipient: [Reference]?
	
	/// Source from which this consent is taken.
	public var sourceAttachment: Attachment?
	
	/// Source from which this consent is taken.
	public var sourceIdentifier: Identifier?
	
	/// Source from which this consent is taken.
	public var sourceReference: Reference?
	
	/// draft | proposed | active | rejected | inactive | entered-in-error.
	public var status: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, policy: URL, status: String) {
		self.init()
		self.patient = patient
		self.policy = policy
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		if let exist = json["consentor"] {
			presentKeys.insert("consentor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.consentor = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "consentor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "consentor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dateTime"] {
			presentKeys.insert("dateTime")
			if let val = exist as? String {
				self.dateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["except"] {
			presentKeys.insert("except")
			if let val = exist as? [FHIRJSON] {
				do {
					self.except = try ConsentExcept.instantiate(fromArray: val, owner: self) as? [ConsentExcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "except"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "except", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["organization"] {
			presentKeys.insert("organization")
			if let val = exist as? FHIRJSON {
				do {
					self.organization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "patient"))
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
		if let exist = json["policy"] {
			presentKeys.insert("policy")
			if let val = exist as? String {
				self.policy = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "policy", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "policy"))
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? [FHIRJSON] {
				do {
					self.purpose = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "purpose"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["recipient"] {
			presentKeys.insert("recipient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipient = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceAttachment"] {
			presentKeys.insert("sourceAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.sourceAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourceAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourceAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceIdentifier"] {
			presentKeys.insert("sourceIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.sourceIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourceIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourceIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceReference"] {
			presentKeys.insert("sourceReference")
			if let val = exist as? FHIRJSON {
				do {
					self.sourceReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourceReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourceReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let consentor = self.consentor {
			json["consentor"] = consentor.map() { $0.asJSON(errors: &errors) }
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let except = self.except {
			json["except"] = except.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let policy = self.policy {
			json["policy"] = policy.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.map() { $0.asJSON(errors: &errors) }
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let sourceAttachment = self.sourceAttachment {
			json["sourceAttachment"] = sourceAttachment.asJSON(errors: &errors)
		}
		if let sourceIdentifier = self.sourceIdentifier {
			json["sourceIdentifier"] = sourceIdentifier.asJSON(errors: &errors)
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional rule -  addition or removal of permissions.
 *
 *  An exception to the base policy of this consent. An exception can be an addition or removal of access permissions.
 */
open class ConsentExcept: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExcept" }
	}
	
	/// Actions controlled by this exception.
	public var action: [CodeableConcept]?
	
	/// Who|what controlled by this exception (or group, by role).
	public var actor: [ConsentExceptActor]?
	
	/// e.g. Resource Type, Profile, or CDA etc.
	public var class_fhir: [Coding]?
	
	/// e.g. LOINC or SNOMED CT code, etc in the content.
	public var code: [Coding]?
	
	/// Data controlled by this exception.
	public var data: [ConsentExceptData]?
	
	/// Timeframe for data controlled by this exception.
	public var period: Period?
	
	/// Context of activities covered by this exception.
	public var purpose: [Coding]?
	
	/// Security Labels that define affected resources.
	public var securityLabel: [Coding]?
	
	/// deny | permit.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? [FHIRJSON] {
				do {
					self.action = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["actor"] {
			presentKeys.insert("actor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.actor = try ConsentExceptActor.instantiate(fromArray: val, owner: self) as? [ConsentExceptActor]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "actor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "actor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["class"] {
			presentKeys.insert("class")
			if let val = exist as? [FHIRJSON] {
				do {
					self.class_fhir = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "class"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "class", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? [FHIRJSON] {
				do {
					self.code = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["data"] {
			presentKeys.insert("data")
			if let val = exist as? [FHIRJSON] {
				do {
					self.data = try ConsentExceptData.instantiate(fromArray: val, owner: self) as? [ConsentExceptData]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "data"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "data", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? [FHIRJSON] {
				do {
					self.purpose = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "purpose"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["securityLabel"] {
			presentKeys.insert("securityLabel")
			if let val = exist as? [FHIRJSON] {
				do {
					self.securityLabel = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "securityLabel"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON(errors: &errors) }
		}
		if let actor = self.actor {
			json["actor"] = actor.map() { $0.asJSON(errors: &errors) }
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let data = self.data {
			json["data"] = data.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.map() { $0.asJSON(errors: &errors) }
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = securityLabel.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Who|what controlled by this exception (or group, by role).
 *
 *  Who or what is controlled by this Exception. Use group to identify a set of actors by some property they share (e.g.
 *  'admitting officers').
 */
open class ConsentExceptActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptActor" }
	}
	
	/// Resource for the actor (or group, by role).
	public var reference: Reference?
	
	/// How the actor is/was involved.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference, role: CodeableConcept) {
		self.init()
		self.reference = reference
		self.role = role
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
		else {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? FHIRJSON {
				do {
					self.role = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "role"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Data controlled by this exception.
 *
 *  The resources controlled by this exception, if specific resources are referenced.
 */
open class ConsentExceptData: BackboneElement {
	override open class var resourceType: String {
		get { return "ConsentExceptData" }
	}
	
	/// instance | related | dependents.
	public var meaning: String?
	
	/// The actual data reference.
	public var reference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(meaning: String, reference: Reference) {
		self.init()
		self.meaning = meaning
		self.reference = reference
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["meaning"] {
			presentKeys.insert("meaning")
			if let val = exist as? String {
				self.meaning = val
			}
			else {
				errors.append(FHIRValidationError(key: "meaning", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "meaning"))
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
		else {
			errors.append(FHIRValidationError(missing: "reference"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let meaning = self.meaning {
			json["meaning"] = meaning.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON(errors: &errors)
		}
		
		return json
	}
}

