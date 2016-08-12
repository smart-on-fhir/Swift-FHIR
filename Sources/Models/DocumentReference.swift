//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A reference to a document.
 *
 *  A reference to a document .
 */
public class DocumentReference: DomainResource {
	override public class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/// Who/what authenticated the document.
	public var authenticator: Reference?
	
	/// Who and/or what authored the document.
	public var author: [Reference]?
	
	/// Categorization of document.
	public var class_fhir: CodeableConcept?
	
	/// Document referenced.
	public var content: [DocumentReferenceContent]?
	
	/// Clinical context of document.
	public var context: DocumentReferenceContext?
	
	/// Document creation time.
	public var created: DateTime?
	
	/// Organization which maintains the document.
	public var custodian: Reference?
	
	/// Human-readable description (title).
	public var description_fhir: String?
	
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
	
	/// current | superseded | entered-in-error.
	public var status: String?
	
	/// Who/what is the subject of the document.
	public var subject: Reference?
	
	/// Kind of document (LOINC if possible).
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [DocumentReferenceContent], indexed: Instant, status: String, type: CodeableConcept) {
		self.init(json: nil)
		self.content = content
		self.indexed = indexed
		self.status = status
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["authenticator"] {
				presentKeys.insert("authenticator")
				if let val = exist as? FHIRJSON {
					self.authenticator = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "authenticator", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? FHIRJSON {
					self.class_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? [FHIRJSON] {
					self.content = DocumentReferenceContent.from(val, owner: self) as? [DocumentReferenceContent]
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "content"))
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.insert("context")
				if let val = exist as? FHIRJSON {
					self.context = DocumentReferenceContext(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "context", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["custodian"] {
				presentKeys.insert("custodian")
				if let val = exist as? FHIRJSON {
					self.custodian = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "custodian", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["docStatus"] {
				presentKeys.insert("docStatus")
				if let val = exist as? FHIRJSON {
					self.docStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "docStatus", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["indexed"] {
				presentKeys.insert("indexed")
				if let val = exist as? String {
					self.indexed = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "indexed", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "indexed"))
			}
			if let exist: AnyObject = js["masterIdentifier"] {
				presentKeys.insert("masterIdentifier")
				if let val = exist as? FHIRJSON {
					self.masterIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "masterIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relatesTo"] {
				presentKeys.insert("relatesTo")
				if let val = exist as? [FHIRJSON] {
					self.relatesTo = DocumentReferenceRelatesTo.from(val, owner: self) as? [DocumentReferenceRelatesTo]
				}
				else {
					errors.append(FHIRJSONError(key: "relatesTo", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["securityLabel"] {
				presentKeys.insert("securityLabel")
				if let val = exist as? [FHIRJSON] {
					self.securityLabel = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "securityLabel", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authenticator = self.authenticator {
			json["authenticator"] = authenticator.asJSON()
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let content = self.content {
			json["content"] = DocumentReferenceContent.asJSONArray(content)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let custodian = self.custodian {
			json["custodian"] = custodian.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let docStatus = self.docStatus {
			json["docStatus"] = docStatus.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indexed = self.indexed {
			json["indexed"] = indexed.asJSON()
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON()
		}
		if let relatesTo = self.relatesTo {
			json["relatesTo"] = DocumentReferenceRelatesTo.asJSONArray(relatesTo)
		}
		if let securityLabel = self.securityLabel {
			json["securityLabel"] = CodeableConcept.asJSONArray(securityLabel)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Document referenced.
 *
 *  The document and format referenced. There may be multiple content element repetitions, each with a different format.
 */
public class DocumentReferenceContent: BackboneElement {
	override public class var resourceName: String {
		get { return "DocumentReferenceContent" }
	}
	
	/// Where to access the document.
	public var attachment: Attachment?
	
	/// Format/content rules for the document.
	public var format: [Coding]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(attachment: Attachment) {
		self.init(json: nil)
		self.attachment = attachment
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["attachment"] {
				presentKeys.insert("attachment")
				if let val = exist as? FHIRJSON {
					self.attachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "attachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "attachment"))
			}
			if let exist: AnyObject = js["format"] {
				presentKeys.insert("format")
				if let val = exist as? [FHIRJSON] {
					self.format = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "format", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let attachment = self.attachment {
			json["attachment"] = attachment.asJSON()
		}
		if let format = self.format {
			json["format"] = Coding.asJSONArray(format)
		}
		
		return json
	}
}


/**
 *  Clinical context of document.
 *
 *  The clinical context in which the document was prepared.
 */
public class DocumentReferenceContext: BackboneElement {
	override public class var resourceName: String {
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [FHIRJSON] {
					self.event = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["facilityType"] {
				presentKeys.insert("facilityType")
				if let val = exist as? FHIRJSON {
					self.facilityType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "facilityType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["practiceSetting"] {
				presentKeys.insert("practiceSetting")
				if let val = exist as? FHIRJSON {
					self.practiceSetting = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "practiceSetting", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["related"] {
				presentKeys.insert("related")
				if let val = exist as? [FHIRJSON] {
					self.related = DocumentReferenceContextRelated.from(val, owner: self) as? [DocumentReferenceContextRelated]
				}
				else {
					errors.append(FHIRJSONError(key: "related", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sourcePatientInfo"] {
				presentKeys.insert("sourcePatientInfo")
				if let val = exist as? FHIRJSON {
					self.sourcePatientInfo = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "sourcePatientInfo", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let event = self.event {
			json["event"] = CodeableConcept.asJSONArray(event)
		}
		if let facilityType = self.facilityType {
			json["facilityType"] = facilityType.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let practiceSetting = self.practiceSetting {
			json["practiceSetting"] = practiceSetting.asJSON()
		}
		if let related = self.related {
			json["related"] = DocumentReferenceContextRelated.asJSONArray(related)
		}
		if let sourcePatientInfo = self.sourcePatientInfo {
			json["sourcePatientInfo"] = sourcePatientInfo.asJSON()
		}
		
		return json
	}
}


/**
 *  Related identifiers or resources.
 *
 *  Related identifiers or resources associated with the DocumentReference.
 */
public class DocumentReferenceContextRelated: BackboneElement {
	override public class var resourceName: String {
		get { return "DocumentReferenceContextRelated" }
	}
	
	/// Identifier of related objects or events.
	public var identifier: Identifier?
	
	/// Related Resource.
	public var ref: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ref"] {
				presentKeys.insert("ref")
				if let val = exist as? FHIRJSON {
					self.ref = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ref", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let ref = self.ref {
			json["ref"] = ref.asJSON()
		}
		
		return json
	}
}


/**
 *  Relationships to other documents.
 *
 *  Relationships that this document has with other document references that already exist.
 */
public class DocumentReferenceRelatesTo: BackboneElement {
	override public class var resourceName: String {
		get { return "DocumentReferenceRelatesTo" }
	}
	
	/// replaces | transforms | signs | appends.
	public var code: String?
	
	/// Target of the relationship.
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, target: Reference) {
		self.init(json: nil)
		self.code = code
		self.target = target
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.insert("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "target", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "target"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}

