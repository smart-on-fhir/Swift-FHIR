//
//  Provenance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class Provenance: FHIRResource
{
	override var resourceName: String {
		get { return "Provenance" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Target resource(s) (usually version specific) */
	var target: ResourceReference[]

	/*! When the activity occurred */
	var period: Period?

	/*! When the activity was recorded / updated */
	var recorded: Int

	/*! Reason the activity is occurring */
	var reason: CodeableConcept?

	/*! Where the activity occurred, if relevant */
	var location: ResourceReference?

	/*! Policy or plan the activity was defined by */
	var policy: NSURL[]?

	/*! Person, organization, records, etc. involved in creating resource */
	var agent: ProvenanceAgent[]?

	/*! An entity used in this activity */
	var entity: ProvenanceEntity[]?

	/*! Base64 signature (DigSig) - integrity check */
	var integritySignature: String?

	init(target: ResourceReference[], recorded: Int) {
		self.target = target
		self.recorded = recorded
	}
}


/*!
 *  Person, organization, records, etc. involved in creating resource.
 *
 *  An agent takes a role in an activity such that the agent can be assigned some degree of responsibility for the
 *  activity taking place. An agent can be a person, a piece of software, an inanimate object, an organization, or
 *  other entities that may be ascribed responsibility.
 */
class ProvenanceAgent: FHIRElement
{
	/*! e.g. author | overseer | enterer | attester | source | cc: + */
	var role: Coding

	/*! e.g. Resource | Person | Application | Record | Document + */
	var type: Coding

	/*! Identity of agent (urn or url) */
	var reference: NSURL

	/*! Human description of participant */
	var display: String?

	init(role: Coding, type: Coding, reference: NSURL) {
		self.role = role
		self.type = type
		self.reference = reference
	}
}


/*!
 *  An entity used in this activity.
 */
class ProvenanceEntity: FHIRElement
{
	/*! derivation | revision | quotation | source */
	var role: String

	/*! Resource Type, or something else */
	var type: Coding

	/*! Identity of participant (urn or url) */
	var reference: NSURL

	/*! Human description of participant */
	var display: String?

	/*! Entity is attributed to this agent */
	var agent: ProvenanceEntityAgent?

	init(role: String, type: Coding, reference: NSURL) {
		self.role = role
		self.type = type
		self.reference = reference
	}
}


/*!
 *  Entity is attributed to this agent.
 *
 *  The entity is attributed to an agent to express the agent's responsibility for that entity, possibly along
 *  with other agents. This description can be understood as shorthand for saying that the agent was responsible
 *  for the activity which generated the entity.
 */
class ProvenanceEntityAgent: FHIRElement
{
}
