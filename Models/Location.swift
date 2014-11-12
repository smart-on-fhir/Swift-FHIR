//
//  Location.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (location.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Details and position information for a physical place.
 *
 *  Scope and Usage A Location includes both incidental locations (a place which is used for healthcare without prior
 *  designation or authorization) and dedicated, formally appointed locations. Locations may be private, public, mobile
 *  or fixed and scale from small freezers to full hospital buildings or parking garages.
 *  
 *  Examples of Locations are:
 *  
 *  * Building, ward, corridor or room
 *  * Freezer, incubator
 *  * Vehicle or lift
 *  * Home, shed, or a garage
 *  * Road, parking place, a park
 */
public class Location: FHIRResource
{
	override public class var resourceName: String {
		get { return "Location" }
	}
	
	/// Physical location
	public var address: Address?
	
	/// Description of the Location, which helps in finding or referencing the place
	public var description: String?
	
	/// Unique code or number identifying the location to its users
	public var identifier: Identifier?
	
	/// The organization that is responsible for the provisioning and upkeep of the location
	public var managingOrganization: FHIRReference<Organization>?
	
	/// instance | kind
	public var mode: String?
	
	/// Name of the location as used by humans
	public var name: String?
	
	/// Another Location which this Location is physically part of
	public var partOf: FHIRReference<Location>?
	
	/// Physical form of the location
	public var physicalType: CodeableConcept?
	
	/// The absolute geographic location
	public var position: LocationPosition?
	
	/// active | suspended | inactive
	public var status: String?
	
	/// Contact details of the location
	public var telecom: [Contact]?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Indicates the type of function performed at the location
	public var type: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? NSDictionary {
				self.address = Address(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["managingOrganization"] as? NSDictionary {
				self.managingOrganization = FHIRReference(json: val, owner: self)
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["partOf"] as? NSDictionary {
				self.partOf = FHIRReference(json: val, owner: self)
			}
			if let val = js["physicalType"] as? NSDictionary {
				self.physicalType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["position"] as? NSDictionary {
				self.position = LocationPosition(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = Contact.from(val, owner: self) as? [Contact]
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  The absolute geographic location.
 *
 *  The absolute geographic location of the Location, expressed in a KML compatible manner (see notes below for KML).
 */
public class LocationPosition: FHIRElement
{	
	/// Altitude as expressed in KML
	public var altitude: NSDecimalNumber?
	
	/// Latitude as expressed in KML
	public var latitude: NSDecimalNumber?
	
	/// Longitude as expressed in KML
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

	public required init(json: NSDictionary?) {
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
}

