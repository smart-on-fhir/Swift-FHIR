//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Composition) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A set of resources composed into a single coherent clinical statement with clinical attestation.

A set of healthcare-related information that is assembled together into a single logical document that provides a single
coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is
making the statement. While a Composition defines the structure, it does not actually contain the content: rather the
full content of a document is contained in a Bundle, of which the Composition is the first resource contained.
*/
open class Composition: DomainResource {
	override open class var resourceType: String {
		get { return "Composition" }
	}
	
	/// Categorization of Composition.
	public var `class`: CodeableConcept?
	
	/// Attests to accuracy of composition.
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition.
	public var author: [Reference]?
	
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
	
	/// Logical identifier of composition (version-independent).
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
	public convenience init(author: [Reference], date: DateTime, status: CompositionStatus, subject: Reference, title: FHIRString, type: CodeableConcept) {
		self.init()
		self.author = author
		self.date = date
		self.status = status
		self.subject = subject
		self.title = title
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		`class` = try createInstance(type: CodeableConcept.self, for: "class", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? `class`
		attester = try createInstances(of: CompositionAttester.self, for: "attester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? attester
		author = try createInstances(of: Reference.self, for: "author", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? author
		if (nil == author || author!.isEmpty) && !presentKeys.contains("author") {
			errors.append(FHIRValidationError(missing: "author"))
		}
		confidentiality = try createInstance(type: FHIRString.self, for: "confidentiality", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? confidentiality
		custodian = try createInstance(type: Reference.self, for: "custodian", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? custodian
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		if nil == date && !presentKeys.contains("date") {
			errors.append(FHIRValidationError(missing: "date"))
		}
		encounter = try createInstance(type: Reference.self, for: "encounter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? encounter
		event = try createInstances(of: CompositionEvent.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		relatesTo = try createInstances(of: CompositionRelatesTo.self, for: "relatesTo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatesTo
		section = try createInstances(of: CompositionSection.self, for: "section", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? section
		status = createEnum(type: CompositionStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		if nil == title && !presentKeys.contains("title") {
			errors.append(FHIRValidationError(missing: "title"))
		}
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.`class`?.decorate(json: &json, withKey: "class", errors: &errors)
		arrayDecorate(json: &json, withKey: "attester", using: self.attester, errors: &errors)
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		if nil == author || self.author!.isEmpty {
			errors.append(FHIRValidationError(missing: "author"))
		}
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
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
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
	public var mode: [CompositionAttestationMode]?
	
	/// Who attested the composition.
	public var party: Reference?
	
	/// When composition attested.
	public var time: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: [CompositionAttestationMode]) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		mode = createEnums(of: CompositionAttestationMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		if (nil == mode || mode!.isEmpty) && !presentKeys.contains("mode") {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		party = try createInstance(type: Reference.self, for: "party", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? party
		time = try createInstance(type: DateTime.self, for: "time", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? time
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "mode", using: self.mode, errors: &errors)
		if nil == mode || self.mode!.isEmpty {
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstances(of: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		detail = try createInstances(of: Reference.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		
		return errors.isEmpty ? nil : errors
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
			fhir_warn("Type “\(type(of: target))” for property “\(target)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = createEnum(type: DocumentRelationshipType.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		targetIdentifier = try createInstance(type: Identifier.self, for: "targetIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetIdentifier
		targetReference = try createInstance(type: Reference.self, for: "targetReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.targetIdentifier && nil == self.targetReference {
			errors.append(FHIRValidationError(missing: "target[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
	
	/// Classification of section (recommended).
	public var code: CodeableConcept?
	
	/// Why the section is empty.
	public var emptyReason: CodeableConcept?
	
	/// A reference to data that supports this section.
	public var entry: [Reference]?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		emptyReason = try createInstance(type: CodeableConcept.self, for: "emptyReason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? emptyReason
		entry = try createInstances(of: Reference.self, for: "entry", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? entry
		mode = createEnum(type: ListMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		orderedBy = try createInstance(type: CodeableConcept.self, for: "orderedBy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? orderedBy
		section = try createInstances(of: CompositionSection.self, for: "section", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? section
		text = try createInstance(type: Narrative.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.emptyReason?.decorate(json: &json, withKey: "emptyReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "entry", using: self.entry, errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		self.orderedBy?.decorate(json: &json, withKey: "orderedBy", errors: &errors)
		arrayDecorate(json: &json, withKey: "section", using: self.section, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}

