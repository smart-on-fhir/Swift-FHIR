//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  The details of a healthcare service available at a location.
 */
public class HealthcareService: DomainResource {
	override public class var resourceName: String {
		get { return "HealthcareService" }
	}
	
	/// Whether this healthcareservice is in active use.
	public var active: Bool?
	
	/// If an appointment is required for access to this service.
	public var appointmentRequired: Bool?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: String?
	
	/// Times the Service Site is available.
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Collection of characteristics (attributes).
	public var characteristic: [CodeableConcept]?
	
	/// Additional description and/or any specific issues not covered elsewhere.
	public var comment: String?
	
	/// Location(s) service is inteded for/available to.
	public var coverageArea: [Reference]?
	
	/// Specific eligibility requirements required to use the service.
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service.
	public var eligibilityNote: String?
	
	/// Extra details about the service that can't be placed in the other fields.
	public var extraDetails: String?
	
	/// External identifiers for this item.
	public var identifier: [Identifier]?
	
	/// Location(s) where service may be provided.
	public var location: [Reference]?
	
	/// Not available during this time due to provided reason.
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// Facilitates quick identification of the service.
	public var photo: Attachment?
	
	/// Program Names that categorize the service.
	public var programName: [String]?
	
	/// Organization that provides this service.
	public var providedBy: Reference?
	
	/// PKI Public keys to support secure communications.
	public var publicKey: String?
	
	/// Ways that the service accepts referrals.
	public var referralMethod: [CodeableConcept]?
	
	/// Broad category of service being performed or delivered.
	public var serviceCategory: CodeableConcept?
	
	/// Description of service as presented to a consumer while searching.
	public var serviceName: String?
	
	/// Conditions under which service is available/offered.
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// Type of service that may be delivered or performed.
	public var serviceType: [CodeableConcept]?
	
	/// Specialties handled by the HealthcareService.
	public var specialty: [CodeableConcept]?
	
