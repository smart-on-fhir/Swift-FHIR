//
//  ConceptMap.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/ConceptMap) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A map from one set of concepts to one or more other concepts.
 *
 *  A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
 *  elements, or classes in class models.
 */
public class ConceptMap: DomainResource
{
	override public class var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/// Contact details of the publisher
	public var contact: [ConceptMapContact]?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for given status
	public var date: DateTime?
	
	/// Human language description of the concept map
	public var description_fhir: String?
	
	/// Mappings for a concept from the source set
	public var element: [ConceptMapElement]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Additional identifier for the concept map
	public var identifier: Identifier?
	
	/// Informal name for this concept map
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why is this needed?
	public var requirements: String?
	
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
	
	/// Globally unique logical id for concept map
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = ConceptMapContact.from(val, owner: self) as? [ConceptMapContact]
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["element"] as? [JSONDictionary] {
				self.element = ConceptMapElement.from(val, owner: self) as? [ConceptMapElement]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["sourceReference"] as? JSONDictionary {
				self.sourceReference = Reference(json: val, owner: self)
			}
			if let val = js["sourceUri"] as? String {
				self.sourceUri = NSURL(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["targetReference"] as? JSONDictionary {
				self.targetReference = Reference(json: val, owner: self)
			}
			if let val = js["targetUri"] as? String {
				self.targetUri = NSURL(string: val)
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["useContext"] as? [JSONDictionary] {
				self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = ConceptMapContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let element = self.element {
			json["element"] = ConceptMapElement.asJSONArray(element)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON()
		}
		if let sourceUri = self.sourceUri {
			json["sourceUri"] = sourceUri.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let targetReference = self.targetReference {
			json["targetReference"] = targetReference.asJSON()
		}
		if let targetUri = self.targetUri {
			json["targetUri"] = targetUri.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ConceptMapContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "ConceptMapContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(string: val)
			}
			if let val = js["dependsOn"] as? [JSONDictionary] {
				self.dependsOn = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
			}
			if let val = js["map"] as? [JSONDictionary] {
				self.map = ConceptMapElementMap.from(val, owner: self) as? [ConceptMapElementMap]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = codeSystem.asJSON()
		}
		if let dependsOn = self.dependsOn {
			json["dependsOn"] = ConceptMapElementDependsOn.asJSONArray(dependsOn)
		}
		if let map = self.map {
			json["map"] = ConceptMapElementMap.asJSONArray(map)
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(string: val)
			}
			if let val = js["element"] as? String {
				self.element = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = codeSystem.asJSON()
		}
		if let element = self.element {
			json["element"] = element.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["codeSystem"] as? String {
				self.codeSystem = NSURL(string: val)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["dependsOn"] as? [JSONDictionary] {
				self.dependsOn = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
			}
			if let val = js["equivalence"] as? String {
				self.equivalence = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = codeSystem.asJSON()
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let dependsOn = self.dependsOn {
			json["dependsOn"] = ConceptMapElementDependsOn.asJSONArray(dependsOn)
		}
		if let equivalence = self.equivalence {
			json["equivalence"] = equivalence.asJSON()
		}
		
		return json
	}
}

