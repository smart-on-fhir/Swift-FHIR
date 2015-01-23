//
//  SupportingDocumentation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (supportingdocumentation.profile.json) on 2015-01-23.
//  2015, SMART Platforms.
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
	public var created: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["detail"] as? [JSONDictionary] {
				self.detail = SupportingDocumentationDetail.from(val, owner: self) as? [SupportingDocumentationDetail]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = SupportingDocumentationDetail.asJSONArray(detail)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
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
	public var dateTime: DateTime?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contentAttachment"] as? JSONDictionary {
				self.contentAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["contentReference"] as? JSONDictionary {
				self.contentReference = Reference(json: val, owner: self)
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = DateTime(string: val)
			}
			if let val = js["linkId"] as? Int {
				self.linkId = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contentAttachment = self.contentAttachment {
			json["contentAttachment"] = contentAttachment.asJSON()
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		if let dateTime = self.dateTime {
			json["dateTime"] = dateTime.asJSON()
		}
		if let linkId = self.linkId {
			json["linkId"] = linkId.asJSON()
		}
		
		return json
	}
}

