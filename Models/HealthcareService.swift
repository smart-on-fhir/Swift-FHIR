//
//  HealthcareService.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (healthcareservice.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  The details of a Healthcare Service available at a location.
 */
public class HealthcareService: FHIRResource
{
	override public class var resourceName: String {
		get { return "HealthcareService" }
	}
	
	/// Indicates whether or not a prospective consumer will require an appointment for a particular service at a Site to be provided by the Organization. Indicates if an appointment is required for access to this service. If this flag is 'NotDefined', then this flag is overridden by the Site's availability flag. (ConditionalIndicator Enum)
	public var appointmentRequired: CodeableConcept?
	
	/// A description of Site availability exceptions, e.g., public holiday availability. Succinctly describing all possible exceptions to normal Site availability as details in the Available Times and Not Available Times
	public var availabilityExceptions: String?
	
	/// A Collection of times that the Service Site is available
	public var availableTime: [HealthcareServiceAvailableTime]?
	
	/// Need better description
	public var catchmentArea: [CodeableConcept]?
	
	/// Collection of Characteristics (attributes)
	public var characteristic: [CodeableConcept]?
	
	/// Additional description of the  or any specific issues not covered by the other attributes, which can be displayed as further detail under the serviceName
	public var comment: String?
	
	/// List of contacts related to this specific healthcare service. If this is empty, then refer to the location's contacts
	public var contactPoint: [ContactPoint]?
	
	/// Need better description
	public var coverageArea: [CodeableConcept]?
	
	/// Does this service have specific eligibility requirements that need to be met in order to use the service
	public var eligibility: CodeableConcept?
	
	/// Describes the eligibility conditions for the service
	public var eligibilityNote: String?
	
	/// Extra details about the service that can't be placed in the other fields
	public var extraDetails: String?
	
	/// The free provision code provides a link to the Free Provision reference entity to enable the selection of one free provision type
	public var freeProvisionCode: CodeableConcept?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// If there is an image associated with this Service Site, its URI can be included here
	public var imageURI: NSURL?
	
	/// The location where this healthcare service may be provided
	public var location: Reference?
	
	/// Not avail times - need better description
	public var notAvailableTime: [HealthcareServiceNotAvailableTime]?
	
	/// Program Names that can be used to categorize the service
	public var programName: [String]?
	
	/// The public part of the 'keys' allocated to an Organization by an accredited body to support secure exchange of data over the internet. To be provided by the Organization, where available
	public var publicKey: String?
	
	/// Ways that the service accepts referrals
	public var referralMethod: [CodeableConcept]?
	
	/// Identifies the broad category of service being performed or delivered. Selecting a Service Category then determines the list of relevant service types that can be selected in the Primary Service Type
	public var serviceCategory: CodeableConcept?
	
	/// List of the specific
	public var serviceCode: [CodeableConcept]?
	
	/// Further description of the service as it would be presented to a consumer while searching
	public var serviceName: String?
	
	/// A specific type of service that may be delivered or performed
	public var serviceType: [HealthcareServiceServiceType]?
	
	/// The setting where this service can be provided, such is in home, or at location in organisation
	public var setting: [CodeableConcept]?
	
	/// Collection of Target Groups for the Service Site (The target audience that this service is for)
	public var targetGroup: [CodeableConcept]?
	
	public convenience init(location: Reference?) {
		self.init(json: nil)
		if nil != location {
			self.location = location
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["appointmentRequired"] as? JSONDictionary {
				self.appointmentRequired = CodeableConcept(json: val, owner: self)
			}
			if let val = js["availabilityExceptions"] as? String {
				self.availabilityExceptions = val
			}
			if let val = js["availableTime"] as? [JSONDictionary] {
				self.availableTime = HealthcareServiceAvailableTime.from(val, owner: self) as? [HealthcareServiceAvailableTime]
			}
			if let val = js["catchmentArea"] as? [JSONDictionary] {
				self.catchmentArea = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["characteristic"] as? [JSONDictionary] {
				self.characteristic = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["contactPoint"] as? [JSONDictionary] {
				self.contactPoint = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["coverageArea"] as? [JSONDictionary] {
				self.coverageArea = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["eligibility"] as? JSONDictionary {
				self.eligibility = CodeableConcept(json: val, owner: self)
			}
			if let val = js["eligibilityNote"] as? String {
				self.eligibilityNote = val
			}
			if let val = js["extraDetails"] as? String {
				self.extraDetails = val
			}
			if let val = js["freeProvisionCode"] as? JSONDictionary {
				self.freeProvisionCode = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["imageURI"] as? String {
				self.imageURI = NSURL(json: val)
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["notAvailableTime"] as? [JSONDictionary] {
				self.notAvailableTime = HealthcareServiceNotAvailableTime.from(val, owner: self) as? [HealthcareServiceNotAvailableTime]
			}
			if let val = js["programName"] as? [String] {
				self.programName = val
			}
			if let val = js["publicKey"] as? String {
				self.publicKey = val
			}
			if let val = js["referralMethod"] as? [JSONDictionary] {
				self.referralMethod = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["serviceCategory"] as? JSONDictionary {
				self.serviceCategory = CodeableConcept(json: val, owner: self)
			}
			if let val = js["serviceCode"] as? [JSONDictionary] {
				self.serviceCode = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["serviceName"] as? String {
				self.serviceName = val
			}
			if let val = js["serviceType"] as? [JSONDictionary] {
				self.serviceType = HealthcareServiceServiceType.from(val, owner: self) as? [HealthcareServiceServiceType]
			}
			if let val = js["setting"] as? [JSONDictionary] {
				self.setting = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["targetGroup"] as? [JSONDictionary] {
				self.targetGroup = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
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
	
	/// The closing time of day (the date is not included). Note: If the AllDay flag is set, then this time is ignored
	public var availableEndTime: NSDate?
	
	/// The opening time of day (the date is not included). Note: If the AllDay flag is set, then this time is ignored
	public var availableStartTime: NSDate?
	
	/// Indicates which Days of the week are available between the Start and End Times
	public var daysOfWeek: [CodeableConcept]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["allDay"] as? Bool {
				self.allDay = val
			}
			if let val = js["availableEndTime"] as? String {
				self.availableEndTime = NSDate(json: val)
			}
			if let val = js["availableStartTime"] as? String {
				self.availableStartTime = NSDate(json: val)
			}
			if let val = js["daysOfWeek"] as? [JSONDictionary] {
				self.daysOfWeek = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
}


/**
 *  Not avail times - need better description.
 */
public class HealthcareServiceNotAvailableTime: FHIRElement
{
	override public class var resourceName: String {
		get { return "HealthcareServiceNotAvailableTime" }
	}
	
	/// The reason that can be presented to the user as to why this time is not available
	public var description: String?
	
	/// Service is not available (seasonally or for a public holiday) until this date
	public var endDate: NSDate?
	
	/// Service is not available (seasonally or for a public holiday) from this date
	public var startDate: NSDate?
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if nil != description {
			self.description = description
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["endDate"] as? String {
				self.endDate = NSDate(json: val)
			}
			if let val = js["startDate"] as? String {
				self.startDate = NSDate(json: val)
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["specialty"] as? [JSONDictionary] {
				self.specialty = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

