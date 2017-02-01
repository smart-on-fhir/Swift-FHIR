//
//  Location.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Location) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Details and position information for a physical place.

Details and position information for a physical place where services are provided  and resources and participants may be
stored, found, contained or accommodated.
*/
open class Location: DomainResource {
	override open class var resourceType: String {
		get { return "Location" }
	}
	
	/// Physical location.
	public var address: Address?
	
	/// A list of alternate names that the location is known as, or was known as in the past.
	public var alias: [FHIRString]?
	
	/// Additional details about the location that could be displayed as further information to identify the location
	/// beyond its name.
	public var description_fhir: FHIRString?
	
	/// Technical endpoints providing access to services operated for the location.
	public var endpoint: [Reference]?
	
	/// Unique code or number identifying the location to its users.
	public var identifier: [Identifier]?
	
	/// Organization responsible for provisioning and upkeep.
	public var managingOrganization: Reference?
	
	/// Indicates whether a resource instance represents a specific location or a class of locations.
	public var mode: LocationMode?
	
	/// Name of the location as used by humans.
	public var name: FHIRString?
	
	/// Another Location this one is physically part of.
	public var partOf: Reference?
	
	/// Physical form of the location.
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location.
	public var position: LocationPosition?
	
	/// None
	public var status: LocationStatus?
	
	/// Contact details of the location.
	public var telecom: [ContactPoint]?
	
	/// Type of function performed.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		address = try createInstance(type: Address.self, for: "address", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? address
		alias = try createInstances(of: FHIRString.self, for: "alias", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? alias
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		endpoint = try createInstances(of: Reference.self, for: "endpoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? endpoint
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		managingOrganization = try createInstance(type: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		mode = createEnum(type: LocationMode.self, for: "mode", in: json, presentKeys: &presentKeys, errors: &errors) ?? mode
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		partOf = try createInstance(type: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		physicalType = try createInstance(type: CodeableConcept.self, for: "physicalType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? physicalType
		position = try createInstance(type: LocationPosition.self, for: "position", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? position
		status = createEnum(type: LocationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		telecom = try createInstances(of: ContactPoint.self, for: "telecom", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? telecom
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.address?.decorate(json: &json, withKey: "address", errors: &errors)
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "endpoint", using: self.endpoint, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.managingOrganization?.decorate(json: &json, withKey: "managingOrganization", errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		self.physicalType?.decorate(json: &json, withKey: "physicalType", errors: &errors)
		self.position?.decorate(json: &json, withKey: "position", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "telecom", using: self.telecom, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		altitude = try createInstance(type: FHIRDecimal.self, for: "altitude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? altitude
		latitude = try createInstance(type: FHIRDecimal.self, for: "latitude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? latitude
		if nil == latitude && !presentKeys.contains("latitude") {
			errors.append(FHIRValidationError(missing: "latitude"))
		}
		longitude = try createInstance(type: FHIRDecimal.self, for: "longitude", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? longitude
		if nil == longitude && !presentKeys.contains("longitude") {
			errors.append(FHIRValidationError(missing: "longitude"))
		}
		
		return errors.isEmpty ? nil : errors
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

