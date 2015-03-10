//
//  DocumentManifest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2015-03-10.
//  2015, SMART Platforms.
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
	
	/// Contents of this set of documents
	public var content: [Reference]?
	
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
	
	/// The source system/application/software
	public var source: NSURL?
	
	/// current | superceded | entered-in-error
	public var status: String?
	
	/// The subject of the set of documents
	public var subject: Reference?
	
	/// What kind of document set this is
	public var type: CodeableConcept?
	
	public convenience init(content: [Reference]?, status: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? [JSONDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["content"] as? [JSONDictionary] {
				self.content = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["masterIdentifier"] as? JSONDictionary {
				self.masterIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["recipient"] as? [JSONDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["source"] as? String {
				self.source = NSURL(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let content = self.content {
			json["content"] = Reference.asJSONArray(content)
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

