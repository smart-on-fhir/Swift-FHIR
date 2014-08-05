//
//  DocumentManifest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A manifest that defines a set of documents.
 *
 *  Scope and Usage A document manifest gathers a set of Document Reference resources into a single package that
 *  may be the subject of workflow such as access control, auditing, and targeted delivery.
 *  
 *  Typically, Document Manifest Resources are used in document indexing systems, such as IHE XDS (see the XDS
 *  specific profile).
 */
public class DocumentManifest: FHIRResource
{
	override public class var resourceName: String {
		get { return "DocumentManifest" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Unique Identifier for the set of documents */
	public var masterIdentifier: Identifier?
	
	/** Other identifiers for the manifest */
	public var identifier: [Identifier]?
	
	/** The subject of the set of documents */
	public var subject: [FHIRElement]? {
		get { return resolveReferences("subject") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "subject")
			}
		}
	}
	
	/** Intended to get notified about this set of documents */
	public var recipient: [FHIRElement]? {
		get { return resolveReferences("recipient") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "recipient")
			}
		}
	}
	
	/** What kind of document set this is */
	public var type: CodeableConcept?
	
	/** Who and/or what authored the document */
	public var author: [FHIRElement]? {
		get { return resolveReferences("author") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "author")
			}
		}
	}
	
	/** When this document manifest created */
	public var created: NSDate?
	
	/** The source system/application/software */
	public var source: NSURL?
	
	/** current | superceded | entered in error */
	public var status: String?
	
	/** If this document manifest replaces another */
	public var supercedes: FHIRElement? {
		get { return resolveReference("supercedes") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "supercedes")
			}
		}
	}
	
	/** Human-readable description (title) */
	public var description: String?
	
	/** Sensitivity of set of documents */
	public var confidentiality: CodeableConcept?
	
	/** Contents of this set of documents */
	public var content: [FHIRElement]? {
		get { return resolveReferences("content") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "content")
			}
		}
	}
	
	public convenience init(masterIdentifier: Identifier?, subject: [ResourceReference]?, status: String?, content: [ResourceReference]?) {
		self.init(json: nil)
		if nil != masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != status {
			self.status = status
		}
		if nil != content {
			self.content = content
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["masterIdentifier"] as? NSDictionary {
				self.masterIdentifier = Identifier(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["subject"] as? [NSDictionary] {
				self.subject = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["recipient"] as? [NSDictionary] {
				self.recipient = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["source"] as? String {
				self.source = NSURL(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["supercedes"] as? NSDictionary {
				self.supercedes = ResourceReference(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = CodeableConcept(json: val)
			}
			if let val = js["content"] as? [NSDictionary] {
				self.content = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}

