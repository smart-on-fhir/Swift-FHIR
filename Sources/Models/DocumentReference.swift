//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A reference to a document.
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
	
	/// The status of the underlying document.
	public var docStatus: CompositionStatus?
	
	/// Other identifiers for the document.
	public var identifier: [Identifier]?
	
	/// When this document reference was created.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		`class` = createInstance(type: CodeableConcept.self, for: "class", in: json, context: &instCtx, owner: self) ?? `class`
		authenticator = createInstance(type: Reference.self, for: "authenticator", in: json, context: &instCtx, owner: self) ?? authenticator
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		content = createInstances(of: DocumentReferenceContent.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if (nil == content || content!.isEmpty) && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		context = createInstance(type: DocumentReferenceContext.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		custodian = createInstance(type: Reference.self, for: "custodian", in: json, context: &instCtx, owner: self) ?? custodian
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		docStatus = createEnum(type: CompositionStatus.self, for: "docStatus", in: json, context: &instCtx) ?? docStatus
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		indexed = createInstance(type: Instant.self, for: "indexed", in: json, context: &instCtx, owner: self) ?? indexed
		if nil == indexed && !instCtx.containsKey("indexed") {
			instCtx.addError(FHIRValidationError(missing: "indexed"))
		}
		masterIdentifier = createInstance(type: Identifier.self, for: "masterIdentifier", in: json, context: &instCtx, owner: self) ?? masterIdentifier
		relatesTo = createInstances(of: DocumentReferenceRelatesTo.self, for: "relatesTo", in: json, context: &instCtx, owner: self) ?? relatesTo
		securityLabel = createInstances(of: CodeableConcept.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		status = createEnum(type: DocumentReferenceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
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
	public var format: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(attachment: Attachment) {
		self.init()
		self.attachment = attachment
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attachment = createInstance(type: Attachment.self, for: "attachment", in: json, context: &instCtx, owner: self) ?? attachment
		if nil == attachment && !instCtx.containsKey("attachment") {
			instCtx.addError(FHIRValidationError(missing: "attachment"))
		}
		format = createInstance(type: Coding.self, for: "format", in: json, context: &instCtx, owner: self) ?? format
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.attachment?.decorate(json: &json, withKey: "attachment", errors: &errors)
		if nil == self.attachment {
			errors.append(FHIRValidationError(missing: "attachment"))
		}
		self.format?.decorate(json: &json, withKey: "format", errors: &errors)
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
	
	/// Main clinical acts documented.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		event = createInstances(of: CodeableConcept.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		facilityType = createInstance(type: CodeableConcept.self, for: "facilityType", in: json, context: &instCtx, owner: self) ?? facilityType
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		practiceSetting = createInstance(type: CodeableConcept.self, for: "practiceSetting", in: json, context: &instCtx, owner: self) ?? practiceSetting
		related = createInstances(of: DocumentReferenceContextRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		sourcePatientInfo = createInstance(type: Reference.self, for: "sourcePatientInfo", in: json, context: &instCtx, owner: self) ?? sourcePatientInfo
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ref = createInstance(type: Reference.self, for: "ref", in: json, context: &instCtx, owner: self) ?? ref
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: DocumentRelationshipType.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		target = createInstance(type: Reference.self, for: "target", in: json, context: &instCtx, owner: self) ?? target
		if nil == target && !instCtx.containsKey("target") {
			instCtx.addError(FHIRValidationError(missing: "target"))
		}
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

