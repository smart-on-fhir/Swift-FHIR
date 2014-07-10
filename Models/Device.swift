//
//  Device.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An instance of a manufactured thing that is used in the provision of healthcare.
 *
 *  Scope and Usage This resource is primarily used for recording which device performed an action and can also be
 *  used to track device location. It is also used for prescribing and dispensing devices for patient use. If the
 *  device is implanted in a patient, then the patient element will be present, and there would be no location.
 *  
 *  Devices that are implanted in a patient differ from medications because they are not "used up" - they remain
 *  active in a patient in an ongoing fashion. The Medication resource SHOULD not be used to represent implanted
 *  devices.
 */
class Device: FHIRResource
{
	override class var resourceName: String {
		get { return "Device" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Instance id from manufacturer, owner and others */
	var identifier: [Identifier]?
	
	/*! What kind of device this is */
	var type: CodeableConcept?
	
	/*! Name of device manufacturer */
	var manufacturer: String?
	
	/*! Model id assigned by the manufacturer */
	var model: String?
	
	/*! Version number (i.e. software) */
	var version: String?
	
	/*! Date of expiry of this device (if applicable) */
	var expiry: NSDate?
	
	/*! FDA Mandated Unique Device Identifier */
	var udi: String?
	
	/*! Lot number of manufacture */
	var lotNumber: String?
	
	/*! Organization responsible for device */
	var owner: ResourceReference?
	
	/*! Where the resource is found */
	var location: ResourceReference?
	
	/*! If the resource is affixed to a person */
	var patient: ResourceReference?
	
	/*! Details for human/organization for support */
	var contact: [Contact]?
	
	/*! Network address to contact device */
	var url: NSURL?
	
	convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if type {
			self.type = type
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
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["manufacturer"] as? String {
				self.manufacturer = val
			}
			if let val = js["model"] as? String {
				self.model = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["expiry"] as? String {
				self.expiry = NSDate(json: val)
			}
			if let val = js["udi"] as? String {
				self.udi = val
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["owner"] as? NSDictionary {
				self.owner = ResourceReference(json: val)
			}
			if let val = js["location"] as? NSDictionary {
				self.location = ResourceReference(json: val)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = Contact.from(val) as? [Contact]
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
		super.init(json: json)
	}
}
