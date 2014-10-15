//
//  Provenance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (provenance.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Who, What, When for a set of resources.
 *
 *  Scope and Usage The provenance resource tracks information about activity that created a version of a resource,
 *  including the entities, and agents involved in producing a resource. This information can be used to form
 *  assessments about its quality, reliability or trustworthiness, or to provide pointers for where to go to further
 *  investigate the origins of the resource and the information in it.
 *  
 *  Provenance resources are a record-keeping assertion that gathers information about the context in which the
 *  information in a resource was obtained. Provenance resources are prepared by the application that initiates the
 *  create/update etc. of the resource. A Security Event resource contains overlapping information, but is created as
 *  events occur, to track and audit the events. Security Event resources are often (though not exclusively) created by
 *  the application responding to the read/query/create/update etc. event.
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
	public var location: FHIRReference<Location>?
	
	/// When the activity occurred
	public var period: Period?
	
	/// Policy or plan the activity was defined by
	public var policy: [NSURL]?
	
	/// Reason the activity is occurring
	public var reason: CodeableConcept?
	
	/// When the activity was recorded / updated
	public var recorded: NSDate?
	
	/// Target resource(s) (usually version specific)
	public var target: [FHIRReference<FHIRResource>]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(recorded: NSDate?, target: [FHIRReference<FHIRResource>]?) {
		self.init(json: nil)
		if nil != recorded {
			self.recorded = recorded
		}
		if nil != target {
			self.target = target
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? [NSDictionary] {
				self.agent = ProvenanceAgent.from(val) as? [ProvenanceAgent]
			}
			if let val = js["entity"] as? [NSDictionary] {
				self.entity = ProvenanceEntity.from(val) as? [ProvenanceEntity]
			}
			if let val = js["integritySignature"] as? String {
				self.integritySignature = val
			}
			if let val = js["location"] as? NSDictionary {
				self.location = FHIRReference(json: val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["policy"] as? [String] {
				self.policy = NSURL.from(val)
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["recorded"] as? String {
				self.recorded = NSDate(json: val)
			}
			if let val = js["target"] as? [NSDictionary] {
				self.target = FHIRReference.from(val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["role"] as? NSDictionary {
				self.role = Coding(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
		}
	}
}


/**
 *  An entity used in this activity.
 */
public class ProvenanceEntity: FHIRElement
{	
	/// Entity is attributed to this agent
	public var agent: ProvenanceEntityAgent?
	
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["agent"] as? NSDictionary {
				self.agent = ProvenanceEntityAgent(json: val)
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
			if let val = js["type"] as? NSDictionary {
				self.type = Coding(json: val)
			}
		}
	}
}


/**
 *  Entity is attributed to this agent.
 *
 *  The entity is attributed to an agent to express the agent's responsibility for that entity, possibly along with
 *  other agents. This description can be understood as shorthand for saying that the agent was responsible for the
 *  activity which generated the entity.
 */
public class ProvenanceEntityAgent: FHIRElement
{	

}

