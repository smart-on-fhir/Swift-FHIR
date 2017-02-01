//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A reference to a document.

A reference to a document .
*/
open class DocumentReference: DomainResource {
	override open class var resourceType: String {
		get { return "DocumentReference" }
	}
	
	/// Categorization of document.
	public var `class`: CodeableConcept?
	
	/// Who/what authenticated the document.
	public var authenticator: Reference?
	
	/// Who and/or what authored the document.
	public var author: [Reference]?
	
	/// Document referenced.
	public var content: [DocumentReferenceContent]?
	
	/// Clinical context of document.
	public var context: DocumentReferenceContext?
	
	/// Document creation time.
	public var created: DateTime?
	
	/// Organization which maintains the document.
	public var custodian: Reference?
	
	/// Human-readable description (title).
	public var description_fhir: FHIRString?
	
	/// preliminary | final | appended | amended | entered-in-error.
	public var docStatus: CodeableConcept?
	
	/// Other identifiers for the document.
	public var identifier: [Identifier]?
	
	/// When this document reference created.
	public var indexed: Instant?
	
	/// Master Version Specific Identifier.
	public var masterIdentifier: Identifier?
	
	/// Relationships to other documents.
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// Document security-tags.
	public var securityLabel: [CodeableConcept]?
	
	/// The status of this document reference.
	public var status: DocumentReferenceStatus?
	
	/// Who/what is the subject of the document.
	public var subject: Reference?
	
	/// Kind of document (LOINC if possible).
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [DocumentReferenceContent], indexed: Instant, status: DocumentReferenceStatus, type: CodeableConcept) {
		self.init()
		self.content = content
		self.indexed = indexed
		self.status = status
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		`class` = try createInstance(type: CodeableConcept.self, for: "class", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? `class`
		authenticator = try createInstance(type: Reference.self, for: "authenticator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authenticator
		author = try createInstances(of: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		content = try createInstances(of: DocumentReferenceContent.self, for: "content", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? content
		if (nil == content || content!.isEmpty) && !presentKeys.contains("content") {
			errors.append(FHIRValidationError(missing: "content"))
		}
		context = try createInstance(type: DocumentReferenceContext.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		created = try createInstance(type: DateTime.self, for: "created", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? created
		custodian = try createInstance(type: Reference.self, for: "custodian", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? custodian
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		docStatus = try createInstance(type: CodeableConcept.self, for: "docStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? docStatus
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		indexed = try createInstance(type: Instant.self, for: "indexed", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? indexed
		if nil == indexed && !presentKeys.contains("indexed") {
			errors.append(FHIRValidationError(missing: "indexed"))
		}
		masterIdentifier = try createInstance(type: Identifier.self, for: "masterIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? masterIdentifier
		relatesTo = try createInstances(of: DocumentReferenceRelatesTo.self, for: "relatesTo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatesTo
		securityLabel = try createInstances(of: CodeableConcept.self, for: "securityLabel", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? securityLabel
		status = createEnum(type: DocumentReferenceStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		self.authenticator?.decorate(json: &json, withKey: "authenticator", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
		if nil == content || self.content!.isEmpty {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.custodian?.decorate(json: &json, withKey: "custodian", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.docStatus?.decorate(json: &json, withKey: "docStatus", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.indexed?.decorate(json: &json, withKey: "indexed", errors: &errors)
		if nil == self.indexed {
			errors.append(FHIRValidationError(missing: "indexed"))
		}
		self.masterIdentifier?.decorate(json: &json, withKey: "masterIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatesTo", using: self.relatesTo, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Document referenced.

The document and format referenced. There may be multiple content element repetitions, each with a different format.
*/
open class DocumentReferenceContent: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContent" }
	}
	
	/// Where to access the document.
	public var attachment: Attachment?
	
	/// Format/content rules for the document.
	public var format: [Coding]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(attachment: Attachment) {
		self.init()
		self.attachment = attachment
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		attachment = try createInstance(type: Attachment.self, for: "attachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? attachment
		if nil == attachment && !presentKeys.contains("attachment") {
			errors.append(FHIRValidationError(missing: "attachment"))
		}
		format = try createInstances(of: Coding.self, for: "format", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? format
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attachment?.decorate(json: &json, withKey: "attachment", errors: &errors)
		if nil == self.attachment {
			errors.append(FHIRValidationError(missing: "attachment"))
		}
		arrayDecorate(json: &json, withKey: "format", using: self.format, errors: &errors)
	}
}


/**
Clinical context of document.

The clinical context in which the document was prepared.
*/
open class DocumentReferenceContext: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContext" }
	}
	
	/// Context of the document  content.
	public var encounter: Reference?
	
	/// Main Clinical Acts Documented.
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen.
	public var facilityType: CodeableConcept?
	
	/// Time of service that is being documented.
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty).
	public var practiceSetting: CodeableConcept?
	
	/// Related identifiers or resources.
	public var related: [DocumentReferenceContextRelated]?
	
	/// Patient demographics from source.
	public var sourcePatientInfo: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		event = try createInstances(of: CodeableConcept.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		facilityType = try createInstance(type: CodeableConcept.self, for: "facilityType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? facilityType
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		practiceSetting = try createInstance(type: CodeableConcept.self, for: "practiceSetting", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? practiceSetting
		related = try createInstances(of: DocumentReferenceContextRelated.self, for: "related", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? related
		sourcePatientInfo = try createInstance(type: Reference.self, for: "sourcePatientInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sourcePatientInfo
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		self.facilityType?.decorate(json: &json, withKey: "facilityType", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.practiceSetting?.decorate(json: &json, withKey: "practiceSetting", errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.sourcePatientInfo?.decorate(json: &json, withKey: "sourcePatientInfo", errors: &errors)
	}
}


/**
Related identifiers or resources.

Related identifiers or resources associated with the DocumentReference.
*/
open class DocumentReferenceContextRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceContextRelated" }
	}
	
	/// Identifier of related objects or events.
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


/**
Relationships to other documents.

Relationships that this document has with other document references that already exist.
*/
open class DocumentReferenceRelatesTo: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentReferenceRelatesTo" }
	}
	
	/// The type of relationship that this document has with anther document.
	public var code: DocumentRelationshipType?
	
	/// Target of the relationship.
	public var target: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: DocumentRelationshipType, target: Reference) {
		self.init()
		self.code = code
		self.target = target
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: DocumentRelationshipType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		target = try createInstance(type: Reference.self, for: "target", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? target
		if nil == target && !presentKeys.contains("target") {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.target?.decorate(json: &json, withKey: "target", errors: &errors)
		if nil == self.target {
			errors.append(FHIRValidationError(missing: "target"))
		}
	}
}

