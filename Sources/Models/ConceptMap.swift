//
//  ConceptMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ConceptMap) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A map from one set of concepts to one or more other concepts.
 *
 *  A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
 *  elements, or classes in class models.
 */
public class ConceptMap: DomainResource {
	override public class var resourceName: String {
		get { return "ConceptMap" }
	}
	
	/// Contact details of the publisher.
	public var contact: [ConceptMapContact]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date for given status.
	public var date: DateTime?
	
	/// Human language description of the concept map.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Same source and target systems.
	public var group: [ConceptMapGroup]?
	
	/// Additional identifier for the concept map.
	public var identifier: Identifier?
	
	/// Informal name for this concept map.
	public var name: String?
	
	/// Name of the publisher (organization or individual).
	public var publisher: String?
	
	/// Why needed.
	public var requirements: String?
	
	/// Identifies the source of the concepts which are being mapped.
	public var sourceReference: Reference?
	
	/// Identifies the source of the concepts which are being mapped.
	public var sourceUri: NSURL?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Provides context to the mappings.
	public var targetReference: Reference?
	
	/// Provides context to the mappings.
	public var targetUri: NSURL?
	
	/// Globally unique logical id for concept map.
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the concept map.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sourceReference: Reference, sourceUri: NSURL, status: String, targetReference: Reference, targetUri: NSURL) {
		self.init(json: nil)
		self.sourceReference = sourceReference
		self.sourceUri = sourceUri
		self.status = status
		self.targetReference = targetReference
		self.targetUri = targetUri
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ConceptMapContact.from(val, owner: self) as? [ConceptMapContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.insert("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(FHIRJSONError(key: "copyright", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = ConceptMapGroup.from(val, owner: self) as? [ConceptMapGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourceReference"] {
				presentKeys.insert("sourceReference")
				if let val = exist as? FHIRJSON {
					self.sourceReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourceUri"] {
				presentKeys.insert("sourceUri")
				if let val = exist as? String {
					self.sourceUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "sourceUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["targetReference"] {
				presentKeys.insert("targetReference")
				if let val = exist as? FHIRJSON {
					self.targetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetUri"] {
				presentKeys.insert("targetUri")
				if let val = exist as? String {
					self.targetUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "targetUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.sourceUri && nil == self.sourceReference {
				errors.append(FHIRJSONError(key: "source*"))
			}
			if nil == self.targetUri && nil == self.targetReference {
				errors.append(FHIRJSONError(key: "target*"))
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
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let group = self.group {
			json["group"] = ConceptMapGroup.asJSONArray(group)
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
public class ConceptMapContact: BackboneElement {
	override public class var resourceName: String {
		get { return "ConceptMapContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
 *  Same source and target systems.
 *
 *  A group of mappings that all have the same source and target system.
 */
public class ConceptMapGroup: BackboneElement {
	override public class var resourceName: String {
		get { return "ConceptMapGroup" }
	}
	
	/// Mappings for a concept from the source set.
	public var element: [ConceptMapGroupElement]?
	
	/// Code System (if value set crosses code systems).
	public var source: NSURL?
	
	/// Specific version of the  code system.
	public var sourceVersion: String?
	
	/// System of the target (if necessary).
	public var target: NSURL?
	
	/// Specific version of the  code system.
	public var targetVersion: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ConceptMapGroupElement], source: NSURL) {
		self.init(json: nil)
		self.element = element
		self.source = source
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["element"] {
				presentKeys.insert("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ConceptMapGroupElement.from(val, owner: self) as? [ConceptMapGroupElement]
				}
				else {
					errors.append(FHIRJSONError(key: "element", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "element"))
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? String {
					self.source = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "source"))
			}
			if let exist: AnyObject = js["sourceVersion"] {
				presentKeys.insert("sourceVersion")
				if let val = exist as? String {
					self.sourceVersion = val
				}
				else {
					errors.append(FHIRJSONError(key: "sourceVersion", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? String {
					self.target = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetVersion"] {
				presentKeys.insert("targetVersion")
				if let val = exist as? String {
					self.targetVersion = val
				}
				else {
					errors.append(FHIRJSONError(key: "targetVersion", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = ConceptMapGroupElement.asJSONArray(element)
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let sourceVersion = self.sourceVersion {
			json["sourceVersion"] = sourceVersion.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		if let targetVersion = self.targetVersion {
			json["targetVersion"] = targetVersion.asJSON()
		}
		
		return json
	}
}


/**
 *  Mappings for a concept from the source set.
 *
 *  Mappings for an individual concept in the source to one or more concepts in the target.
 */
public class ConceptMapGroupElement: BackboneElement {
	override public class var resourceName: String {
		get { return "ConceptMapGroupElement" }
	}
	
	/// Identifies element being mapped.
	public var code: String?
	
	/// Concept in target system for element.
	public var target: [ConceptMapGroupElementTarget]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? [FHIRJSON] {
					self.target = ConceptMapGroupElementTarget.from(val, owner: self) as? [ConceptMapGroupElementTarget]
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let target = self.target {
			json["target"] = ConceptMapGroupElementTarget.asJSONArray(target)
		}
		
		return json
	}
}


/**
 *  Concept in target system for element.
 *
 *  A concept from the target value set that this concept maps to.
 */
public class ConceptMapGroupElementTarget: BackboneElement {
	override public class var resourceName: String {
		get { return "ConceptMapGroupElementTarget" }
	}
	
	/// Code that identifies the target element.
	public var code: String?
	
	/// Description of status/issues in mapping.
	public var comments: String?
	
	/// Other elements required for this mapping (from context).
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// equivalent | equal | wider | subsumes | narrower | specializes | inexact | unmatched | disjoint.
	public var equivalence: String?
	
	/// Other concepts that this mapping also produces.
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["comments"] {
				presentKeys.insert("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(FHIRJSONError(key: "comments", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dependsOn"] {
				presentKeys.insert("dependsOn")
				if let val = exist as? [FHIRJSON] {
					self.dependsOn = ConceptMapGroupElementTargetDependsOn.from(val, owner: self) as? [ConceptMapGroupElementTargetDependsOn]
				}
				else {
					errors.append(FHIRJSONError(key: "dependsOn", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["equivalence"] {
				presentKeys.insert("equivalence")
				if let val = exist as? String {
					self.equivalence = val
				}
				else {
					errors.append(FHIRJSONError(key: "equivalence", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["product"] {
				presentKeys.insert("product")
				if let val = exist as? [FHIRJSON] {
					self.product = ConceptMapGroupElementTargetDependsOn.from(val, owner: self) as? [ConceptMapGroupElementTargetDependsOn]
				}
				else {
					errors.append(FHIRJSONError(key: "product", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let dependsOn = self.dependsOn {
			json["dependsOn"] = ConceptMapGroupElementTargetDependsOn.asJSONArray(dependsOn)
		}
		if let equivalence = self.equivalence {
			json["equivalence"] = equivalence.asJSON()
		}
		if let product = self.product {
			json["product"] = ConceptMapGroupElementTargetDependsOn.asJSONArray(product)
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
public class ConceptMapGroupElementTargetDependsOn: BackboneElement {
	override public class var resourceName: String {
		get { return "ConceptMapGroupElementTargetDependsOn" }
	}
	
	/// Value of the referenced element.
	public var code: String?
	
	/// Reference to property mapping depends on.
	public var property: NSURL?
	
	/// Code System (if necessary).
	public var system: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, property: NSURL) {
		self.init(json: nil)
		self.code = code
		self.property = property
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["property"] {
				presentKeys.insert("property")
				if let val = exist as? String {
					self.property = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "property", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "property"))
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? String {
					self.system = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: String.self, has: exist.dynamicType))
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
		if let property = self.property {
			json["property"] = property.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		
		return json
	}
}

