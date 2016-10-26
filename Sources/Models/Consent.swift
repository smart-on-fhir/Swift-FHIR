//
//  Consent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Consent) on 2016-10-26.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, policy: URL, status: String) {
		self.init(json: nil)
		self.patient = patient
		self.policy = policy
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? [FHIRJSON] {
					self.category = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["consentor"] {
				presentKeys.insert("consentor")
				if let val = exist as? [FHIRJSON] {
					self.consentor = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "consentor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dateTime"] {
				presentKeys.insert("dateTime")
				if let val = exist as? String {
					self.dateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "dateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["except"] {
				presentKeys.insert("except")
				if let val = exist as? [FHIRJSON] {
					self.except = ConsentExcept.instantiate(fromArray: val, owner: self) as? [ConsentExcept]
				}
				else {
					errors.append(FHIRJSONError(key: "except", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organization"] {
				presentKeys.insert("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
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
			if let exist = js["policy"] {
				presentKeys.insert("policy")
				if let val = exist as? String {
					self.policy = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "policy", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "policy"))
			}
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? [FHIRJSON] {
					self.purpose = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["recipient"] {
				presentKeys.insert("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceAttachment"] {
				presentKeys.insert("sourceAttachment")
				if let val = exist as? FHIRJSON {
					self.sourceAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceIdentifier"] {
				presentKeys.insert("sourceIdentifier")
				if let val = exist as? FHIRJSON {
					self.sourceIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["sourceReference"] {
				presentKeys.insert("sourceReference")
				if let val = exist as? FHIRJSON {
					self.sourceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceReference", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON() }
		}
		if let consentor = self.consentor {
			json["consentor"] = consentor.map() { $0.asJSON() }
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let except = self.except {
			json["except"] = except.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let policy = self.policy {
			json["policy"] = policy.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.map() { $0.asJSON() }
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON() }
		}
		if let sourceAttachment = self.sourceAttachment {
			json["sourceAttachment"] = sourceAttachment.asJSON()
		}
		if let sourceIdentifier = self.sourceIdentifier {
			json["sourceIdentifier"] = sourceIdentifier.asJSON()
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? [FHIRJSON] {
					self.action = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["actor"] {
				presentKeys.insert("actor")
				if let val = exist as? [FHIRJSON] {
					self.actor = ConsentExceptActor.instantiate(fromArray: val, owner: self) as? [ConsentExceptActor]
				}
				else {
					errors.append(FHIRJSONError(key: "actor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? [FHIRJSON] {
					self.class_fhir = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? [FHIRJSON] {
					self.code = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["data"] {
				presentKeys.insert("data")
				if let val = exist as? [FHIRJSON] {
					self.data = ConsentExceptData.instantiate(fromArray: val, owner: self) as? [ConsentExceptData]
				}
				else {
					errors.append(FHIRJSONError(key: "data", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["purpose"] {
				presentKeys.insert("purpose")
				if let val = exist as? [FHIRJSON] {
					self.purpose = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "purpose", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["securityLabel"] {
				presentKeys.insert("securityLabel")
				if let val = exist as? [FHIRJSON] {
					self.securityLabel = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.map() { $0.asJSON() }
		}
		if let actor = self.actor {
			json["actor"] = actor.map() { $0.asJSON() }
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.map() { $0.asJSON() }
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON() }
		}
		if let data = self.data {
			json["data"] = data.map() { $0.asJSON() }
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.map() { $0.asJSON() }
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = securityLabel.map() { $0.asJSON() }
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(reference: Reference, role: CodeableConcept) {
		self.init(json: nil)
		self.reference = reference
		self.role = role
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? FHIRJSON {
					self.reference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "reference"))
			}
			if let exist = js["role"] {
				presentKeys.insert("role")
				if let val = exist as? FHIRJSON {
					self.role = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "role"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(meaning: String, reference: Reference) {
		self.init(json: nil)
		self.meaning = meaning
		self.reference = reference
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["meaning"] {
				presentKeys.insert("meaning")
				if let val = exist as? String {
					self.meaning = val
				}
				else {
					errors.append(FHIRJSONError(key: "meaning", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "meaning"))
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
			else {
				errors.append(FHIRJSONError(key: "reference"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let meaning = self.meaning {
			json["meaning"] = meaning.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}

