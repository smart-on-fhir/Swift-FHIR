//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Composition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A set of resources composed into a single coherent clinical statement with clinical attestation.

A set of healthcare-related information that is assembled together into a single logical package that provides a single
coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is
making the statement. A Composition defines the structure and narrative content necessary for a document. However, a
Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where
Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the
Bundle (for example Patient, Practitioner, Encounter, etc.).
*/
open class Composition: DomainResource {
	override open class var resourceType: String {
		get { return "Composition" }
	}
	
	/// Attests to accuracy of composition.
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition.
	public var author: [Reference]?
	
	/// Categorization of Composition.
	public var category: [CodeableConcept]?
	
	/// As defined by affinity domain.
	public var confidentiality: FHIRString?
	
	/// Organization which maintains the composition.
	public var custodian: Reference?
	
	/// Composition editing time.
	public var date: DateTime?
	
	/// Context of the Composition.
	public var encounter: Reference?
	
	/// The clinical service(s) being documented.
	public var event: [CompositionEvent]?
	
	/// Version-independent identifier for the Composition.
	public var identifier: Identifier?
	
	/// Relationships to other compositions/documents.
	public var relatesTo: [CompositionRelatesTo]?
	
	/// Composition is broken into sections.
	public var section: [CompositionSection]?
	
	/// The workflow/clinical status of this composition. The status is a marker for the clinical standing of the
	/// document.
	public var status: CompositionStatus?
	
	/// Who and/or what the composition is about.
	public var subject: Reference?
	
	/// Human Readable name/title.
	public var title: FHIRString?
	
	/// Kind of composition (LOINC if possible).
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(author: [Reference], date: DateTime, status: CompositionStatus, title: FHIRString, type: CodeableConcept) {
		self.init()
		self.author = author
		self.date = date
		self.status = status
		self.title = title
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		attester = createInstances(of: CompositionAttester.self, for: "attester", in: json, context: &instCtx, owner: self) ?? attester
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		if (nil == author || author!.isEmpty) && !instCtx.containsKey("author") {
			instCtx.addError(FHIRValidationError(missing: "author"))
		}
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		confidentiality = createInstance(type: FHIRString.self, for: "confidentiality", in: json, context: &instCtx, owner: self) ?? confidentiality
		custodian = createInstance(type: Reference.self, for: "custodian", in: json, context: &instCtx, owner: self) ?? custodian
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		event = createInstances(of: CompositionEvent.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		relatesTo = createInstances(of: CompositionRelatesTo.self, for: "relatesTo", in: json, context: &instCtx, owner: self) ?? relatesTo
		section = createInstances(of: CompositionSection.self, for: "section", in: json, context: &instCtx, owner: self) ?? section
		status = createEnum(type: CompositionStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		if nil == title && !instCtx.containsKey("title") {
			instCtx.addError(FHIRValidationError(missing: "title"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "attester", using: self.attester, errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		if nil == author || self.author!.isEmpty {
			errors.append(FHIRValidationError(missing: "author"))
		}
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.confidentiality?.decorate(json: &json, withKey: "confidentiality", errors: &errors)
		self.custodian?.decorate(json: &json, withKey: "custodian", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatesTo", using: self.relatesTo, errors: &errors)
		arrayDecorate(json: &json, withKey: "section", using: self.section, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Attests to accuracy of composition.

A participant who has attested to the accuracy of the composition/document.
*/
open class CompositionAttester: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionAttester" }
	}
	
	/// The type of attestation the authenticator offers.
	public var mode: CompositionAttestationMode?
	
	/// Who attested the composition.
	public var party: Reference?
	
	/// When the composition was attested.
	public var time: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: CompositionAttestationMode) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		mode = createEnum(type: CompositionAttestationMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		time = createInstance(type: DateTime.self, for: "time", in: json, context: &instCtx, owner: self) ?? time
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		self.time?.decorate(json: &json, withKey: "time", errors: &errors)
	}
}


/**
The clinical service(s) being documented.

The clinical service, such as a colonoscopy or an appendectomy, being documented.
*/
open class CompositionEvent: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionEvent" }
	}
	
	/// Code(s) that apply to the event being documented.
	public var code: [CodeableConcept]?
	
	/// The event(s) being documented.
	public var detail: [Reference]?
	
	/// The period covered by the documentation.
	public var period: Period?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		detail = createInstances(of: Reference.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
	}
}


/**
Relationships to other compositions/documents.

Relationships that this composition has with other compositions or documents that already exist.
*/
open class CompositionRelatesTo: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionRelatesTo" }
	}
	
	/// The type of relationship that this composition has with anther composition or document.
	public var code: DocumentRelationshipType?
	
	/// Target of the relationship.
	public var targetIdentifier: Identifier?
	
	/// Target of the relationship.
	public var targetReference: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: DocumentRelationshipType, target: Any) {
		self.init()
		self.code = code
		if let value = target as? Identifier {
			self.targetIdentifier = value
		}
		else if let value = target as? Reference {
			self.targetReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: target))” for property “\(target)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: DocumentRelationshipType.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		targetIdentifier = createInstance(type: Identifier.self, for: "targetIdentifier", in: json, context: &instCtx, owner: self) ?? targetIdentifier
		targetReference = createInstance(type: Reference.self, for: "targetReference", in: json, context: &instCtx, owner: self) ?? targetReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.targetIdentifier && nil == self.targetReference {
			instCtx.addError(FHIRValidationError(missing: "target[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.targetIdentifier?.decorate(json: &json, withKey: "targetIdentifier", errors: &errors)
		self.targetReference?.decorate(json: &json, withKey: "targetReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.targetIdentifier && nil == self.targetReference {
			errors.append(FHIRValidationError(missing: "target[x]"))
		}
	}
}


/**
Composition is broken into sections.

The root of the sections that make up the composition.
*/
open class CompositionSection: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionSection" }
	}
	
	/// Who and/or what authored the section.
	public var author: [Reference]?
	
	/// Classification of section (recommended).
	public var code: CodeableConcept?
	
	/// Why the section is empty.
	public var emptyReason: CodeableConcept?
	
	/// A reference to data that supports this section.
	public var entry: [Reference]?
	
	/// Who/what the section is about, when it is not about the subject of composition.
	public var focus: Reference?
	
	/// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an
	/// ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a
	/// prepared list where items may be marked as added, modified or deleted.
	public var mode: ListMode?
	
	/// Order of section entries.
	public var orderedBy: CodeableConcept?
	
	/// Nested Section.
	public var section: [CompositionSection]?
	
	/// Text summary of the section, for human interpretation.
	public var text: Narrative?
	
	/// Label for section (e.g. for ToC).
	public var title: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		emptyReason = createInstance(type: CodeableConcept.self, for: "emptyReason", in: json, context: &instCtx, owner: self) ?? emptyReason
		entry = createInstances(of: Reference.self, for: "entry", in: json, context: &instCtx, owner: self) ?? entry
		focus = createInstance(type: Reference.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		mode = createEnum(type: ListMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		orderedBy = createInstance(type: CodeableConcept.self, for: "orderedBy", in: json, context: &instCtx, owner: self) ?? orderedBy
		section = createInstances(of: CompositionSection.self, for: "section", in: json, context: &instCtx, owner: self) ?? section
		text = createInstance(type: Narrative.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.emptyReason?.decorate(json: &json, withKey: "emptyReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "entry", using: self.entry, errors: &errors)
		self.focus?.decorate(json: &json, withKey: "focus", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		self.orderedBy?.decorate(json: &json, withKey: "orderedBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "section", using: self.section, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}

