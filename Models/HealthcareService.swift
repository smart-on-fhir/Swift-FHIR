//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  The details of a Healthcare Service available at a location.
 */
public class HealthcareService: DomainResource
{
	override public class var resourceName: String {
		get { return "HealthcareService" }
	}
	
	/// Indicates if an appointment is required for access to this service
	public var appointmentRequired: Bool?
	
	/// A description of Site availability exceptions, e.g., public holiday availability. Succinctly describing all possible exceptions to normal Site availability as details in the Available Times and Not Available Times
	public var availabilityExceptions: String?
	
	/// A Collection of times that the Service Site is available
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Collection of Characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Any additional description of the service and/or any specific issues not covered by the other attributes, which can be displayed as further detail under the serviceName
	public var comment: String?
	
	/// The location(s) that this service is available to (not where the service is provided)
	public var coverageArea: [Reference]?
	
	/// Does this service have specific eligibility requirements that need to be met in order to use the service
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var eligibilityNote: String?
	
	/// Extra details about the service that can't be placed in the other fields
	public var extraDetails: String?
	
	/// External Identifiers for this item
	public var identifier: [Identifier]?
	
	/// The location where this healthcare service may be provided
	public var location: Reference?
	
	/// The HealthcareService is not available during this period of time due to the provided reason
	public var notAvailable: [HealthcareServiceNotAvailable]?
	
	/// If there is a photo/symbol associated with this HealthcareService, it may be included here to facilitate quick identification of the service in a list
	public var photo: Attachment?
	
	/// Program Names that can be used to categorize the service
	public var programName: [String]?
	
	/// The organization that provides this Healthcare Service
	public var providedBy: Reference?
	
	/// The public part of the 'keys' allocated to an Organization by an accredited body to support secure exchange of data over the internet. To be provided by the Organization, where available
	public var publicKey: String?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// Identifies the broad category of service being performed or delivered. Selecting a Service Category then determines the list of relevant service types that can be selected in the Primary Service Type
	public var serviceCategory: CodeableConcept?
	
	/// Further description of the service as it would be presented to a consumer while searching
	public var serviceName: String?
	
	/// The code(s) that detail the conditions under which the healthcare service is available/offered
	public var serviceProvisionCode: [CodeableConcept]?
	
	/// A specific type of service that may be delivered or performed
	public var serviceType: [HealthcareServiceServiceType]?
	
	/// List of contacts related to this specific healthcare service. If this is empty, then refer to the location's contacts
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(location: Reference?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "location"))
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
					self.serviceType = HealthcareServiceServiceType.from(val, owner: self) as? [HealthcareServiceServiceType]
				}
				else {
					errors.append(FHIRJSONError(key: "serviceType", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			json["location"] = location.asJSON()
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
			json["serviceType"] = HealthcareServiceServiceType.asJSONArray(serviceType)
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  A Collection of times that the Service Site is available.
 */
public class HealthcareServiceAvailableTime: FHIRElement
{
	override public class var resourceName: String {
		get { return "HealthcareServiceAvailableTime" }
	}
	
	/// Is this always available? (hence times are irrelevant) e.g. 24 hour service
	public var allDay: Bool?
	
	/// The closing time of day. Note: If the AllDay flag is set, then this time is ignored
	public var availableEndTime: Time?
	
	/// The opening time of day. Note: If the AllDay flag is set, then this time is ignored
	public var availableStartTime: Time?
	
	/// mon | tue | wed | thu | fri | sat | sun
	public var daysOfWeek: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
 *  The HealthcareService is not available during this period of time due to the provided reason.
 */
public class HealthcareServiceNotAvailable: FHIRElement
{
	override public class var resourceName: String {
		get { return "HealthcareServiceNotAvailable" }
	}
	
	/// The reason that can be presented to the user as to why this time is not available
	public var description_fhir: String?
	
	/// Service is not available (seasonally or for a public holiday) from this date
	public var during: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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


/**
 *  A specific type of service that may be delivered or performed.
 */
public class HealthcareServiceServiceType: FHIRElement
{
	override public class var resourceName: String {
		get { return "HealthcareServiceServiceType" }
	}
	
	/// Collection of Specialties handled by the Service Site. This is more of a Medical Term
	public var specialty: [CodeableConcept]?
	
	/// The specific type of service being delivered or performed
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["specialty"] {
				presentKeys.insert("specialty")
				if let val = exist as? [FHIRJSON] {
					self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "specialty", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let specialty = self.specialty {
			json["specialty"] = CodeableConcept.asJSONArray(specialty)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

