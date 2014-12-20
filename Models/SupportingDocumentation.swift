//
//  SupportingDocumentation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (supportingdocumentation.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Documentation submission.
 *
 *  This resource provides the supporting information for a process, for example clinical or financial  information
 *  related to a claim or pre-authorization.
 */
public class SupportingDocumentation: FHIRResource
{
	override public class var resourceName: String {
		get { return "SupportingDocumentation" }
	}
	
	/// Author
	public var author: Reference?
	
	/// Creation date
	public var created: NSDate?
	
	/// Supporting Files
	public var detail: [SupportingDocumentationDetail]?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Patient
	public var subject: Reference?
	
	/// Insurer or Provider
	public var target: Reference?
	
	public convenience init(identifier: [Identifier]?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = SupportingDocumentationDetail.from(val, owner: self) as? [SupportingDocumentationDetail]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["organization"] as? NSDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? NSDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? NSDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? NSDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? NSDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? NSDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Supporting Files.
 */
public class SupportingDocumentationDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "SupportingDocumentationDetail" }
	}
	
	/// Content
	public var contentAttachment: Attachment?
	
	/// Content
	public var contentReference: Reference?
	
	/// Creation date and time
	public var dateTime: NSDate?
	
	/// LinkId
	public var linkId: Int?
	
	public convenience init(contentAttachment: Attachment?, contentReference: Reference?, linkId: Int?) {
		self.init(json: nil)
		if nil != contentAttachment {
			self.contentAttachment = contentAttachment
		}
		if nil != contentReference {
			self.contentReference = contentReference
		}
		if nil != linkId {
			self.linkId = linkId
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? NSDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? NSDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["linkId"] as? Int {
				self.linkId = val
			}
		}
	}
}

