//
//  Location.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Location) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? FHIRJSON {
				do {
					self.address = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "address"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["alias"] {
			presentKeys.insert("alias")
			if let val = exist as? [String] {
				self.alias = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "alias", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.endpoint = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "endpoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["managingOrganization"] {
			presentKeys.insert("managingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.managingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "managingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = LocationMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["partOf"] {
			presentKeys.insert("partOf")
			if let val = exist as? FHIRJSON {
				do {
					self.partOf = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partOf", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["physicalType"] {
			presentKeys.insert("physicalType")
			if let val = exist as? FHIRJSON {
				do {
					self.physicalType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "physicalType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "physicalType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["position"] {
			presentKeys.insert("position")
			if let val = exist as? FHIRJSON {
				do {
					self.position = try LocationPosition(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "position"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "position", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = LocationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["telecom"] {
			presentKeys.insert("telecom")
			if let val = exist as? [FHIRJSON] {
				do {
					self.telecom = try ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "telecom"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "telecom", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let address = self.address {
			json["address"] = address.asJSON(errors: &errors)
		}
		if let alias = self.alias {
			json["alias"] = alias.map() { $0.asJSON() }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON(errors: &errors)
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON(errors: &errors)
		}
		if let physicalType = self.physicalType {
			json["physicalType"] = physicalType.asJSON(errors: &errors)
		}
		if let position = self.position {
			json["position"] = position.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let telecom = self.telecom {
			json["telecom"] = telecom.map() { $0.asJSON(errors: &errors) }
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
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
	public var altitude: NSDecimalNumber?
	
	/// Latitude with WGS84 datum.
	public var latitude: NSDecimalNumber?
	
	/// Longitude with WGS84 datum.
	public var longitude: NSDecimalNumber?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(latitude: NSDecimalNumber, longitude: NSDecimalNumber) {
		self.init()
		self.latitude = latitude
		self.longitude = longitude
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["altitude"] {
			presentKeys.insert("altitude")
			if let val = exist as? NSNumber {
				self.altitude = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "altitude", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["latitude"] {
			presentKeys.insert("latitude")
			if let val = exist as? NSNumber {
				self.latitude = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "latitude", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "latitude"))
		}
		if let exist = json["longitude"] {
			presentKeys.insert("longitude")
			if let val = exist as? NSNumber {
				self.longitude = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "longitude", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "longitude"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let altitude = self.altitude {
			json["altitude"] = altitude.asJSON()
		}
		if let latitude = self.latitude {
			json["latitude"] = latitude.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "latitude"))
		}
		if let longitude = self.longitude {
			json["longitude"] = longitude.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "longitude"))
		}
		
		return json
	}
}

