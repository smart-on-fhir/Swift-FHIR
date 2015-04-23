//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A reference to a document.
 */
public class DocumentReference: DomainResource
{
	override public class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/// Who/What authenticated the document
	public var authenticator: Reference?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Categorization of document
	public var class_fhir: CodeableConcept?
	
	/// Document security-tags
	public var confidentiality: [CodeableConcept]?
	
	/// Where to access the document
	public var content: [Attachment]?
	
	/// Clinical context of document
	public var context: DocumentReferenceContext?
	
	/// Document creation time
	public var created: DateTime?
	
	/// Org which maintains the document
	public var custodian: Reference?
	
	/// Human-readable description (title)
	public var description_fhir: String?
	
	/// preliminary | final | appended | amended | entered-in-error
	public var docStatus: CodeableConcept?
	
	/// Format/content rules for the document
	public var format: [NSURL]?
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// When this document reference created
	public var indexed: Instant?
	
	/// Master Version Specific Identifier
	public var masterIdentifier: Identifier?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// current | superceded | entered-in-error
	public var status: String?
	
	/// Who|what is the subject of the document
	public var subject: Reference?
	
	/// Kind of document
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(author: [Reference]?, content: [Attachment]?, indexed: Instant?, status: String?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
		}
		if nil != content {
			self.content = content
		}
		if nil != indexed {
			self.indexed = indexed
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["authenticator"] {
				presentKeys.addObject("authenticator")
				if let val = exist as? FHIRJSON {
					self.authenticator = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authenticator\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"author\" but it is missing"))
			}
			if let exist: AnyObject = js["class"] {
				presentKeys.addObject("class")
				if let val = exist as? FHIRJSON {
					self.class_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"class\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["confidentiality"] {
				presentKeys.addObject("confidentiality")
				if let val = exist as? [FHIRJSON] {
					self.confidentiality = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"confidentiality\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? [FHIRJSON] {
					self.content = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"content\" but it is missing"))
			}
			if let exist: AnyObject = js["context"] {
				presentKeys.addObject("context")
				if let val = exist as? FHIRJSON {
					self.context = DocumentReferenceContext(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"context\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["custodian"] {
				presentKeys.addObject("custodian")
				if let val = exist as? FHIRJSON {
					self.custodian = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"custodian\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["docStatus"] {
				presentKeys.addObject("docStatus")
				if let val = exist as? FHIRJSON {
					self.docStatus = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"docStatus\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["format"] {
				presentKeys.addObject("format")
				if let val = exist as? [String] {
					self.format = NSURL.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"format\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["indexed"] {
				presentKeys.addObject("indexed")
				if let val = exist as? String {
					self.indexed = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"indexed\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"indexed\" but it is missing"))
			}
			if let exist: AnyObject = js["masterIdentifier"] {
				presentKeys.addObject("masterIdentifier")
				if let val = exist as? FHIRJSON {
					self.masterIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"masterIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["relatesTo"] {
				presentKeys.addObject("relatesTo")
				if let val = exist as? [FHIRJSON] {
					self.relatesTo = DocumentReferenceRelatesTo.from(val, owner: self) as? [DocumentReferenceRelatesTo]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relatesTo\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
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
		if let confidentiality = self.confidentiality {
			json["confidentiality"] = CodeableConcept.asJSONArray(confidentiality)
		}
		if let content = self.content {
			json["content"] = Attachment.asJSONArray(content)
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
		if let format = self.format {
			var arr = [AnyObject]()
			for val in format {
				arr.append(val.asJSON())
			}
			json["format"] = arr
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
 *  Clinical context of document.
 *
 *  The clinical context in which the document was prepared.
 */
public class DocumentReferenceContext: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceContext" }
	}
	
	/// Main Clinical Acts Documented
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Related things
	public var related: [DocumentReferenceContextRelated]?
	
	/// Source patient info
	public var sourcePatientInfo: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["facilityType"] {
				presentKeys.addObject("facilityType")
				if let val = exist as? FHIRJSON {
					self.facilityType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"facilityType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["practiceSetting"] {
				presentKeys.addObject("practiceSetting")
				if let val = exist as? FHIRJSON {
					self.practiceSetting = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"practiceSetting\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["related"] {
				presentKeys.addObject("related")
				if let val = exist as? [FHIRJSON] {
					self.related = DocumentReferenceContextRelated.from(val, owner: self) as? [DocumentReferenceContextRelated]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"related\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sourcePatientInfo"] {
				presentKeys.addObject("sourcePatientInfo")
				if let val = exist as? FHIRJSON {
					self.sourcePatientInfo = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sourcePatientInfo\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  Related things.
 *
 *  Related identifiers or resources associated with the DocumentReference.
 */
public class DocumentReferenceContextRelated: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceContextRelated" }
	}
	
	/// Related Identifier
	public var identifier: Identifier?
	
	/// Related Resource
	public var ref: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ref"] {
				presentKeys.addObject("ref")
				if let val = exist as? FHIRJSON {
					self.ref = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ref\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
public class DocumentReferenceRelatesTo: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceRelatesTo" }
	}
	
	/// replaces | transforms | signs | appends
	public var code: String?
	
	/// Target of the relationship
	public var target: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?, target: Reference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != target {
			self.target = target
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["target"] {
				presentKeys.addObject("target")
				if let val = exist as? FHIRJSON {
					self.target = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"target\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"target\" but it is missing"))
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

