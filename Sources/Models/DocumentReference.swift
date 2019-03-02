//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A reference to a document.

A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be
discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient
centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
*/
open class DocumentReference: DomainResource {
	override open class var resourceType: String {
		get { return "DocumentReference" }
	}
	
	/// Who/what authenticated the document.
	public var authenticator: Reference?
	
	/// Who and/or what authored the document.
	public var author: [Reference]?
	
	/// Categorization of document.
	public var category: [CodeableConcept]?
	
	/// Document referenced.
	public var content: [DocumentReferenceContent]?
	
	/// Clinical context of document.
	public var context: DocumentReferenceContext?
	
	/// Organization which maintains the document.
	public var custodian: Reference?
	
	/// When this document reference was created.
	public var date: Instant?
	
	/// Human-readable description.
	public var description_fhir: FHIRString?
	
	/// The status of the underlying document.
	public var docStatus: CompositionStatus?
	
	/// Other identifiers for the document.
	public var identifier: [Identifier]?
	
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
	public convenience init(content: [DocumentReferenceContent], status: DocumentReferenceStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authenticator = createInstance(type: Reference.self, for: "authenticator", in: json, context: &instCtx, owner: self) ?? authenticator
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		content = createInstances(of: DocumentReferenceContent.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if (nil == content || content!.isEmpty) && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		context = createInstance(type: DocumentReferenceContext.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		custodian = createInstance(type: Reference.self, for: "custodian", in: json, context: &instCtx, owner: self) ?? custodian
		date = createInstance(type: Instant.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		docStatus = createEnum(type: CompositionStatus.self, for: "docStatus", in: json, context: &instCtx) ?? docStatus
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		masterIdentifier = createInstance(type: Identifier.self, for: "masterIdentifier", in: json, context: &instCtx, owner: self) ?? masterIdentifier
		relatesTo = createInstances(of: DocumentReferenceRelatesTo.self, for: "relatesTo", in: json, context: &instCtx, owner: self) ?? relatesTo
		securityLabel = createInstances(of: CodeableConcept.self, for: "securityLabel", in: json, context: &instCtx, owner: self) ?? securityLabel
		status = createEnum(type: DocumentReferenceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authenticator?.decorate(json: &json, withKey: "authenticator", errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
		if nil == content || self.content!.isEmpty {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.custodian?.decorate(json: &json, withKey: "custodian", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.docStatus?.decorate(json: &json, withKey: "docStatus", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.masterIdentifier?.decorate(json: &json, withKey: "masterIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatesTo", using: self.relatesTo, errors: &errors)
		arrayDecorate(json: &json, withKey: "securityLabel", using: self.securityLabel, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
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
	public var encounter: [Reference]?
	
	/// Main clinical acts documented.
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen.
	public var facilityType: CodeableConcept?
	
	/// Time of service that is being documented.
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty).
	public var practiceSetting: CodeableConcept?
	
	/// Related identifiers or resources.
	public var related: [Reference]?
	
	/// Patient demographics from source.
	public var sourcePatientInfo: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		encounter = createInstances(of: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		event = createInstances(of: CodeableConcept.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		facilityType = createInstance(type: CodeableConcept.self, for: "facilityType", in: json, context: &instCtx, owner: self) ?? facilityType
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		practiceSetting = createInstance(type: CodeableConcept.self, for: "practiceSetting", in: json, context: &instCtx, owner: self) ?? practiceSetting
		related = createInstances(of: Reference.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		sourcePatientInfo = createInstance(type: Reference.self, for: "sourcePatientInfo", in: json, context: &instCtx, owner: self) ?? sourcePatientInfo
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "encounter", using: self.encounter, errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		self.facilityType?.decorate(json: &json, withKey: "facilityType", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.practiceSetting?.decorate(json: &json, withKey: "practiceSetting", errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.sourcePatientInfo?.decorate(json: &json, withKey: "sourcePatientInfo", errors: &errors)
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

