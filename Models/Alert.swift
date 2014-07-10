//
//  Alert.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Key information to flag to healthcare providers.
 *
 *  Scope and Usage The Alert resource provides a single interface for managing clinical and administrative facts
 *  that need to be brought to the attention of users of clinical systems. Examples can include many things.
 *  Patient's posing particular risks (falls, physical violence), patient's needing special accomodations (hard of
 *  hearing, use easy-open caps), administrative concerns (verify postal address, pre-payment required) or any
 *  other situation that needs to be brought to attention within the context of a particular workflow. (The
 *  workflow relevant to the issue can be identified by the category element.)
 *  
 *  Usually, resources specific to particular types of issues (health conditions, allergies, active medications
 *  will be used to communicate those issues. However, in some cases, particularly important information (a latex
 *  or severe food allergy) migt be highlighted as an Alert as well as the more typical resource.
 */
class Alert: FHIRResource
{
	override class var resourceName: String {
		get { return "Alert" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Business identifier */
	var identifier: [Identifier]?
	
	/*! Clinical, administrative, etc. */
	var category: CodeableConcept?
	
	/*! active | inactive | entered in error */
	var status: String?
	
	/*! Who is alert about? */
	var subject: ResourceReference?
	
	/*! Alert creator */
	var author: ResourceReference?
	
	/*! Text of alert */
	var note: String?
	
	convenience init(status: String?, subject: ResourceReference?, note: String?) {
		self.init(json: nil)
		if status {
			self.status = status
		}
		if subject {
			self.subject = subject
		}
		if note {
			self.note = note
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = ResourceReference(json: val)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
		}
		super.init(json: json)
	}
}
