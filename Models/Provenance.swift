//
//  Provenance.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Provenance) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Provenance of a resource is a record that describes entities and processes involved in producing and delivering or
 *  otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling
 *  trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves
 *  become important records with their own provenance. Provenance statement indicates clinical significance in terms of
 *  confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g., Document
 *  Completion - has the artifact been legally authenticated), all of which may impact Security, Privacy, and Trust
 *  policies.
 */
public class Provenance: DomainResource
{
	override public class var resourceName: String {
		get { return "Provenance" }
	}
	
	/// Agents involved in creating resource
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Policy or plan the activity was defined by
	public var policy: [NSURL]?
	
	/// Reason the activity is occurring
	public var reason: CodeableConcept?
	
	/// When the activity was recorded / updated
	public var recorded: Instant?
	
	/// Signature on target
	public var signature: [Signature]?
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(recorded: Instant?, target: [Reference]?) {
		self.init(json: nil)
		if nil != recorded {
			self.recorded = recorded
		}
		if nil != target {
			self.target = target
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["agent"] {
				presentKeys.addObject("agent")
				if let val = exist as? [FHIRJSON] {
					self.agent = ProvenanceAgent.from(val, owner: self) as? [ProvenanceAgent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"agent\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entity"] {
				presentKeys.addObject("entity")
				if let val = exist as? [FHIRJSON] {
					self.entity = ProvenanceEntity.from(val, owner: self) as? [ProvenanceEntity]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entity\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["policy"] {
				presentKeys.addObject("policy")
				if let val = exist as? [String] {
					self.policy = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"policy\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.addObject("reason")
				if let val = exist as? FHIRJSON {
					self.reason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["recorded"] {
				presentKeys.addObject("recorded")
				if let val = exist as? String {
					self.recorded = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recorded\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"recorded\" but it is missing"))
			}
			if let exist: AnyObject = js["signature"] {
				presentKeys.addObject("signature")
				if let val = exist as? [FHIRJSON] {
					self.signature = Signature.from(val, owner: self) as? [Signature]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"signature\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? [FHIRJSON] {
					self.target = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"target\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let agent = self.agent {
			json["agent"] = ProvenanceAgent.asJSONArray(agent)
		}
		if let entity = self.entity {
			json["entity"] = ProvenanceEntity.asJSONArray(entity)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let policy = self.policy {
			var arr = [AnyObject]()
			for val in policy {
				arr.append(val.asJSON())
			}
			json["policy"] = arr
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let recorded = self.recorded {
			json["recorded"] = recorded.asJSON()
		}
		if let signature = self.signature {
			json["signature"] = Signature.asJSONArray(signature)
		}
		if let target = self.target {
			json["target"] = Reference.asJSONArray(target)
		}
		
		return json
	}
}


/**
 *  Agents involved in creating resource.
 *
 *  An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the
 *  activity taking place. An agent can be a person, an organization, software, or other entities that may be ascribed
 *  responsibility.
 */
public class ProvenanceAgent: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProvenanceAgent" }
	}
	
	/// Human description of participant
	public var display: String?
	
	/// Identity of agent
	public var referenceReference: Reference?
	
	/// Identity of agent
	public var referenceUri: NSURL?
	
	/// Agents Role
	public var role: Coding?
	
	/// Agent Type
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(role: Coding?, type: Coding?) {
		self.init(json: nil)
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referenceReference"] {
				presentKeys.addObject("referenceReference")
				if let val = exist as? FHIRJSON {
					self.referenceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referenceReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["referenceUri"] {
				presentKeys.addObject("referenceUri")
				if let val = exist as? String {
					self.referenceUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"referenceUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? FHIRJSON {
					self.role = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"role\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let referenceReference = self.referenceReference {
			json["referenceReference"] = referenceReference.asJSON()
		}
		if let referenceUri = self.referenceUri {
			json["referenceUri"] = referenceUri.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  An entity used in this activity.
 */
public class ProvenanceEntity: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProvenanceEntity" }
	}
	
	/// Entity is attributed to this agent
	public var agent: ProvenanceAgent?
	
	/// Human description of entity
	public var display: String?
	
	/// Identity of entity
	public var reference: NSURL?
	
	/// derivation | revision | quotation | source
	public var role: String?
	
	/// Entity Type
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(reference: NSURL?, role: String?, type: Coding?) {
		self.init(json: nil)
		if nil != reference {
			self.reference = reference
		}
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["agent"] {
				presentKeys.addObject("agent")
				if let val = exist as? FHIRJSON {
					self.agent = ProvenanceAgent(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"agent\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.addObject("reference")
				if let val = exist as? String {
					self.reference = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reference\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"reference\" but it is missing"))
			}
			if let exist: AnyObject = js["role"] {
				presentKeys.addObject("role")
				if let val = exist as? String {
					self.role = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"role\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"role\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let agent = self.agent {
			json["agent"] = agent.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let role = self.role {
			json["role"] = role.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

