//
//  DocumentManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A manifest that defines a set of documents.
*/
open class DocumentManifest: DomainResource {
	override open class var resourceType: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the manifest.
	public var author: [Reference]?
	
	/// The items included.
	public var content: [DocumentManifestContent]?
	
	/// When this document manifest created.
	public var created: DateTime?
	
	/// Human-readable description (title).
	public var description_fhir: FHIRString?
	
	/// Other identifiers for the manifest.
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents.
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents.
	public var recipient: [Reference]?
	
	/// Related things.
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software.
	public var source: FHIRURL?
	
	/// The status of this document manifest.
	public var status: DocumentReferenceStatus?
	
	/// The subject of the set of documents.
	public var subject: Reference?
	
	/// Kind of document set.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [DocumentManifestContent], status: DocumentReferenceStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		author = try createInstances(of: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		content = try createInstances(of: DocumentManifestContent.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? content
		if (nil == content || content!.isEmpty) && !presentKeys.contains("content") {
			errors.append(FHIRValidationError(missing: "content"))
		}
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		masterIdentifier = try createInstance(type: Identifier.self, for: "masterIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? masterIdentifier
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		related = try createInstances(of: DocumentManifestRelated.self, for: "related", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? related
		source = try createInstance(type: FHIRURL.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		status = createEnum(type: DocumentReferenceStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
		if nil == content || self.content!.isEmpty {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.masterIdentifier?.decorate(json: &json, withKey: "masterIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
The items included.

The list of Documents included in the manifest.
*/
open class DocumentManifestContent: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentManifestContent" }
	}
	
	/// Contents of this set of documents.
	public var pAttachment: Attachment?
	
	/// Contents of this set of documents.
	public var pReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(p: Any) {
		self.init()
		if let value = p as? Attachment {
			self.pAttachment = value
		}
		else if let value = p as? Reference {
			self.pReference = value
		}
		else {
			fhir_warn("Type “\(type(of: p))” for property “\(p)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		pAttachment = try createInstance(type: Attachment.self, for: "pAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? pAttachment
		pReference = try createInstance(type: Reference.self, for: "pReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? pReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.pAttachment && nil == self.pReference {
			errors.append(FHIRValidationError(missing: "p[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.pAttachment?.decorate(json: &json, withKey: "pAttachment", errors: &errors)
		self.pReference?.decorate(json: &json, withKey: "pReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.pAttachment && nil == self.pReference {
			errors.append(FHIRValidationError(missing: "p[x]"))
		}
	}
}


/**
Related things.

Related identifiers or resources associated with the DocumentManifest.
*/
open class DocumentManifestRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentManifestRelated" }
	}
	
	/// Identifiers of things that are related.
	public var identifier: Identifier?
	
	/// Related Resource.
	public var ref: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		ref = try createInstance(type: Reference.self, for: "ref", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ref
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.ref?.decorate(json: &json, withKey: "ref", errors: &errors)
	}
}

