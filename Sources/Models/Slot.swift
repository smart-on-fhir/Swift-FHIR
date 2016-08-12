//
//  Slot.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Slot) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A slot of time on a schedule that may be available for booking appointments.
 */
public class Slot: DomainResource {
	override public class var resourceName: String {
		get { return "Slot" }
	}
	
	/// The style of appointment or patient that has been booked in the slot (not service type).
	public var appointmentType: CodeableConcept?
	
	/// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
	public var comment: String?
	
	/// Date/Time that the slot is to conclude.
	public var end: Instant?
	
	/// External Ids for this item.
	public var identifier: [Identifier]?
	
	/// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
	public var overbooked: Bool?
	
	/// The schedule resource that this slot defines an interval of status information.
	public var schedule: Reference?
	
	/// A broad categorisation of the service that is to be performed during this appointment.
	public var serviceCategory: CodeableConcept?
	
	/// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource.
	public var serviceType: [CodeableConcept]?
	
	/// The specialty of a practitioner that would be required to perform the service requested in this appointment.
	public var specialty: [CodeableConcept]?
	
	/// Date/Time that the slot is to begin.
	public var start: Instant?
	
	/// busy | free | busy-unavailable | busy-tentative | entered-in-error.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(end: Instant, schedule: Reference, start: Instant, status: String) {
		self.init(json: nil)
		self.end = end
		self.schedule = schedule
		self.start = start
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["appointmentType"] {
				presentKeys.insert("appointmentType")
				if let val = exist as? FHIRJSON {
					self.appointmentType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "appointmentType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "end"))
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["overbooked"] {
				presentKeys.insert("overbooked")
				if let val = exist as? Bool {
					self.overbooked = val
				}
				else {
					errors.append(FHIRJSONError(key: "overbooked", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "schedule"))
			}
			if let exist: AnyObject = js["serviceCategory"] {
				presentKeys.insert("serviceCategory")
				if let val = exist as? FHIRJSON {
					self.serviceCategory = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceType"] {
				presentKeys.insert("serviceType")
				if let val = exist as? [FHIRJSON] {
					self.serviceType = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "start"))
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let appointmentType = self.appointmentType {
			json["appointmentType"] = appointmentType.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let overbooked = self.overbooked {
			json["overbooked"] = overbooked.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON()
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = CodeableConcept.asJSONArray(serviceType)
		}
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

