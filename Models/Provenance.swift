//
//  Provenance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Scope and Usage The provenance resource tracks information about activity that created a version of a
 *  resource, including the entities, and agents involved in producing a resource. This information can be used to
 *  form assessments about its quality, reliability or trustworthiness, or to provide pointers for where to go to
 *  further investigate the origins of the resource and the information in it.
 *  
 *  Provenance resources are a record-keeping assertion that gathers information about the context in which the
 *  information in a resource was obtained. Provenance resources are prepared by the application that initiates
 *  the create/update etc. of the resource. A Security Event resource contains overlapping information, but is
 *  created as events occur, to track and audit the events. Security Event resources are often (though not
 *  exclusively) created by the application responding to the read/query/create/update etc. event.
 */
public class Provenance: FHIRResource
{
	override public class var resourceName: String {
		get { return "Provenance" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Target resource(s) (usually version specific) */
	public var target: [FHIRElement]? {
		get { return resolveReferences("target") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "target")
			}
		}
	}
	
	/** When the activity occurred */
	public var period: Period?
	
	/** When the activity was recorded / updated */
	public var recorded: Int?
	
	/** Reason the activity is occurring */
	public var reason: CodeableConcept?
	
	/** Where the activity occurred, if relevant */
	public var location: FHIRElement? {
		get { return resolveReference("location") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "location")
			}
		}
	}
	
	/** Policy or plan the activity was defined by */
	public var policy: [NSURL]?
	
	/** Person, organization, records, etc. involved in creating resource */
	public var agent: [ProvenanceAgent]?
	
	/** An entity used in this activity */
	public var entity: [ProvenanceEntity]?
	
	/** Base64 signature (DigSig) - integrity check */
	public var integritySignature: String?
	
	public convenience init(target: [ResourceReference]?, recorded: Int?) {
		self.init(json: nil)
		if nil != target {
			self.target = target
		}
		if nil != recorded {
			self.recorded = recorded
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["target"] as? [NSDictionary] {
				self.target = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["recorded"] as? Int {
				self.recorded = val
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["location"] as? NSDictionary {
				self.location = ResourceReference(json: val)
			}
			if let val = js["policy"] as? [String] {
				self.policy = NSURL.from(val)
			}
			if let val = js["agent"] as? [NSDictionary] {
				self.agent = ProvenanceAgent.from(val) as? [ProvenanceAgent]
			}
			if let val = js["entity"] as? [NSDictionary] {
				self.entity = ProvenanceEntity.from(val) as? [ProvenanceEntity]
			}
			if let val = js["integritySignature"] as? String {
				self.integritySignature = val
			}
		}
	}
}


/**
 *  Person, organization, records, etc. involved in creating resource.
 *
 *  An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the
 *  activity taking place. An agent can be a person, a piece of software, an inanimate object, an organization, or
 *  other entities that may be ascribed responsibility.
 */
public class ProvenanceAgent: FHIRElement
{	
	/** e.g. author | overseer | enterer | attester | source | cc: + */
	public var role: Coding?
	
	/** e.g. Resource | Person | Application | Record | Document + */
	public var type: Coding?
	
	/** Identity of agent (urn or url) */
	public var reference: NSURL?
	
	/** Human description of participant */
	public var display: String?
	
	public convenience init(role: Coding?, type: Coding?, reference: NSURL?) {
		self.init(json: nil)
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
		if nil != reference {
			self.reference = reference
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["role"] as? NSDictionary {
				self.role = Coding(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
	}
}


/**
 *  An entity used in this activity.
 */
public class ProvenanceEntity: FHIRElement
{	
	/** derivation | revision | quotation | source */
	public var role: String?
	
	/** Resource Type, or something else */
	public var type: Coding?
	
	/** Identity of participant (urn or url) */
	public var reference: NSURL?
	
	/** Human description of participant */
	public var display: String?
	
	/** Entity is attributed to this agent */
	public var agent: ProvenanceEntityAgent?
	
	public convenience init(role: String?, type: Coding?, reference: NSURL?) {
		self.init(json: nil)
		if nil != role {
			self.role = role
		}
		if nil != type {
			self.type = type
		}
		if nil != reference {
			self.reference = reference
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["role"] as? String {
				self.role = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["agent"] as? NSDictionary {
				self.agent = ProvenanceEntityAgent(json: val)
			}
		}
	}
}


/**
 *  Entity is attributed to this agent.
 *
 *  The entity is attributed to an agent to express the agent's responsibility for that entity, possibly along
 *  with other agents. This description can be understood as shorthand for saying that the agent was responsible
 *  for the activity which generated the entity.
 */
public class ProvenanceEntityAgent: FHIRElement
{	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}

