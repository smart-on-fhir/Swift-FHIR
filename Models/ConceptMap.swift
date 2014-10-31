//
//  ConceptMap.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (conceptmap.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A statement of relationships from one set of concepts to one or more other concept systems.
 *
 *  Scope and Usage A concept map defines a mapping from a concept defined in one system to one or more concepts defined
 *  in other systems. Mappings are always framed within the concept of value sets - they are specific to a context of
 *  use.
 */
public class ConceptMap: FHIRResource
{
	override public class var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/// Mappings for a concept from the source valueset
	public var concept: [ConceptMapConcept]?
	
	/// About the concept map or its content
	public var copyright: String?
	
	/// Date for given status
	public var date: NSDate?
	
	/// Human language description of the concept map
	public var description: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Logical id to reference this concept map
	public var identifier: String?
	
	/// Informal name for this concept map
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Identifies the source value set which is being mapped
	public var source: FHIRReference<ValueSet>?
	
	/// draft | active | retired
	public var status: String?
	
	/// Provides context to the mappings
	public var target: FHIRReference<ValueSet>?
	
	/// Contact information of the publisher
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Logical id for this version of the concept map
	public var version: String?
	
	public convenience init(name: String?, source: FHIRReference<ValueSet>?, status: String?, target: FHIRReference<ValueSet>?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != source {
			self.source = source
		}
		if nil != status {
			self.status = status
		}
		if nil != target {
			self.target = target
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concept"] as? [NSDictionary] {
				self.concept = ConceptMapConcept.from(val) as? [ConceptMapConcept]
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["experimental"] as? Int {
				self.experimental = (1 == val)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["source"] as? NSDictionary {
				self.source = FHIRReference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = FHIRReference(json: val, owner: self)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  Mappings for a concept from the source valueset.
 */
public class ConceptMapConcept: FHIRElement
{	
	/// Identifies concept being mapped
	public var code: String?
	
	/// Other concepts required for this mapping (from context)
	public var dependsOn: [ConceptMapConceptDependsOn]?
	
	/// A concept from the target value set that this concept maps to
	public var map: [ConceptMapConceptMap]?
	
	/// System that defines the concept being mapped
	public var system: NSURL?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["dependsOn"] as? [NSDictionary] {
				self.dependsOn = ConceptMapConceptDependsOn.from(val) as? [ConceptMapConceptDependsOn]
			}
			if let val = js["map"] as? [NSDictionary] {
				self.map = ConceptMapConceptMap.from(val) as? [ConceptMapConceptMap]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
		}
	}
}


/**
 *  Other concepts required for this mapping (from context).
 *
 *  A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified concept
 *  can be resolved, and it has the specified value.
 */
public class ConceptMapConceptDependsOn: FHIRElement
{	
	/// Code for a concept in the referenced concept
	public var code: String?
	
	/// Reference to element/field/valueset provides the context
	public var concept: NSURL?
	
	/// System for a concept in the referenced concept
	public var system: NSURL?
	
	public convenience init(code: String?, concept: NSURL?, system: NSURL?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != concept {
			self.concept = concept
		}
		if nil != system {
			self.system = system
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["concept"] as? String {
				self.concept = NSURL(json: val)
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
		}
	}
}


/**
 *  A concept from the target value set that this concept maps to.
 */
public class ConceptMapConceptMap: FHIRElement
{	
	/// Code that identifies the target concept
	public var code: String?
	
	/// Description of status/issues in mapping
	public var comments: String?
	
	/// equal | equivalent | wider | subsumes | narrower | specialises | inexact | unmatched | disjoint
	public var equivalence: String?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapConceptMapProduct]?
	
	/// System of the target
	public var system: NSURL?
	
	public convenience init(equivalence: String?) {
		self.init(json: nil)
		if nil != equivalence {
			self.equivalence = equivalence
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["equivalence"] as? String {
				self.equivalence = val
			}
			if let val = js["product"] as? [NSDictionary] {
				self.product = ConceptMapConceptMapProduct.from(val) as? [ConceptMapConceptMapProduct]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
		}
	}
}


/**
 *  Other concepts that this mapping also produces.
 *
 *  A set of additional outcomes from this mapping to other value sets. To properly execute this mapping, the specified
 *  value set must be mapped to some data element or source that is in context. The mapping may still be useful without
 *  a place for the additional data elements, but the equivalence cannot be relied on.
 */
public class ConceptMapConceptMapProduct: FHIRElement
{	

}