	/// Contacts related to the healthcare service.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["active"] {
				presentKeys.insert("active")
				if let val = exist as? Bool {
					self.active = val
				}
				else {
					errors.append(FHIRJSONError(key: "active", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["appointmentRequired"] {
				presentKeys.insert("appointmentRequired")
				if let val = exist as? Bool {
					self.appointmentRequired = val
				}
				else {
					errors.append(FHIRJSONError(key: "appointmentRequired", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availabilityExceptions"] {
				presentKeys.insert("availabilityExceptions")
				if let val = exist as? String {
					self.availabilityExceptions = val
				}
				else {
					errors.append(FHIRJSONError(key: "availabilityExceptions", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableTime"] {
				presentKeys.insert("availableTime")
				if let val = exist as? [FHIRJSON] {
					self.availableTime = HealthcareServiceAvailableTime.from(val, owner: self) as? [HealthcareServiceAvailableTime]
				}
				else {
					errors.append(FHIRJSONError(key: "availableTime", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["characteristic"] {
				presentKeys.insert("characteristic")
				if let val = exist as? [FHIRJSON] {
					self.characteristic = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "characteristic", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["coverageArea"] {
				presentKeys.insert("coverageArea")
				if let val = exist as? [FHIRJSON] {
					self.coverageArea = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "coverageArea", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["eligibility"] {
				presentKeys.insert("eligibility")
				if let val = exist as? FHIRJSON {
					self.eligibility = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "eligibility", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["eligibilityNote"] {
				presentKeys.insert("eligibilityNote")
				if let val = exist as? String {
					self.eligibilityNote = val
				}
				else {
					errors.append(FHIRJSONError(key: "eligibilityNote", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["extraDetails"] {
				presentKeys.insert("extraDetails")
				if let val = exist as? String {
					self.extraDetails = val
				}
				else {
					errors.append(FHIRJSONError(key: "extraDetails", wants: String.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? [FHIRJSON] {
					self.location = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["notAvailable"] {
				presentKeys.insert("notAvailable")
				if let val = exist as? [FHIRJSON] {
					self.notAvailable = HealthcareServiceNotAvailable.from(val, owner: self) as? [HealthcareServiceNotAvailable]
				}
				else {
					errors.append(FHIRJSONError(key: "notAvailable", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["photo"] {
				presentKeys.insert("photo")
				if let val = exist as? FHIRJSON {
					self.photo = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "photo", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["programName"] {
				presentKeys.insert("programName")
				if let val = exist as? [String] {
					self.programName = val
				}
				else {
					errors.append(FHIRJSONError(key: "programName", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["providedBy"] {
				presentKeys.insert("providedBy")
				if let val = exist as? FHIRJSON {
					self.providedBy = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providedBy", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publicKey"] {
				presentKeys.insert("publicKey")
				if let val = exist as? String {
					self.publicKey = val
				}
				else {
					errors.append(FHIRJSONError(key: "publicKey", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["referralMethod"] {
				presentKeys.insert("referralMethod")
				if let val = exist as? [FHIRJSON] {
					self.referralMethod = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "referralMethod", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["serviceName"] {
				presentKeys.insert("serviceName")
				if let val = exist as? String {
					self.serviceName = val
				}
				else {
					errors.append(FHIRJSONError(key: "serviceName", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceProvisionCode"] {
				presentKeys.insert("serviceProvisionCode")
				if let val = exist as? [FHIRJSON] {
					self.serviceProvisionCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceProvisionCode", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let appointmentRequired = self.appointmentRequired {
			json["appointmentRequired"] = appointmentRequired.asJSON()
		}
		if let availabilityExceptions = self.availabilityExceptions {
			json["availabilityExceptions"] = availabilityExceptions.asJSON()
		}
		if let availableTime = self.availableTime {
			json["availableTime"] = HealthcareServiceAvailableTime.asJSONArray(availableTime)
		}
		if let characteristic = self.characteristic {
			json["characteristic"] = CodeableConcept.asJSONArray(characteristic)
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let coverageArea = self.coverageArea {
			json["coverageArea"] = Reference.asJSONArray(coverageArea)
		}
		if let eligibility = self.eligibility {
			json["eligibility"] = eligibility.asJSON()
		}
		if let eligibilityNote = self.eligibilityNote {
			json["eligibilityNote"] = eligibilityNote.asJSON()
		}
		if let extraDetails = self.extraDetails {
			json["extraDetails"] = extraDetails.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = Reference.asJSONArray(location)
		}
		if let notAvailable = self.notAvailable {
			json["notAvailable"] = HealthcareServiceNotAvailable.asJSONArray(notAvailable)
		}
		if let photo = self.photo {
			json["photo"] = photo.asJSON()
		}
		if let programName = self.programName {
			var arr = [AnyObject]()
			for val in programName {
				arr.append(val.asJSON())
			}
			json["programName"] = arr
		}
		if let providedBy = self.providedBy {
			json["providedBy"] = providedBy.asJSON()
		}
		if let publicKey = self.publicKey {
			json["publicKey"] = publicKey.asJSON()
		}
		if let referralMethod = self.referralMethod {
			json["referralMethod"] = CodeableConcept.asJSONArray(referralMethod)
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON()
		}
		if let serviceName = self.serviceName {
			json["serviceName"] = serviceName.asJSON()
		}
		if let serviceProvisionCode = self.serviceProvisionCode {
			json["serviceProvisionCode"] = CodeableConcept.asJSONArray(serviceProvisionCode)
		}
		if let serviceType = self.serviceType {
			json["serviceType"] = CodeableConcept.asJSONArray(serviceType)
		}
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  Times the Service Site is available.
 *
 *  A collection of times that the Service Site is available.
 */
public class HealthcareServiceAvailableTime: BackboneElement {
	override public class var resourceName: String {
		get { return "HealthcareServiceAvailableTime" }
	}
	
	/// Always available? e.g. 24 hour service.
	public var allDay: Bool?
	
	/// Closing time of day (ignored if allDay = true).
	public var availableEndTime: Time?
	
	/// Opening time of day (ignored if allDay = true).
	public var availableStartTime: Time?
	
	/// mon | tue | wed | thu | fri | sat | sun.
	public var daysOfWeek: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["allDay"] {
				presentKeys.insert("allDay")
				if let val = exist as? Bool {
					self.allDay = val
				}
				else {
					errors.append(FHIRJSONError(key: "allDay", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableEndTime"] {
				presentKeys.insert("availableEndTime")
				if let val = exist as? String {
					self.availableEndTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "availableEndTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["availableStartTime"] {
				presentKeys.insert("availableStartTime")
				if let val = exist as? String {
					self.availableStartTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "availableStartTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["daysOfWeek"] {
				presentKeys.insert("daysOfWeek")
				if let val = exist as? [String] {
					self.daysOfWeek = val
				}
				else {
					errors.append(FHIRJSONError(key: "daysOfWeek", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let allDay = self.allDay {
			json["allDay"] = allDay.asJSON()
		}
		if let availableEndTime = self.availableEndTime {
			json["availableEndTime"] = availableEndTime.asJSON()
		}
		if let availableStartTime = self.availableStartTime {
			json["availableStartTime"] = availableStartTime.asJSON()
		}
		if let daysOfWeek = self.daysOfWeek {
			var arr = [AnyObject]()
			for val in daysOfWeek {
				arr.append(val.asJSON())
			}
			json["daysOfWeek"] = arr
		}
		
		return json
	}
}


/**
 *  Not available during this time due to provided reason.
 *
 *  The HealthcareService is not available during this period of time due to the provided reason.
 */
public class HealthcareServiceNotAvailable: BackboneElement {
	override public class var resourceName: String {
		get { return "HealthcareServiceNotAvailable" }
	}
	
	/// Reason presented to the user explaining why time not available.
	public var description_fhir: String?
	
	/// Service not availablefrom this date.
	public var during: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String) {
		self.init(json: nil)
		self.description_fhir = description_fhir
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "description"))
			}
			if let exist: AnyObject = js["during"] {
				presentKeys.insert("during")
				if let val = exist as? FHIRJSON {
					self.during = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "during", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let during = self.during {
			json["during"] = during.asJSON()
		}
		
		return json
	}
}

