//
//  Location.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Location) on 2019-05-21.
//  2019, SMART Health IT.
//

import Foundation


/**
Details and position information for a physical place.

Details and position information for a physical place where services are provided and resources and participants may be
stored, found, contained, or accommodated.
*/
open class Location: DomainResource {
	override open class var resourceType: String {
		get { return "Location" }
	}
	
	/// Physical location.
	public var address: Address?
	
	/// A list of alternate names that the location is known as, or was known as, in the past.
	public var alias: [FHIRString]?
	
	/// Description of availability exceptions.
	public var availabilityExceptions: FHIRString?
	
	/// Additional details about the location that could be displayed as further information to identify the location
	/// beyond its name.
	public var description_fhir: FHIRString?
	
	/// Technical endpoints providing access to services operated for the location.
	public var endpoint: [Reference]?
	
	/// What days/times during a week is this location usually open.
	public var hoursOfOperation: [LocationHoursOfOperation]?
	
	/// Unique code or number identifying the location to its users.
	public var identifier: [Identifier]?
	
	/// Organization responsible for provisioning and upkeep.
	public var managingOrganization: Reference?
	
	/// Indicates whether a resource instance represents a specific location or a class of locations.
	public var mode: LocationMode?
	
	/// Name of the location as used by humans.
	public var name: FHIRString?
	
	/// The operational status of the location (typically only for a bed/room).
	public var operationalStatus: Coding?
	
	/// Another Location this one is physically a part of.
	public var partOf: Reference?
	
	/// Physical form of the location.
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location.
	public var position: LocationPosition?
	
	/// The status property covers the general availability of the resource, not the current value which may be covered
	/// by the operationStatus, or by a schedule/slots if they are configured for the location.
	public var status: LocationStatus?
	
	/// Contact details of the location.
	public var telecom: [ContactPoint]?
	
	/// Type of function performed.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		address = createInstance(type: Address.self, for: "address", in: json, context: &instCtx, owner: self) ?? address
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		availabilityExceptions = createInstance(type: FHIRString.self, for: "availabilityExceptions", in: json, context: &instCtx, owner: self) ?? availabilityExceptions
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		endpoint = createInstances(of: Reference.self, for: "endpoint", in: json, context: &instCtx, owner: self) ?? endpoint
		hoursOfOperation = createInstances(of: LocationHoursOfOperation.self, for: "hoursOfOperation", in: json, context: &instCtx, owner: self) ?? hoursOfOperation
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		managingOrganization = createInstance(type: Reference.self, for: "managingOrganization", in: json, context: &instCtx, owner: self) ?? managingOrganization
		mode = createEnum(type: LocationMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		operationalStatus = createInstance(type: Coding.self, for: "operationalStatus", in: json, context: &instCtx, owner: self) ?? operationalStatus
		partOf = createInstance(type: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		physicalType = createInstance(type: CodeableConcept.self, for: "physicalType", in: json, context: &instCtx, owner: self) ?? physicalType
		position = createInstance(type: LocationPosition.self, for: "position", in: json, context: &instCtx, owner: self) ?? position
		status = createEnum(type: LocationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		telecom = createInstances(of: ContactPoint.self, for: "telecom", in: json, context: &instCtx, owner: self) ?? telecom
		type = createInstances(of: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		self.availabilityExceptions?.decorate(json: &json, withKey: "availabilityExceptions", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "hoursOfOperation", using: self.hoursOfOperation, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.operationalStatus?.decorate(json: &json, withKey: "operationalStatus", errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		self.physicalType?.decorate(json: &json, withKey: "physicalType", errors: &errors)
		self.position?.decorate(json: &json, withKey: "position", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
What days/times during a week is this location usually open.
*/
open class LocationHoursOfOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "LocationHoursOfOperation" }
	}
	
	/// The Location is open all day.
	public var allDay: FHIRBool?
	
	/// Time that the Location closes.
	public var closingTime: FHIRTime?
	
	/// Indicates which days of the week are available between the start and end Times.
	public var daysOfWeek: [DaysOfWeek]?
	
	/// Time that the Location opens.
	public var openingTime: FHIRTime?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		allDay = createInstance(type: FHIRBool.self, for: "allDay", in: json, context: &instCtx, owner: self) ?? allDay
		closingTime = createInstance(type: FHIRTime.self, for: "closingTime", in: json, context: &instCtx, owner: self) ?? closingTime
		daysOfWeek = createEnums(of: DaysOfWeek.self, for: "daysOfWeek", in: json, context: &instCtx) ?? daysOfWeek
		openingTime = createInstance(type: FHIRTime.self, for: "openingTime", in: json, context: &instCtx, owner: self) ?? openingTime
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.allDay?.decorate(json: &json, withKey: "allDay", errors: &errors)
		self.closingTime?.decorate(json: &json, withKey: "closingTime", errors: &errors)
		arrayDecorate(json: &json, withKey: "daysOfWeek", using: self.daysOfWeek, errors: &errors)
		self.openingTime?.decorate(json: &json, withKey: "openingTime", errors: &errors)
	}
}


/**
The absolute geographic location.

The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system
used in KML).
*/
open class LocationPosition: BackboneElement {
	override open class var resourceType: String {
		get { return "LocationPosition" }
	}
	
	/// Altitude with WGS84 datum.
	public var altitude: FHIRDecimal?
	
	/// Latitude with WGS84 datum.
	public var latitude: FHIRDecimal?
	
	/// Longitude with WGS84 datum.
	public var longitude: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(latitude: FHIRDecimal, longitude: FHIRDecimal) {
		self.init()
		self.latitude = latitude
		self.longitude = longitude
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		altitude = createInstance(type: FHIRDecimal.self, for: "altitude", in: json, context: &instCtx, owner: self) ?? altitude
		latitude = createInstance(type: FHIRDecimal.self, for: "latitude", in: json, context: &instCtx, owner: self) ?? latitude
		if nil == latitude && !instCtx.containsKey("latitude") {
			instCtx.addError(FHIRValidationError(missing: "latitude"))
		}
		longitude = createInstance(type: FHIRDecimal.self, for: "longitude", in: json, context: &instCtx, owner: self) ?? longitude
		if nil == longitude && !instCtx.containsKey("longitude") {
			instCtx.addError(FHIRValidationError(missing: "longitude"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.altitude?.decorate(json: &json, withKey: "altitude", errors: &errors)
		self.latitude?.decorate(json: &json, withKey: "latitude", errors: &errors)
		if nil == self.latitude {
			errors.append(FHIRValidationError(missing: "latitude"))
		}
		self.longitude?.decorate(json: &json, withKey: "longitude", errors: &errors)
		if nil == self.longitude {
			errors.append(FHIRValidationError(missing: "longitude"))
		}
	}
}

