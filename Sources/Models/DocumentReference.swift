//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["class"] {
			presentKeys.insert("class")
			if let val = exist as? FHIRJSON {
				do {
					self.`class` = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "class"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "class", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["authenticator"] {
			presentKeys.insert("authenticator")
			if let val = exist as? FHIRJSON {
				do {
					self.authenticator = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "authenticator"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "authenticator", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? [FHIRJSON] {
				do {
					self.author = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["content"] {
			presentKeys.insert("content")
			if let val = exist as? [FHIRJSON] {
				do {
					self.content = try DocumentReferenceContent.instantiate(fromArray: val, owner: self) as? [DocumentReferenceContent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "content"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "content", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
		}
		if let exist = json["context"] {
			presentKeys.insert("context")
			if let val = exist as? FHIRJSON {
				do {
					self.context = try DocumentReferenceContext(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "context"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "context", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["custodian"] {
			presentKeys.insert("custodian")
			if let val = exist as? FHIRJSON {
				do {
					self.custodian = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "custodian"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "custodian", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["docStatus"] {
			presentKeys.insert("docStatus")
			if let val = exist as? FHIRJSON {
				do {
					self.docStatus = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "docStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "docStatus", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["indexed"] {
			presentKeys.insert("indexed")
			if let val = exist as? String {
				self.indexed = Instant(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "indexed", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "indexed"))
		}
		if let exist = json["masterIdentifier"] {
			presentKeys.insert("masterIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.masterIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "masterIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "masterIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatesTo"] {
			presentKeys.insert("relatesTo")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatesTo = try DocumentReferenceRelatesTo.instantiate(fromArray: val, owner: self) as? [DocumentReferenceRelatesTo]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatesTo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatesTo", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["securityLabel"] {
			presentKeys.insert("securityLabel")
			if let val = exist as? [FHIRJSON] {
				do {
					self.securityLabel = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "securityLabel"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = DocumentReferenceStatus(rawValue: val) {
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
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let `class` = self.`class` {
			json["class"] = `class`.asJSON(errors: &errors)
		}
		if let authenticator = self.authenticator {
			json["authenticator"] = authenticator.asJSON(errors: &errors)
		}
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON(errors: &errors) }
		}
		if let content = self.content {
			json["content"] = content.map() { $0.asJSON(errors: &errors) }
		}
		else {
			errors.append(FHIRValidationError(missing: "content"))
		}
		if let context = self.context {
			json["context"] = context.asJSON(errors: &errors)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let custodian = self.custodian {
			json["custodian"] = custodian.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let docStatus = self.docStatus {
			json["docStatus"] = docStatus.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let indexed = self.indexed {
			json["indexed"] = indexed.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "indexed"))
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON(errors: &errors)
		}
		if let relatesTo = self.relatesTo {
			json["relatesTo"] = relatesTo.map() { $0.asJSON(errors: &errors) }
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = securityLabel.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
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
		if let exist = json["attachment"] {
			presentKeys.insert("attachment")
			if let val = exist as? FHIRJSON {
				do {
					self.attachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "attachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "attachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "attachment"))
		}
		if let exist = json["format"] {
			presentKeys.insert("format")
			if let val = exist as? [FHIRJSON] {
				do {
					self.format = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "format"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "format", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let attachment = self.attachment {
			json["attachment"] = attachment.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "attachment"))
		}
		if let format = self.format {
			json["format"] = format.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? [FHIRJSON] {
				do {
					self.event = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "event"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["facilityType"] {
			presentKeys.insert("facilityType")
			if let val = exist as? FHIRJSON {
				do {
					self.facilityType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "facilityType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "facilityType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["practiceSetting"] {
			presentKeys.insert("practiceSetting")
			if let val = exist as? FHIRJSON {
				do {
					self.practiceSetting = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "practiceSetting"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "practiceSetting", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["related"] {
			presentKeys.insert("related")
			if let val = exist as? [FHIRJSON] {
				do {
					self.related = try DocumentReferenceContextRelated.instantiate(fromArray: val, owner: self) as? [DocumentReferenceContextRelated]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "related"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "related", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sourcePatientInfo"] {
			presentKeys.insert("sourcePatientInfo")
			if let val = exist as? FHIRJSON {
				do {
					self.sourcePatientInfo = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sourcePatientInfo"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sourcePatientInfo", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let event = self.event {
			json["event"] = event.map() { $0.asJSON(errors: &errors) }
		}
		if let facilityType = self.facilityType {
			json["facilityType"] = facilityType.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let practiceSetting = self.practiceSetting {
			json["practiceSetting"] = practiceSetting.asJSON(errors: &errors)
		}
		if let related = self.related {
			json["related"] = related.map() { $0.asJSON(errors: &errors) }
		}
		if let sourcePatientInfo = self.sourcePatientInfo {
			json["sourcePatientInfo"] = sourcePatientInfo.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["ref"] {
			presentKeys.insert("ref")
			if let val = exist as? FHIRJSON {
				do {
					self.ref = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ref"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ref", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let ref = self.ref {
			json["ref"] = ref.asJSON(errors: &errors)
		}
		
		return json
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
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				if let enumval = DocumentRelationshipType(rawValue: val) {
					self.code = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "code", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? FHIRJSON {
				do {
					self.target = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "target"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let target = self.target {
			json["target"] = target.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "target"))
		}
		
		return json
	}
}

