//
//  ConceptMap.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/ConceptMap) on 2017-02-23.
//  2017, SMART Health IT.
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
	public var experimental: FHIRBool?
	
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
	public var sourceUri: FHIRURL?
	
	/// The status of this concept map. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Provides context to the mappings.
	public var targetReference: Reference?
	
	/// Provides context to the mappings.
	public var targetUri: FHIRURL?
	
	/// Name for this concept map (Human friendly).
	public var title: FHIRString?
	
	/// Logical uri to reference this concept map (globally unique).
	public var url: FHIRURL?
	
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
		
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		copyright = try createInstance(type: FHIRString.self, for: "copyright", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? copyright
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		group = try createInstances(of: ConceptMapGroup.self, for: "group", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? group
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		sourceReference = try createInstance(type: Reference.self, for: "sourceReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceReference
		sourceUri = try createInstance(type: FHIRURL.self, for: "sourceUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceUri
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		targetReference = try createInstance(type: Reference.self, for: "targetReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetReference
		targetUri = try createInstance(type: FHIRURL.self, for: "targetUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetUri
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "group", using: self.group, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.sourceReference?.decorate(json: &json, withKey: "sourceReference", errors: &errors)
		self.sourceUri?.decorate(json: &json, withKey: "sourceUri", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.targetReference?.decorate(json: &json, withKey: "targetReference", errors: &errors)
		self.targetUri?.decorate(json: &json, withKey: "targetUri", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
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
	public var source: FHIRURL?
	
	/// Specific version of the  code system.
	public var sourceVersion: FHIRString?
	
	/// System of the target (if necessary).
	public var target: FHIRURL?
	
	/// Specific version of the  code system.
	public var targetVersion: FHIRString?
	
	/// When no match in the mappings.
	public var unmapped: ConceptMapGroupUnmapped?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ConceptMapGroupElement]) {
		self.init()
		self.element = element
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		element = try createInstances(of: ConceptMapGroupElement.self, for: "element", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !presentKeys.contains("element") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "element"))
		}
		source = try createInstance(type: FHIRURL.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		sourceVersion = try createInstance(type: FHIRString.self, for: "sourceVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourceVersion
		target = try createInstance(type: FHIRURL.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		targetVersion = try createInstance(type: FHIRString.self, for: "targetVersion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetVersion
		unmapped = try createInstance(type: ConceptMapGroupUnmapped.self, for: "unmapped", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? unmapped
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "element", using: self.element, errors: &errors)
		if nil == element || self.element!.isEmpty {
			errors.append(FHIRValidationError(missing: "element"))
		}
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.sourceVersion?.decorate(json: &json, withKey: "sourceVersion", errors: &errors)
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
		self.targetVersion?.decorate(json: &json, withKey: "targetVersion", errors: &errors)
		self.unmapped?.decorate(json: &json, withKey: "unmapped", errors: &errors)
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
	
	/// Display for the code.
	public var display: FHIRString?
	
	/// Concept in target system for element.
	public var target: [ConceptMapGroupElementTarget]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		target = try createInstances(of: ConceptMapGroupElementTarget.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		arrayDecorate(json: &json, withKey: "target", using: self.target, errors: &errors)
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
	public var comment: FHIRString?
	
	/// Other elements required for this mapping (from context).
	public var dependsOn: [ConceptMapGroupElementTargetDependsOn]?
	
	/// Display for the code.
	public var dependsOndisplay: FHIRString?
	
	/// Display for the code.
	public var display: FHIRString?
	
	/// The equivalence between the source and target concepts (counting for the dependencies and products). The
	/// equivalence is read from target to source (e.g. the target is 'wider' than the source).
	public var equivalence: ConceptMapEquivalence?
	
	/// Other concepts that this mapping also produces.
	public var product: [ConceptMapGroupElementTargetDependsOn]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		dependsOn = try createInstances(of: ConceptMapGroupElementTargetDependsOn.self, for: "dependsOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dependsOn
		dependsOndisplay = try createInstance(type: FHIRString.self, for: "dependsOndisplay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dependsOndisplay
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		equivalence = createEnum(type: ConceptMapEquivalence.self, for: "equivalence", in: json, presentKeys: &presentKeys, errors: &errors) ?? equivalence
		product = try createInstances(of: ConceptMapGroupElementTargetDependsOn.self, for: "product", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? product
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "dependsOn", using: self.dependsOn, errors: &errors)
		self.dependsOndisplay?.decorate(json: &json, withKey: "dependsOndisplay", errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.equivalence?.decorate(json: &json, withKey: "equivalence", errors: &errors)
		arrayDecorate(json: &json, withKey: "product", using: self.product, errors: &errors)
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
	public var property: FHIRURL?
	
	/// Code System (if necessary).
	public var system: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, property: FHIRURL) {
		self.init()
		self.code = code
		self.property = property
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "code"))
		}
		property = try createInstance(type: FHIRURL.self, for: "property", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? property
		if nil == property && !presentKeys.contains("property") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "property"))
		}
		system = try createInstance(type: FHIRURL.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.property?.decorate(json: &json, withKey: "property", errors: &errors)
		if nil == self.property {
			errors.append(FHIRValidationError(missing: "property"))
		}
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
	}
}


/**
When no match in the mappings.

What to do when there is no match in the mappings in the group.
*/
open class ConceptMapGroupUnmapped: BackboneElement {
	override open class var resourceType: String {
		get { return "ConceptMapGroupUnmapped" }
	}
	
	/// Fixed code when mode = fixed.
	public var code: FHIRString?
	
	/// Display for the code.
	public var display: FHIRString?
	
	/// Defines which action to take if there is no match in the group. One of 3 actions is possible: use the unmapped
	/// code (this is useful when doing a mapping between versions, and only a few codes have changed), use a fixed code
	/// (a default code), or alternatively, a reference to a different concept map can be provided (by canonical URL).
	public var mode: ConceptMapGroupUnmappedMode?
	
	/// Canonical URL for other concept map.
	public var url: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: ConceptMapGroupUnmappedMode) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		display = try createInstance(type: FHIRString.self, for: "display", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? display
		mode = createEnum(type: ConceptMapGroupUnmappedMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if nil == mode && !presentKeys.contains("mode") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.display?.decorate(json: &json, withKey: "display", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
	}
}

