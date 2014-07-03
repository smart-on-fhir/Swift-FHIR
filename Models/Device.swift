//
//  Device.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "Device" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Instance id from manufacturer, owner and others */
	var identifier: Identifier[]?

	/*! What kind of device this is */
	var type: CodeableConcept

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
	var contact: Contact[]?

	/*! Network address to contact device */
	var url: NSURL?

	init(type: CodeableConcept) {
		self.type = type
	}
}
