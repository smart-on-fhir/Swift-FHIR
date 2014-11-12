//
//  Device.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (device.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  An instance of a manufactured thing that is used in the provision of healthcare.
 *
 *  Scope and Usage This resource is primarily used for recording which device performed an action and can also be used
 *  to track device location. It is also used for prescribing and dispensing devices for patient use. If the device is
 *  implanted in a patient, then the patient element will be present, and there would be no location.
 *  
 *  Devices that are implanted in a patient differ from medications because they are not "used up" - they remain active
 *  in a patient in an ongoing fashion. The Medication resource SHOULD not be used to represent implanted devices.
 */
public class Device: FHIRResource
{
	override public class var resourceName: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support
	public var contact: [Contact]?
	
	/// Date of expiry of this device (if applicable)
	public var expiry: NSDate?
	
	/// Instance id from manufacturer, owner and others
	public var identifier: [Identifier]?
	
	/// Where the resource is found
	public var location: FHIRReference<Location>?
	
	/// Lot number of manufacture
	public var lotNumber: String?
	
	/// Name of device manufacturer
	public var manufacturer: String?
	
	/// Model id assigned by the manufacturer
	public var model: String?
	
	/// Organization responsible for device
	public var owner: FHIRReference<Organization>?
	
	/// If the resource is affixed to a person
	public var patient: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// What kind of device this is
	public var type: CodeableConcept?
	
	/// FDA Mandated Unique Device Identifier
	public var udi: String?
	
	/// Network address to contact device
	public var url: NSURL?
	
	/// Version number (i.e. software)
	public var version: String?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? [NSDictionary] {
				self.contact = Contact.from(val, owner: self) as? [Contact]
			}
			if let val = js["expiry"] as? String {
				self.expiry = NSDate(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? NSDictionary {
				self.location = FHIRReference(json: val, owner: self)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["manufacturer"] as? String {
				self.manufacturer = val
			}
			if let val = js["model"] as? String {
				self.model = val
			}
			if let val = js["owner"] as? NSDictionary {
				self.owner = FHIRReference(json: val, owner: self)
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["udi"] as? String {
				self.udi = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}

