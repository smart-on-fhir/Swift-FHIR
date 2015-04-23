//
//  DeviceUseRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DeviceUseRequest) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A request for a patient to use or be given a medical device.
 *
 *  Represents a request for a patient to employ a medical device. The device may be an implantable device, or an
 *  external assistive device, such as a walker.
 */
public class DeviceUseRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "DeviceUseRequest" }
	}
	
	/// Target body site
	public var bodySiteCodeableConcept: CodeableConcept?
	
	/// Target body site
	public var bodySiteReference: Reference?
	
	/// Device requested
	public var device: Reference?
	
	/// Encounter motivating request
	public var encounter: Reference?
	
	/// Request identifier
	public var identifier: [Identifier]?
	
	/// Reason for request
	public var indication: [CodeableConcept]?
	
	/// Notes or comments
	public var notes: [String]?
	
	/// When ordered
	public var orderedOn: DateTime?
	
	/// routine | urgent | stat | asap
	public var priority: String?
	
	/// PRN
	public var prnReason: [CodeableConcept]?
	
	/// When recorded
	public var recordedOn: DateTime?
	
	/// proposed | planned | requested | received | accepted | in-progress | completed | suspended | rejected | aborted
	public var status: String?
	
	/// Focus of request
	public var subject: Reference?
	
	/// Schedule for use
	public var timingDateTime: DateTime?
	
	/// Schedule for use
	public var timingPeriod: Period?
	
	/// Schedule for use
	public var timingTiming: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(device: Reference?, subject: Reference?) {
		self.init(json: nil)
		if nil != device {
			self.device = device
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bodySiteCodeableConcept"] {
				presentKeys.addObject("bodySiteCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.bodySiteCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["bodySiteReference"] {
				presentKeys.addObject("bodySiteReference")
				if let val = exist as? FHIRJSON {
					self.bodySiteReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bodySiteReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["device"] {
				presentKeys.addObject("device")
				if let val = exist as? FHIRJSON {
					self.device = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"device\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"device\" but it is missing"))
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["indication"] {
				presentKeys.addObject("indication")
				if let val = exist as? [FHIRJSON] {
					self.indication = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"indication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? [String] {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderedOn"] {
				presentKeys.addObject("orderedOn")
				if let val = exist as? String {
					self.orderedOn = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderedOn\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["priority"] {
				presentKeys.addObject("priority")
				if let val = exist as? String {
					self.priority = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"priority\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["prnReason"] {
				presentKeys.addObject("prnReason")
				if let val = exist as? [FHIRJSON] {
					self.prnReason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"prnReason\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["recordedOn"] {
				presentKeys.addObject("recordedOn")
				if let val = exist as? String {
					self.recordedOn = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recordedOn\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"subject\" but it is missing"))
			}
			if let exist: AnyObject = js["timingDateTime"] {
				presentKeys.addObject("timingDateTime")
				if let val = exist as? String {
					self.timingDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["timingPeriod"] {
				presentKeys.addObject("timingPeriod")
				if let val = exist as? FHIRJSON {
					self.timingPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["timingTiming"] {
				presentKeys.addObject("timingTiming")
				if let val = exist as? FHIRJSON {
					self.timingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"timingTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bodySiteCodeableConcept = self.bodySiteCodeableConcept {
			json["bodySiteCodeableConcept"] = bodySiteCodeableConcept.asJSON()
		}
		if let bodySiteReference = self.bodySiteReference {
			json["bodySiteReference"] = bodySiteReference.asJSON()
		}
		if let device = self.device {
			json["device"] = device.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indication = self.indication {
			json["indication"] = CodeableConcept.asJSONArray(indication)
		}
		if let notes = self.notes {
			var arr = [AnyObject]()
			for val in notes {
				arr.append(val.asJSON())
			}
			json["notes"] = arr
		}
		if let orderedOn = self.orderedOn {
			json["orderedOn"] = orderedOn.asJSON()
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let prnReason = self.prnReason {
			json["prnReason"] = CodeableConcept.asJSONArray(prnReason)
		}
		if let recordedOn = self.recordedOn {
			json["recordedOn"] = recordedOn.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let timingDateTime = self.timingDateTime {
			json["timingDateTime"] = timingDateTime.asJSON()
		}
		if let timingPeriod = self.timingPeriod {
			json["timingPeriod"] = timingPeriod.asJSON()
		}
		if let timingTiming = self.timingTiming {
			json["timingTiming"] = timingTiming.asJSON()
		}
		
		return json
	}
}

