//
//  Location.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Location) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Details and position information for a physical place.
 *
 *  Details and position information for a physical place where services are provided  and resources and participants
 *  may be stored, found, contained or accommodated.
 */
public class Location: DomainResource {
	override public class var resourceName: String {
		get { return "Location" }
	}
	
	/// Physical location.
	public var address: Address?
	
	/// A list of alternate names that the location is known as, or was known as in the past.
	public var alias: [String]?
	
	/// Additional details about the location that could be displayed as further information to identify the location beyond its name.
	public var description_fhir: String?
	
	/// Technical endpoints providing access to services operated for the location.
	public var endpoint: [Reference]?
	
	/// Unique code or number identifying the location to its users.
	public var identifier: [Identifier]?
	
	/// Organization responsible for provisioning and upkeep.
	public var managingOrganization: Reference?
	
	/// instance | kind.
	public var mode: String?
	
	/// Name of the location as used by humans.
	public var name: String?
	
	/// Another Location this one is physically part of.
	public var partOf: Reference?
	
	/// Physical form of the location.
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location.
	public var position: LocationPosition?
	
	/// active | suspended | inactive.
	public var status: String?
	
	/// Contact details of the location.
	public var telecom: [ContactPoint]?
	
	/// Type of function performed.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.insert("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "address", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["alias"] {
				presentKeys.insert("alias")
				if let val = exist as? [String] {
					self.alias = val
				}
				else {
					errors.append(FHIRJSONError(key: "alias", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["endpoint"] {
				presentKeys.insert("endpoint")
				if let val = exist as? [FHIRJSON] {
					self.endpoint = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "endpoint", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.insert("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "managingOrganization", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["partOf"] {
				presentKeys.insert("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "partOf", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["physicalType"] {
				presentKeys.insert("physicalType")
				if let val = exist as? FHIRJSON {
					self.physicalType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "physicalType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["position"] {
				presentKeys.insert("position")
				if let val = exist as? FHIRJSON {
					self.position = LocationPosition(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "position", wants: FHIRJSON.self, has: exist.dynamicType))
				}
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
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let alias = self.alias {
			var arr = [AnyObject]()
			for val in alias {
				arr.append(val.asJSON())
			}
			json["alias"] = arr
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = Reference.asJSONArray(endpoint)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.asJSON()
		}
		if let physicalType = self.physicalType {
			json["physicalType"] = physicalType.asJSON()
		}
		if let position = self.position {
			json["position"] = position.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  The absolute geographic location.
 *
 *  The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate
 *  system used in KML).
 */
public class LocationPosition: BackboneElement {
	override public class var resourceName: String {
		get { return "LocationPosition" }
	}
	
	/// Altitude with WGS84 datum.
	public var altitude: NSDecimalNumber?
	
	/// Latitude with WGS84 datum.
	public var latitude: NSDecimalNumber?
	
	/// Longitude with WGS84 datum.
	public var longitude: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(latitude: NSDecimalNumber, longitude: NSDecimalNumber) {
		self.init(json: nil)
		self.latitude = latitude
		self.longitude = longitude
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["altitude"] {
				presentKeys.insert("altitude")
				if let val = exist as? NSNumber {
					self.altitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "altitude", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["latitude"] {
				presentKeys.insert("latitude")
				if let val = exist as? NSNumber {
					self.latitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "latitude", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "latitude"))
			}
			if let exist: AnyObject = js["longitude"] {
				presentKeys.insert("longitude")
				if let val = exist as? NSNumber {
					self.longitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "longitude", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "longitude"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let altitude = self.altitude {
			json["altitude"] = altitude.asJSON()
		}
		if let latitude = self.latitude {
			json["latitude"] = latitude.asJSON()
		}
		if let longitude = self.longitude {
			json["longitude"] = longitude.asJSON()
		}
		
		return json
	}
}

