//
//  Alert.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (alert.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Key information to flag to healthcare providers.
 *
 *  Scope and Usage The Alert resource provides a single interface for managing clinical and administrative facts that
 *  need to be brought to the attention of users of clinical systems. Examples can include many things. Patient's posing
 *  particular risks (falls, physical violence), patient's needing special accomodations (hard of hearing, use easy-open
 *  caps), administrative concerns (verify postal address, pre-payment required) or any other situation that needs to be
 *  brought to attention within the context of a particular workflow. (The workflow relevant to the issue can be
 *  identified by the category element.)
 *  
 *  Usually, resources specific to particular types of issues (health conditions, allergies, active medications will be
 *  used to communicate those issues. However, in some cases, particularly important information (a latex or severe food
 *  allergy) migt be highlighted as an Alert as well as the more typical resource.
 */
public class Alert: FHIRResource
{
	override public class var resourceName: String {
		get { return "Alert" }
	}
	
	/// Alert creator
	public var author: FHIRReference<Practitioner>?
	
	/// Clinical, administrative, etc.
	public var category: CodeableConcept?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Text of alert
	public var note: String?
	
	/// active | inactive | entered in error
	public var status: String?
	
	/// Who is alert about?
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(note: String?, status: String?, subject: FHIRReference<Patient>?) {
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
				self.author = FHIRReference(json: val, owner: self)
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
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
		}
	}
}

