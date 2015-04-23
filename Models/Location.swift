//
//  Location.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Location) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Details and position information for a physical place.
 *
 *  Details and position information for a physical place where services are provided  and resources and participants
 *  may be stored, found, contained or accommodated.
 */
public class Location: DomainResource
{
	override public class var resourceName: String {
		get { return "Location" }
	}
	
	/// Physical location
	public var address: Address?
	
	/// Description of the Location, which helps in finding or referencing the place
	public var description_fhir: String?
	
	/// Unique code or number identifying the location to its users
	public var identifier: [Identifier]?
	
	/// The organization that is responsible for the provisioning and upkeep of the location
	public var managingOrganization: Reference?
	
	/// instance | kind
	public var mode: String?
	
	/// Name of the location as used by humans
	public var name: String?
	
	/// Another Location which this Location is physically part of
	public var partOf: Reference?
	
	/// Physical form of the location
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location
	public var position: LocationPosition?
	
	/// active | suspended | inactive
	public var status: String?
	
	/// Contact details of the location
	public var telecom: [ContactPoint]?
	
	/// Indicates the type of function performed at the location
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["address"] {
				presentKeys.addObject("address")
				if let val = exist as? FHIRJSON {
					self.address = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"address\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["managingOrganization"] {
				presentKeys.addObject("managingOrganization")
				if let val = exist as? FHIRJSON {
					self.managingOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"managingOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["partOf"] {
				presentKeys.addObject("partOf")
				if let val = exist as? FHIRJSON {
					self.partOf = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"partOf\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["physicalType"] {
				presentKeys.addObject("physicalType")
				if let val = exist as? FHIRJSON {
					self.physicalType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"physicalType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["position"] {
				presentKeys.addObject("position")
				if let val = exist as? FHIRJSON {
					self.position = LocationPosition(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"position\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
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
 *  The absolute geographic location of the Location, expressed in with the WGS84 datum (This is the same co-ordinate
 *  system used in KML).
 */
public class LocationPosition: FHIRElement
{
	override public class var resourceName: String {
		get { return "LocationPosition" }
	}
	
	/// Altitude with WGS84 datum
	public var altitude: NSDecimalNumber?
	
	/// Latitude with WGS84 datum
	public var latitude: NSDecimalNumber?
	
	/// Longitude with WGS84 datum
	public var longitude: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(latitude: NSDecimalNumber?, longitude: NSDecimalNumber?) {
		self.init(json: nil)
		if nil != latitude {
			self.latitude = latitude
		}
		if nil != longitude {
			self.longitude = longitude
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["altitude"] {
				presentKeys.addObject("altitude")
				if let val = exist as? NSNumber {
					self.altitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"altitude\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["latitude"] {
				presentKeys.addObject("latitude")
				if let val = exist as? NSNumber {
					self.latitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"latitude\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"latitude\" but it is missing"))
			}
			if let exist: AnyObject = js["longitude"] {
				presentKeys.addObject("longitude")
				if let val = exist as? NSNumber {
					self.longitude = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"longitude\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"longitude\" but it is missing"))
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

