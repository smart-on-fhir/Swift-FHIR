//
//  HealthcareService.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/HealthcareService) on 2015-04-03.
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
	
	public convenience init(location: Reference?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appointmentRequired"] as? Bool {
				self.appointmentRequired = val
			}
			if let val = js["availabilityExceptions"] as? String {
				self.availabilityExceptions = val
			}
			if let val = js["availableTime"] as? [FHIRJSON] {
				self.availableTime = HealthcareServiceAvailableTime.from(val, owner: self) as? [HealthcareServiceAvailableTime]
			}
			if let val = js["characteristic"] as? [FHIRJSON] {
				self.characteristic = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["coverageArea"] as? [FHIRJSON] {
				self.coverageArea = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["eligibility"] as? FHIRJSON {
				self.eligibility = CodeableConcept(json: val, owner: self)
			}
			if let val = js["eligibilityNote"] as? String {
				self.eligibilityNote = val
			}
			if let val = js["extraDetails"] as? String {
				self.extraDetails = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? FHIRJSON {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["notAvailable"] as? [FHIRJSON] {
				self.notAvailable = HealthcareServiceNotAvailable.from(val, owner: self) as? [HealthcareServiceNotAvailable]
			}
			if let val = js["photo"] as? FHIRJSON {
				self.photo = Attachment(json: val, owner: self)
			}
			if let val = js["programName"] as? [String] {
				self.programName = val
			}
			if let val = js["providedBy"] as? FHIRJSON {
				self.providedBy = Reference(json: val, owner: self)
			}
			if let val = js["publicKey"] as? String {
				self.publicKey = val
			}
			if let val = js["referralMethod"] as? [FHIRJSON] {
				self.referralMethod = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["serviceCategory"] as? FHIRJSON {
				self.serviceCategory = CodeableConcept(json: val, owner: self)
			}
			if let val = js["serviceName"] as? String {
				self.serviceName = val
			}
			if let val = js["serviceProvisionCode"] as? [FHIRJSON] {
				self.serviceProvisionCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["serviceType"] as? [FHIRJSON] {
				self.serviceType = HealthcareServiceServiceType.from(val, owner: self) as? [HealthcareServiceServiceType]
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["allDay"] as? Bool {
				self.allDay = val
			}
			if let val = js["availableEndTime"] as? String {
				self.availableEndTime = Time(string: val)
			}
			if let val = js["availableStartTime"] as? String {
				self.availableStartTime = Time(string: val)
			}
			if let val = js["daysOfWeek"] as? [String] {
				self.daysOfWeek = val
			}
		}
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
	
	public convenience init(description_fhir: String?) {
		self.init(json: nil)
		if nil != description_fhir {
			self.description_fhir = description_fhir
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["during"] as? FHIRJSON {
				self.during = Period(json: val, owner: self)
			}
		}
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
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["specialty"] as? [FHIRJSON] {
				self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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

