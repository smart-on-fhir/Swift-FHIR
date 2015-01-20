//
//  DeviceUseStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (deviceusestatement.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A record of a device being used by a patient where the record is the result of a report from the patient or another
 *  clinician..
 *
 *  A record of a device being used by a patient where the record is the result of a report from the patient or another
 *  clinician.
 */
public class DeviceUseStatement: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceUseStatement" }
	}
	
	/// Body site where the device was used.
	public var bodySite: [CodeableConcept]?
	
	/// The details of the device used.
	public var device: Reference?
	
	/// An external identifier for this statement such as an IRI.
	public var identifier: [Identifier]?
	
	/// Reason or justification for the use of the device.
	public var indication: [CodeableConcept]?
	
	/// Details about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.
	public var notes: [String]?
	
	/// The time at which the statement was made/recorded.
	public var recordedOn: DateTime?
	
	/// The patient who used the device.
	public var subject: Reference?
	
	/// How often the device was used.
	public var timingDateTime: DateTime?
	
	/// How often the device was used.
	public var timingPeriod: Period?
	
	/// How often the device was used.
	public var timingTiming: Timing?
	
	/// The time period over which the device was used.
	public var whenUsed: Period?
	
	public convenience init(device: Reference?, subject: Reference?) {
		self.init(json: nil)
		if nil != device {
			self.device = device
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bodySite"] as? [JSONDictionary] {
				self.bodySite = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["device"] as? JSONDictionary {
				self.device = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indication"] as? [JSONDictionary] {
				self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["notes"] as? [String] {
				self.notes = val
			}
			if let val = js["recordedOn"] as? String {
				self.recordedOn = DateTime(string: val)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["timingDateTime"] as? String {
				self.timingDateTime = DateTime(string: val)
			}
			if let val = js["timingPeriod"] as? JSONDictionary {
				self.timingPeriod = Period(json: val, owner: self)
			}
			if let val = js["timingTiming"] as? JSONDictionary {
				self.timingTiming = Timing(json: val, owner: self)
			}
			if let val = js["whenUsed"] as? JSONDictionary {
				self.whenUsed = Period(json: val, owner: self)
			}
		}
	}
}

