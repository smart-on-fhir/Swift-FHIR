//
//  Location.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Location) on 2015-03-25.
//  2015, SMART Platforms.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? FHIRJSON {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["managingOrganization"] as? FHIRJSON {
				self.managingOrganization = Reference(json: val, owner: self)
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["partOf"] as? FHIRJSON {
				self.partOf = Reference(json: val, owner: self)
			}
			if let val = js["physicalType"] as? FHIRJSON {
				self.physicalType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["position"] as? FHIRJSON {
				self.position = LocationPosition(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	public convenience init(latitude: NSDecimalNumber?, longitude: NSDecimalNumber?) {
		self.init(json: nil)
		if nil != latitude {
			self.latitude = latitude
		}
		if nil != longitude {
			self.longitude = longitude
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["altitude"] as? NSNumber {
				self.altitude = NSDecimalNumber(json: val)
			}
			if let val = js["latitude"] as? NSNumber {
				self.latitude = NSDecimalNumber(json: val)
			}
			if let val = js["longitude"] as? NSNumber {
				self.longitude = NSDecimalNumber(json: val)
			}
		}
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

