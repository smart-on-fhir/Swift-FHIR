//
//  DocumentManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
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
	public var description_fhir: String?
	
	/// Other identifiers for the manifest.
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents.
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents.
	public var recipient: [Reference]?
	
	/// Related things.
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software.
	public var source: URL?
	
	/// current | superseded | entered-in-error.
	public var status: String?
	
	/// The subject of the set of documents.
	public var subject: Reference?
	
	/// Kind of document set.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [DocumentManifestContent], status: String) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
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
					self.content = try DocumentManifestContent.instantiate(fromArray: val, owner: self) as? [DocumentManifestContent]
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
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
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
		if let exist = json["recipient"] {
			presentKeys.insert("recipient")
			if let val = exist as? [FHIRJSON] {
				do {
					self.recipient = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "recipient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "recipient", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["related"] {
			presentKeys.insert("related")
			if let val = exist as? [FHIRJSON] {
				do {
					self.related = try DocumentManifestRelated.instantiate(fromArray: val, owner: self) as? [DocumentManifestRelated]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "related"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "related", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? String {
				self.source = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
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
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON(errors: &errors) }
		}
		if let content = self.content {
			json["content"] = content.map() { $0.asJSON(errors: &errors) }
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON(errors: &errors)
		}
		if let recipient = self.recipient {
			json["recipient"] = recipient.map() { $0.asJSON(errors: &errors) }
		}
		if let related = self.related {
			json["related"] = related.map() { $0.asJSON(errors: &errors) }
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  The items included.
 *
 *  The list of Documents included in the manifest.
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
		if let exist = json["pAttachment"] {
			presentKeys.insert("pAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.pAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "pAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "pAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["pReference"] {
			presentKeys.insert("pReference")
			if let val = exist as? FHIRJSON {
				do {
					self.pReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "pReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "pReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.pAttachment && nil == self.pReference {
			errors.append(FHIRValidationError(missing: "p[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let pAttachment = self.pAttachment {
			json["pAttachment"] = pAttachment.asJSON(errors: &errors)
		}
		if let pReference = self.pReference {
			json["pReference"] = pReference.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Related things.
 *
 *  Related identifiers or resources associated with the DocumentManifest.
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

