//
//  ConceptMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ConceptMap) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ConceptMapContact.from(val, owner: self) as? [ConceptMapContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.addObject("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"copyright\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["element"] {
				presentKeys.addObject("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ConceptMapElement.from(val, owner: self) as? [ConceptMapElement]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"element\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sourceReference"] {
				presentKeys.addObject("sourceReference")
				if let val = exist as? FHIRJSON {
					self.sourceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sourceReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sourceUri"] {
				presentKeys.addObject("sourceUri")
				if let val = exist as? String {
					self.sourceUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sourceUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["targetReference"] {
				presentKeys.addObject("targetReference")
				if let val = exist as? FHIRJSON {
					self.targetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"targetReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["targetUri"] {
				presentKeys.addObject("targetUri")
				if let val = exist as? String {
					self.targetUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"targetUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.addObject("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"useContext\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.sourceUri && nil == self.sourceReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"source[x]\" but none was found"))
			}
			if nil == self.targetUri && nil == self.targetReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"target[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.addObject("codeSystem")
				if let val = exist as? String {
					self.codeSystem = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"codeSystem\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dependsOn"] {
				presentKeys.addObject("dependsOn")
				if let val = exist as? [FHIRJSON] {
					self.dependsOn = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dependsOn\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["map"] {
				presentKeys.addObject("map")
				if let val = exist as? [FHIRJSON] {
					self.map = ConceptMapElementMap.from(val, owner: self) as? [ConceptMapElementMap]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"map\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.addObject("codeSystem")
				if let val = exist as? String {
					self.codeSystem = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"codeSystem\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"codeSystem\" but it is missing"))
			}
			if let exist: AnyObject = js["element"] {
				presentKeys.addObject("element")
				if let val = exist as? String {
					self.element = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"element\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"element\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
	
	/// equivalent | equal | wider | subsumes | narrower | specialises | inexact | unmatched | disjoint
	public var equivalence: String?
	
	/// Other concepts that this mapping also produces
	public var product: [ConceptMapElementDependsOn]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(equivalence: String?) {
		self.init(json: nil)
		if nil != equivalence {
			self.equivalence = equivalence
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.addObject("codeSystem")
				if let val = exist as? String {
					self.codeSystem = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"codeSystem\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comments"] {
				presentKeys.addObject("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comments\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["equivalence"] {
				presentKeys.addObject("equivalence")
				if let val = exist as? String {
					self.equivalence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"equivalence\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"equivalence\" but it is missing"))
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.addObject("product")
				if let val = exist as? [FHIRJSON] {
					self.product = ConceptMapElementDependsOn.from(val, owner: self) as? [ConceptMapElementDependsOn]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"product\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let equivalence = self.equivalence {
			json["equivalence"] = equivalence.asJSON()
		}
		if let product = self.product {
			json["product"] = ConceptMapElementDependsOn.asJSONArray(product)
		}
		
		return json
	}
}

