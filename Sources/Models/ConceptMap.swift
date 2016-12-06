//
//  ConceptMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ConceptMap) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A map from one set of concepts to one or more other concepts.

A statement of relationships from one set of concepts to one or more other concepts - either code systems or data
elements, or classes in class models.
*/
open class ConceptMap: DomainResource {
	override open class var resourceType: String {
		get { return "ConceptMap" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the concept map.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Same source and target systems.
	public var group: [ConceptMapGroup]?
	
	/// Additional identifier for the concept map.
	public var identifier: Identifier?
	
	/// Intended jurisdiction for concept map (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this concept map (Computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this concept map is defined.
	public var purpose: FHIRString?
	
	/// Identifies the source of the concepts which are being mapped.
	public var sourceReference: Reference?
	
	/// Identifies the source of the concepts which are being mapped.
	public var sourceUri: URL?
	
	/// The status of this concept map. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Provides context to the mappings.
	public var targetReference: Reference?
	
	/// Provides context to the mappings.
	public var targetUri: URL?
	
	/// Name for this concept map (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this concept map (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the concept map.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? [FHIRJSON] {
				do {
					self.group = try ConceptMapGroup.instantiate(fromArray: val, owner: self) as? [ConceptMapGroup]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "group"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceReference"] {
			presentKeys.insert("sourceReference")
			if let val = exist as? FHIRJSON {
				do {
					self.sourceReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourceReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourceReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourceUri"] {
			presentKeys.insert("sourceUri")
			if let val = exist as? String {
				self.sourceUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sourceUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["targetReference"] {
			presentKeys.insert("targetReference")
			if let val = exist as? FHIRJSON {
				do {
					self.targetReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "targetReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "targetReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetUri"] {
			presentKeys.insert("targetUri")
			if let val = exist as? String {
				self.targetUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "targetUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
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
			json["group"] = group.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let sourceReference = self.sourceReference {
			json["sourceReference"] = sourceReference.asJSON(errors: &errors)
		}
		if let sourceUri = self.sourceUri {
			json["sourceUri"] = sourceUri.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let targetReference = self.targetReference {
			json["targetReference"] = targetReference.asJSON(errors: &errors)
		}
		if let targetUri = self.targetUri {
			json["targetUri"] = targetUri.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
Same source and target systems.

A group of mappings that all have the same source and target system.
*/
open class ConceptMapGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "ConceptMapGroup" }
	}
	
	/// Mappings for a concept from the source set.
	public var element: [ConceptMapGroupElement]?
	
	/// Code System (if value set crosses code systems).
	public var source: URL?
	
	/// Specific version of the  code system.
	public var sourceVersion: FHIRString?
	
	/// System of the target (if necessary).
	public var target: URL?
	
	/// Specific version of the  code system.
	public var targetVersion: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ConceptMapGroupElement], source: URL) {
		self.init()
		self.element = element
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["element"] {
			presentKeys.insert("element")
			if let val = exist as? [FHIRJSON] {
				do {
					self.element = try ConceptMapGroupElement.instantiate(fromArray: val, owner: self) as? [ConceptMapGroupElement]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "element"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "element", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? String {
				self.source = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
		}
		if let exist = json["sourceVersion"] {
			presentKeys.insert("sourceVersion")
			if let val = exist as? String {
				self.sourceVersion = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sourceVersion", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? String {
				self.target = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetVersion"] {
			presentKeys.insert("targetVersion")
			if let val = exist as? String {
				self.targetVersion = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "targetVersion", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let element = self.element {
			json["element"] = element.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "element"))
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "source"))
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
Mappings for a concept from the source set.

Mappings for an individual concept in the source to one or more concepts in the target.
*/
open class ConceptMapGroupElement: BackboneElement {
	override open class var resourceType: String {
		get { return "ConceptMapGroupElement" }
	}
	
	/// Identifies element being mapped.
	public var code: FHIRString?
	
	/// Concept in target system for element.
	public var target: [ConceptMapGroupElementTarget]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? [FHIRJSON] {
				do {
					self.target = try ConceptMapGroupElementTarget.instantiate(fromArray: val, owner: self) as? [ConceptMapGroupElementTarget]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let target = self.target {
			json["target"] = target.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Concept in target system for element.

A concept from the target value set that this concept maps to.
*/
open class ConceptMapGroupElementTarget: BackboneElement {
	override open class var resourceType: String {
		get { return "ConceptMapGroupElementTarget" }
	}
	
	/// Code that identifies the target element.
	public var code: FHIRString?
	
	/// Description of status/issues in mapping.
	public var comments: FHIRString?
	
	/// Other elements required for this mapping (from context).
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	public var equivalence: ConceptMapEquivalence?
	
	/// Other concepts that this mapping also produces.
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["comments"] {
			presentKeys.insert("comments")
			if let val = exist as? String {
				self.comments = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comments", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["dependsOn"] {
			presentKeys.insert("dependsOn")
			if let val = exist as? [FHIRJSON] {
				do {
					self.dependsOn = try ConceptMapGroupElementTargetDependsOn.instantiate(fromArray: val, owner: self) as? [ConceptMapGroupElementTargetDependsOn]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "dependsOn"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "dependsOn", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["equivalence"] {
			presentKeys.insert("equivalence")
			if let val = exist as? String {
				if let enumval = ConceptMapEquivalence(rawValue: val) {
					self.equivalence = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "equivalence", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "equivalence", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["product"] {
			presentKeys.insert("product")
			if let val = exist as? [FHIRJSON] {
				do {
					self.product = try ConceptMapGroupElementTargetDependsOn.instantiate(fromArray: val, owner: self) as? [ConceptMapGroupElementTargetDependsOn]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "product"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "product", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let dependsOn = self.dependsOn {
			json["dependsOn"] = dependsOn.map() { $0.asJSON(errors: &errors) }
		}
		if let equivalence = self.equivalence {
			json["equivalence"] = equivalence.rawValue
		}
		if let product = self.product {
			json["product"] = product.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
Other elements required for this mapping (from context).

A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can
be resolved, and it has the specified value.
*/
open class ConceptMapGroupElementTargetDependsOn: BackboneElement {
	override open class var resourceType: String {
		get { return "ConceptMapGroupElementTargetDependsOn" }
	}
	
	/// Value of the referenced element.
	public var code: FHIRString?
	
	/// Reference to property mapping depends on.
	public var property: URL?
	
	/// Code System (if necessary).
	public var system: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, property: URL) {
		self.init()
		self.code = code
		self.property = property
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["property"] {
			presentKeys.insert("property")
			if let val = exist as? String {
				self.property = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "property", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "property"))
		}
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? String {
				self.system = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let property = self.property {
			json["property"] = property.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "property"))
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		
		return json
	}
}

