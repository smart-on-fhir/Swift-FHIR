//
//  DocumentManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
 */
public class DocumentManifest: DomainResource
{
	override public class var resourceName: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Contents of the manifest
	public var content: [DocumentManifestContent]?
	
	/// When this document manifest created
	public var created: DateTime?
	
	/// Human-readable description (title)
	public var description_fhir: String?
	
	/// Other identifiers for the manifest
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents
	public var recipient: [Reference]?
	
	/// Related things
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software
	public var source: NSURL?
	
	/// current | superceded | entered-in-error
	public var status: String?
	
	/// The subject of the set of documents
	public var subject: Reference?
	
	/// What kind of document set this is
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(content: [DocumentManifestContent]?, status: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? [FHIRJSON] {
					self.content = DocumentManifestContent.from(val, owner: self) as? [DocumentManifestContent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"content\" but it is missing"))
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
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["masterIdentifier"] {
				presentKeys.addObject("masterIdentifier")
				if let val = exist as? FHIRJSON {
					self.masterIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"masterIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["recipient"] {
				presentKeys.addObject("recipient")
				if let val = exist as? [FHIRJSON] {
					self.recipient = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recipient\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["related"] {
				presentKeys.addObject("related")
				if let val = exist as? [FHIRJSON] {
					self.related = DocumentManifestRelated.from(val, owner: self) as? [DocumentManifestRelated]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"related\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.addObject("source")
				if let val = exist as? String {
					self.source = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"source\" to be `String`, but is \(exist.dynamicType)"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let content = self.content {
			json["content"] = DocumentManifestContent.asJSONArray(content)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON()
		}
		if let recipient = self.recipient {
			json["recipient"] = Reference.asJSONArray(recipient)
		}
		if let related = self.related {
			json["related"] = DocumentManifestRelated.asJSONArray(related)
		}
		if let source = self.source {
			json["source"] = source.asJSON()
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
 *  Contents of the manifest.
 *
 *  The manifest list.
 */
public class DocumentManifestContent: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentManifestContent" }
	}
	
	/// Contents of this set of documents
	public var pAttachment: Attachment?
	
	/// Contents of this set of documents
	public var pReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(pAttachment: Attachment?, pReference: Reference?) {
		self.init(json: nil)
		if nil != pAttachment {
			self.pAttachment = pAttachment
		}
		if nil != pReference {
			self.pReference = pReference
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["pAttachment"] {
				presentKeys.addObject("pAttachment")
				if let val = exist as? FHIRJSON {
					self.pAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"pAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["pReference"] {
				presentKeys.addObject("pReference")
				if let val = exist as? FHIRJSON {
					self.pReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"pReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.pAttachment && nil == self.pReference {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"p[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let pAttachment = self.pAttachment {
			json["pAttachment"] = pAttachment.asJSON()
		}
		if let pReference = self.pReference {
			json["pReference"] = pReference.asJSON()
		}
		
		return json
	}
}


/**
 *  Related things.
 *
 *  Related identifiers or resources associated with the DocumentManifest.
 */
public class DocumentManifestRelated: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentManifestRelated" }
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

