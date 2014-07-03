//
//  Location.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Details and position information for a physical place.
 *
 *  Scope and Usage A Location includes both incidental locations (a place which is used for healthcare without
 *  prior designation or authorization) and dedicated, formally appointed locations. Locations may be private,
 *  public, mobile or fixed and scale from small freezers to full hospital buildings or parking garages.
 *  
 *  Examples of Locations are:
 *  
 *  * Building, ward, corridor or room
 *  * Freezer, incubator
 *  * Vehicle or lift
 *  * Home, shed, or a garage
 *  * Road, parking place, a park
 */
class Location: FHIRResource
{
	override var resourceName: String {
		get { return "Location" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Unique code or number identifying the location to its users */
	var identifier: Identifier?

	/*! Name of the location as used by humans */
	var name: String?

	/*! Description of the Location, which helps in finding or referencing the place */
	var description: String?

	/*! Indicates the type of function performed at the location */
	var type: CodeableConcept?

	/*! Contact details of the location */
	var telecom: Contact[]?

	/*! Physical location */
	var address: Address?

	/*! Physical form of the location */
	var physicalType: CodeableConcept?

	/*! The absolute geographic location */
	var position: LocationPosition?

	/*! The organization that is responsible for the provisioning and upkeep of the location */
	var managingOrganization: ResourceReference?

	/*! active | suspended | inactive */
	var status: String?

	/*! Another Location which this Location is physically part of */
	var partOf: ResourceReference?

	/*! instance | kind */
	var mode: String?

}


/*!
 *  The absolute geographic location.
 *
 *  The absolute geographic location of the Location, expressed in a KML compatible manner (see notes below for
 *  KML).
 */
class LocationPosition: FHIRElement
{
	/*! Longitude as expressed in KML */
	var longitude:  NSDecimalNumber

	/*! Latitude as expressed in KML */
	var latitude:  NSDecimalNumber

	/*! Altitude as expressed in KML */
	var altitude:  NSDecimalNumber?

	init(longitude:  NSDecimalNumber, latitude:  NSDecimalNumber) {
		self.longitude = longitude
		self.latitude = latitude
	}
}
