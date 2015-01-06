//
//  Provenance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (provenance.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Provenance information that describes the activity that led to the creation of a set of resources. This information
 *  can be used to help determine their reliability or trace where the information in them came from. The focus of the
 *  provenance resource is record keeping, audit and traceability, and not explicit statements of clinical significance.
 */
public class Provenance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Provenance" }
	}
	
	/// Person, organization, records, etc. involved in creating resource
	public var agent: [ProvenanceAgent]?
	
	/// An entity used in this activity
	public var entity: [ProvenanceEntity]?
	
	/// Base64 signature (DigSig) - integrity check
	public var integritySignature: String?
	
	/// Where the activity occurred, if relevant
	public var location: Reference?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Policy or plan the activity was defined by
	public var policy: [NSURL]?
	
	/// Reason the activity is occurring
	public var reason: CodeableConcept?
	
	/// When the activity was recorded / updated
	public var recorded: NSDate?
	
	/// Target Reference(s) (usually version specific)
	public var target: [Reference]?
	
	public convenience init(recorded: NSDate?, target: [Reference]?) {
		self.init(json: nil)
		if nil != recorded {
			self.recorded = recorded
		}
		if nil != target {
			self.target = target
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? [JSONDictionary] {
				self.agent = ProvenanceAgent.from(val, owner: self) as? [ProvenanceAgent]
			}
			if let val = js["entity"] as? [JSONDictionary] {
				self.entity = ProvenanceEntity.from(val, owner: self) as? [ProvenanceEntity]
			}
			if let val = js["integritySignature"] as? String {
				self.integritySignature = val
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["policy"] as? [String] {
				self.policy = NSURL.from(val)
			}
			if let val = js["reason"] as? JSONDictionary {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["recorded"] as? String {
				self.recorded = NSDate(json: val)
			}
			if let val = js["target"] as? [JSONDictionary] {
				self.target = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
}


/**
 *  Person, organization, records, etc. involved in creating resource.
 *
 *  An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the
 *  activity taking place. An agent can be a person, a piece of software, an inanimate object, an organization, or other
 *  entities that may be ascribed responsibility.
 */
public class ProvenanceAgent: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProvenanceAgent" }
	}
	
	/// Human description of participant
	public var display: String?
	
	/// Identity of agent (urn or url)
	public var reference: NSURL?
	
	/// e.g. author | overseer | enterer | attester | source | cc: +
	public var role: Coding?
	
	/// e.g. Resource | Person | Application | Record | Document +
	public var type: Coding?
	
	public convenience init(reference: NSURL?, role: Coding?, type: Coding?) {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["role"] as? JSONDictionary {
				self.role = Coding(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
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
	
	/// Person, organization, records, etc. involved in creating resource
	public var agent: ProvenanceAgent?
	
	/// Human description of participant
	public var display: String?
	
	/// Identity of participant (urn or url)
	public var reference: NSURL?
	
	/// derivation | revision | quotation | source
	public var role: String?
	
	/// Resource Type, or something else
	public var type: Coding?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? JSONDictionary {
				self.agent = ProvenanceAgent(json: val, owner: self)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
}

