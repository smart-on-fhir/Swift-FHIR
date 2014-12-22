//
//  ConceptMap.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (conceptmap.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A map from one set of concepts to one or more other concepts.
 *
 *  A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
 *  elements, or classes in class models.
 */
public class ConceptMap: FHIRResource
{
	override public class var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/// About the concept map or its content
	public var copyright: String?
	
	/// Date for given status
	public var date: NSDate?
	
	/// Human language description of the concept map
	public var description: String?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapElement]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Logical id to reference this concept map
	public var identifier: String?
	
	/// Informal name for this concept map
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Identifies the source of the concepts which are being mapped
	public var sourceReference: Reference?
	
	/// Identifies the source of the concepts which are being mapped
	public var sourceUri: NSURL?
	
	/// draft | active | retired
	public var status: String?
	
	/// Provides context to the mappings
	public var targetReference: Reference?
	
	/// Provides context to the mappings
	public var targetUri: NSURL?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Logical id for this version of the concept map
	public var version: String?
	
	public convenience init(sourceReference: Reference?, sourceUri: NSURL?, status: String?, targetReference: Reference?, targetUri: NSURL?) {
		self.init(json: nil)
		if nil != sourceReference {
			self.sourceReference = sourceReference
		}
		if nil != sourceUri {
			self.sourceUri = sourceUri
		}
		if nil != status {
			self.status = status
		}
		if nil != targetReference {
			self.targetReference = targetReference
		}
		if nil != targetUri {
			self.targetUri = targetUri
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["element"] as? [NSDictionary] {
				self.element = ConceptMapElement.from(val, owner: self) as? [ConceptMapElement]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
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
			if let val = js["sourceReference"] as? NSDictionary {
				self.sourceReference = Reference(json: val, owner: self)
			}
			if let val = js["sourceUri"] as? String {
				self.sourceUri = NSURL(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["targetReference"] as? NSDictionary {
				self.targetReference = Reference(json: val, owner: self)
			}
			if let val = js["targetUri"] as? String {
				self.targetUri = NSURL(json: val)
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  Mappings for a concept from the source set.
 *
 *  Mappings for an individual concept in the source to one or more concepts in the target.
 */
public class ConceptMapElement: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConceptMapElement" }
	}
	
	/// Identifies element being mapped
	public var code: String?
	
	/// Code System (if value set crosses code systems)
	public var codeSystem: NSURL?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapElementDependsOn]?
	
	/// Target of this map
	public var map: [ConceptMapElementMap]?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(json: val)
			}
			if let val = js["dependsOn"] as? [NSDictionary] {
				self.dependsOn = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
			}
			if let val = js["map"] as? [NSDictionary] {
				self.map = ConceptMapElementMap.from(val, owner: self) as? [ConceptMapElementMap]
			}
		}
	}
}


/**
 *  Other elements required for this mapping (from context).
 *
 *  A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element
 *  can be resolved, and it has the specified value.
 */
public class ConceptMapElementDependsOn: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConceptMapElementDependsOn" }
	}
	
	/// Value of the referenced element
	public var code: String?
	
	/// Code System (if necessary)
	public var codeSystem: NSURL?
	
	/// Reference to element/field/valueset mapping depends on
	public var element: NSURL?
	
	public convenience init(code: String?, codeSystem: NSURL?, element: NSURL?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != codeSystem {
			self.codeSystem = codeSystem
		}
		if nil != element {
			self.element = element
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(json: val)
			}
			if let val = js["element"] as? String {
				self.element = NSURL(json: val)
			}
		}
	}
}


/**
 *  Target of this map.
 *
 *  A concept from the target value set that this concept maps to.
 */
public class ConceptMapElementMap: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConceptMapElementMap" }
	}
	
	/// Code that identifies the target element
	public var code: String?
	
	/// System of the target (if necessary)
	public var codeSystem: NSURL?
	
	/// Description of status/issues in mapping
	public var comments: String?
	
	/// Other elements required for this mapping (from context)
	public var dependsOn: [ConceptMapElementDependsOn]?
	
	/// equivalent | equal | wider | subsumes | narrower | specialises | inexact | unmatched | disjoint
	public var equivalence: String?
	
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
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(json: val)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["dependsOn"] as? [NSDictionary] {
				self.dependsOn = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
			}
			if let val = js["equivalence"] as? String {
				self.equivalence = val
			}
		}
	}
}

