//
//  DataElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DataElement) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Resource data element.

The formal description of a single piece of information that can be gathered and reported.
*/
open class DataElement: DomainResource {
	override open class var resourceType: String {
		get { return "DataElement" }
	}
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Definition of element.
	public var element: [ElementDefinition]?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the data element.
	public var identifier: [Identifier]?
	
	/// Intended jurisdiction for data element (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// External specification mapped to.
	public var mapping: [DataElementMapping]?
	
	/// Name for this data element (computer friendly).
	public var name: FHIRString?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// The status of this data element. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Identifies how precise the data element is in its definition.
	public var stringency: DataElementStringency?
	
	/// Name for this data element (human friendly).
	public var title: FHIRString?
	
	/// Logical URI to reference this data element (globally unique).
	public var url: FHIRURL?
	
	/// Context the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the data element.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(element: [ElementDefinition], status: PublicationStatus) {
		self.init()
		self.element = element
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		element = createInstances(of: ElementDefinition.self, for: "element", in: json, context: &instCtx, owner: self) ?? element
		if (nil == element || element!.isEmpty) && !instCtx.containsKey("element") {
			instCtx.addError(FHIRValidationError(missing: "element"))
		}
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		mapping = createInstances(of: DataElementMapping.self, for: "mapping", in: json, context: &instCtx, owner: self) ?? mapping
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		stringency = createEnum(type: DataElementStringency.self, for: "stringency", in: json, context: &instCtx) ?? stringency
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "element", using: self.element, errors: &errors)
		if nil == element || self.element!.isEmpty {
			errors.append(FHIRValidationError(missing: "element"))
		}
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "mapping", using: self.mapping, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.stringency?.decorate(json: &json, withKey: "stringency", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
	}
}


/**
External specification mapped to.

Identifies a specification (other than a terminology) that the elements which make up the DataElement have some
correspondence with.
*/
open class DataElementMapping: BackboneElement {
	override open class var resourceType: String {
		get { return "DataElementMapping" }
	}
	
	/// Versions, issues, scope limitations, etc..
	public var comment: FHIRString?
	
	/// Internal id when this mapping is used.
	public var identity: FHIRString?
	
	/// Names what this mapping refers to.
	public var name: FHIRString?
	
	/// Identifies what this mapping refers to.
	public var uri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: FHIRString) {
		self.init()
		self.identity = identity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		identity = createInstance(type: FHIRString.self, for: "identity", in: json, context: &instCtx, owner: self) ?? identity
		if nil == identity && !instCtx.containsKey("identity") {
			instCtx.addError(FHIRValidationError(missing: "identity"))
		}
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		uri = createInstance(type: FHIRURL.self, for: "uri", in: json, context: &instCtx, owner: self) ?? uri
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.identity?.decorate(json: &json, withKey: "identity", errors: &errors)
		if nil == self.identity {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.uri?.decorate(json: &json, withKey: "uri", errors: &errors)
	}
}

