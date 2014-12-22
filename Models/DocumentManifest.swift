//
//  DocumentManifest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (documentmanifest.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
 */
public class DocumentManifest: FHIRResource
{
	override public class var resourceName: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Sensitivity of set of documents
	public var confidentiality: CodeableConcept?
	
	/// Contents of this set of documents
	public var content: [Reference]?
	
	/// When this document manifest created
	public var created: NSDate?
	
	/// Human-readable description (title)
	public var description: String?
	
	/// Other identifiers for the manifest
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents
	public var recipient: [Reference]?
	
	/// The source system/application/software
	public var source: NSURL?
	
	/// current | superceded | entered in error
	public var status: String?
	
	/// The subject of the set of documents
	public var subject: [Reference]?
	
	/// If this document manifest replaces another
	public var supercedes: Reference?
	
	/// What kind of document set this is
	public var type: CodeableConcept?
	
	public convenience init(content: [Reference]?, masterIdentifier: Identifier?, status: String?, subject: [Reference]?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? [NSDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = CodeableConcept(json: val, owner: self)
			}
			if let val = js["content"] as? [NSDictionary] {
				self.content = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["masterIdentifier"] as? NSDictionary {
				self.masterIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["recipient"] as? [NSDictionary] {
				self.recipient = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["source"] as? String {
				self.source = NSURL(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? [NSDictionary] {
				self.subject = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["supercedes"] as? NSDictionary {
				self.supercedes = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

