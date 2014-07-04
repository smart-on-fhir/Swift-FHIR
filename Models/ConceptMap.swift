//
//  ConceptMap.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A statement of relationships from one set of concepts to one or more other concept systems.
 *
 *  Scope and Usage A concept map defines a mapping from a concept defined in one system to one or more concepts
 *  defined in other systems. Mappings are always framed within the concept of value sets - they are specific to a
 *  context of use.
 */
class ConceptMap: FHIRResource
{
	override var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! Logical id to reference this concept map */
	var identifier: String?
	
	/*! Logical id for this version of the concept map */
	var version: String?
	
	/*! Informal name for this concept map */
	var name: String?
	
	/*! Name of the publisher (Organization or individual) */
	var publisher: String?
	
	/*! Contact information of the publisher */
	var telecom: Contact[]?
	
	/*! Human language description of the concept map */
	var description: String?
	
	/*! About the concept map or its content */
	var copyright: String?
	
	/*! draft | active | retired */
	var status: String?
	
	/*! If for testing purposes, not real usage */
	var experimental: Bool?
	
	/*! Date for given status */
	var date: NSDate?
	
	/*! Identifies the source value set which is being mapped */
	var source: ResourceReference?
	
	/*! Provides context to the mappings */
	var target: ResourceReference?
	
	/*! Mappings for a concept from the source valueset */
	var concept: ConceptMapConcept[]?
	
	convenience init(name: String?, status: String?, source: ResourceReference?, target: ResourceReference?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if status {
			self.status = status
		}
		if source {
			self.source = source
		}
		if target {
			self.target = target
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["telecom"] as? Array<NSDictionary> {
				self.telecom = Contact.from(val) as? Contact[]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = ResourceReference(json: val)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
			if let val = js["concept"] as? Array<NSDictionary> {
				self.concept = ConceptMapConcept.from(val) as? ConceptMapConcept[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Mappings for a concept from the source valueset.
 */
class ConceptMapConcept: FHIRElement
{	
	/*! System that defines the concept being mapped */
	var system: NSURL?
	
	/*! Identifies concept being mapped */
	var code: String?
	
	/*! Other concepts required for this mapping (from context) */
	var dependsOn: ConceptMapConceptDependsOn[]?
	
	/*! A concept from the target value set that this concept maps to */
	var map: ConceptMapConceptMap[]?
	
	convenience init(system: NSURL?) {
		self.init(json: nil)
		if system {
			self.system = system
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["dependsOn"] as? Array<NSDictionary> {
				self.dependsOn = ConceptMapConceptDependsOn.from(val) as? ConceptMapConceptDependsOn[]
			}
			if let val = js["map"] as? Array<NSDictionary> {
				self.map = ConceptMapConceptMap.from(val) as? ConceptMapConceptMap[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Other concepts required for this mapping (from context).
 *
 *  A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified
 *  concept can be resolved, and it has the specified value.
 */
class ConceptMapConceptDependsOn: FHIRElement
{	
	/*! Reference to element/field/valueset provides the context */
	var concept: NSURL?
	
	/*! System for a concept in the referenced concept */
	var system: NSURL?
	
	/*! Code for a concept in the referenced concept */
	var code: String?
	
	convenience init(concept: NSURL?, system: NSURL?, code: String?) {
		self.init(json: nil)
		if concept {
			self.concept = concept
		}
		if system {
			self.system = system
		}
		if code {
			self.code = code
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["concept"] as? String {
				self.concept = NSURL(json: val)
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  A concept from the target value set that this concept maps to.
 */
class ConceptMapConceptMap: FHIRElement
{	
	/*! System of the target */
	var system: NSURL?
	
	/*! Code that identifies the target concept */
	var code: String?
	
	/*! equal | equivalent | wider | subsumes | narrower | specialises | inexact | unmatched | disjoint */
	var equivalence: String?
	
	/*! Description of status/issues in mapping */
	var comments: String?
	
	/*! Other concepts that this mapping also produces */
	var product: ConceptMapConceptMapProduct[]?
	
	convenience init(equivalence: String?) {
		self.init(json: nil)
		if equivalence {
			self.equivalence = equivalence
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["equivalence"] as? String {
				self.equivalence = val
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["product"] as? Array<NSDictionary> {
				self.product = ConceptMapConceptMapProduct.from(val) as? ConceptMapConceptMapProduct[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Other concepts that this mapping also produces.
 *
 *  A set of additional outcomes from this mapping to other value sets. To properly execute this mapping, the
 *  specified value set must be mapped to some data element or source that is in context. The mapping may still be
 *  useful without a place for the additional data elements, but the equivalence cannot be relied on.
 */
class ConceptMapConceptMapProduct: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}
