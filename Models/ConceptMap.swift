//
//  ConceptMap.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A statement of relationships from one set of concepts to one or more other concept systems.
 *
 *  Scope and Usage A concept map defines a mapping from a concept defined in one system to one or more concepts
 *  defined in other systems. Mappings are always framed within the concept of value sets - they are specific to a
 *  context of use.
 */
public class ConceptMap: FHIRResource
{
	override public class var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Logical id to reference this concept map */
	public var identifier: String?
	
	/** Logical id for this version of the concept map */
	public var version: String?
	
	/** Informal name for this concept map */
	public var name: String?
	
	/** Name of the publisher (Organization or individual) */
	public var publisher: String?
	
	/** Contact information of the publisher */
	public var telecom: [Contact]?
	
	/** Human language description of the concept map */
	public var description: String?
	
	/** About the concept map or its content */
	public var copyright: String?
	
	/** draft | active | retired */
	public var status: String?
	
	/** If for testing purposes, not real usage */
	public var experimental: Bool?
	
	/** Date for given status */
	public var date: NSDate?
	
	/** Identifies the source value set which is being mapped */
	public var source: FHIRElement? {
		get { return resolveReference("source") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "source")
			}
		}
	}
	
	/** Provides context to the mappings */
	public var target: FHIRElement? {
		get { return resolveReference("target") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "target")
			}
		}
	}
	
	/** Mappings for a concept from the source valueset */
	public var concept: [ConceptMapConcept]?
	
	public convenience init(name: String?, status: String?, source: ResourceReference?, target: ResourceReference?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != source {
			self.source = source
		}
		if nil != target {
			self.target = target
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
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
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ConceptMapConcept.from(val) as? [ConceptMapConcept]
			}
		}
	}
}


/**
 *  Mappings for a concept from the source valueset.
 */
public class ConceptMapConcept: FHIRElement
{	
	/** System that defines the concept being mapped */
	public var system: NSURL?
	
	/** Identifies concept being mapped */
	public var code: String?
	
	/** Other concepts required for this mapping (from context) */
	public var dependsOn: [ConceptMapConceptDependsOn]?
	
	/** A concept from the target value set that this concept maps to */
	public var map: [ConceptMapConceptMap]?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["dependsOn"] as? [NSDictionary] {
				self.dependsOn = ConceptMapConceptDependsOn.from(val) as? [ConceptMapConceptDependsOn]
			}
			if let val = js["map"] as? [NSDictionary] {
				self.map = ConceptMapConceptMap.from(val) as? [ConceptMapConceptMap]
			}
		}
	}
}


/**
 *  Other concepts required for this mapping (from context).
 *
 *  A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified
 *  concept can be resolved, and it has the specified value.
 */
public class ConceptMapConceptDependsOn: FHIRElement
{	
	/** Reference to element/field/valueset provides the context */
	public var concept: NSURL?
	
	/** System for a concept in the referenced concept */
	public var system: NSURL?
	
	/** Code for a concept in the referenced concept */
	public var code: String?
	
	public convenience init(concept: NSURL?, system: NSURL?, code: String?) {
		self.init(json: nil)
		if nil != concept {
			self.concept = concept
		}
		if nil != system {
			self.system = system
		}
		if nil != code {
			self.code = code
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  A concept from the target value set that this concept maps to.
 */
public class ConceptMapConceptMap: FHIRElement
{	
	/** System of the target */
	public var system: NSURL?
	
	/** Code that identifies the target concept */
	public var code: String?
	
	/** equal | equivalent | wider | subsumes | narrower | specialises | inexact | unmatched | disjoint */
	public var equivalence: String?
	
	/** Description of status/issues in mapping */
	public var comments: String?
	
	/** Other concepts that this mapping also produces */
	public var product: [ConceptMapConceptMapProduct]?
	
	public convenience init(equivalence: String?) {
		self.init(json: nil)
		if nil != equivalence {
			self.equivalence = equivalence
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
			if let val = js["product"] as? [NSDictionary] {
				self.product = ConceptMapConceptMapProduct.from(val) as? [ConceptMapConceptMapProduct]
			}
		}
	}
}


/**
 *  Other concepts that this mapping also produces.
 *
 *  A set of additional outcomes from this mapping to other value sets. To properly execute this mapping, the
 *  specified value set must be mapped to some data element or source that is in context. The mapping may still be
 *  useful without a place for the additional data elements, but the equivalence cannot be relied on.
 */
public class ConceptMapConceptMapProduct: FHIRElement
{	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}

