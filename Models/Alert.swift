//
//  Alert.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (alert.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Key information to flag to healthcare providers.
 *
 *  Prospective warnings of potential issues when providing care to the patient.
 */
public class Alert: FHIRResource
{
	override public class var resourceName: String {
		get { return "Alert" }
	}
	
	/// Alert creator
	public var author: Reference?
	
	/// Clinical, administrative, etc.
	public var category: CodeableConcept?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Text of alert
	public var note: String?
	
	/// active | inactive | entered in error
	public var status: String?
	
	/// Who is alert about?
	public var subject: Reference?
	
	public convenience init(note: String?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != note {
			self.note = note
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
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}

