//
//  BodySite.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/BodySite) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Specific and identified anatomical location.
 *
 *  Record details about the anatomical location of a specimen or body part, including precise localisation information.
 *  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
 */
public class BodySite: DomainResource
{
	override public class var resourceName: String {
		get { return "BodySite" }
	}
	
	/// The Description of anatomical location
	public var description_fhir: String?
	
	/// Bodysite identifier
	public var identifier: [Identifier]?
	
	/// Attached images
	public var image: [Attachment]?
	
	/// Relative anatomical location(s)
	public var relativeLocation: [BodySiteRelativeLocation]?
	
	/// Specific anatomical location
	public var specificLocation: BodySiteSpecificLocation?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["image"] as? [JSONDictionary] {
				self.image = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["relativeLocation"] as? [JSONDictionary] {
				self.relativeLocation = BodySiteRelativeLocation.from(val, owner: self) as? [BodySiteRelativeLocation]
			}
			if let val = js["specificLocation"] as? JSONDictionary {
				self.specificLocation = BodySiteSpecificLocation(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let image = self.image {
			json["image"] = Attachment.asJSONArray(image)
		}
		if let relativeLocation = self.relativeLocation {
			json["relativeLocation"] = BodySiteRelativeLocation.asJSONArray(relativeLocation)
		}
		if let specificLocation = self.specificLocation {
			json["specificLocation"] = specificLocation.asJSON()
		}
		
		return json
	}
}


/**
 *  Relative anatomical location(s).
 *
 *  Qualifiers to identify non-specific location eg 5cm (distance) inferior (aspect) to the tibial tuberosity
 *  (landmark). There may be more than one relative location required to provide a cross reference.
 */
public class BodySiteRelativeLocation: FHIRElement
{
	override public class var resourceName: String {
		get { return "BodySiteRelativeLocation" }
	}
	
	/// Relative position to landmark
	public var aspect: CodeableConcept?
	
	/// Distance from Landmark
	public var distance: Quantity?
	
	/// Identified landmark Identified landmark Identified landmark
	public var landmark: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["aspect"] as? JSONDictionary {
				self.aspect = CodeableConcept(json: val, owner: self)
			}
			if let val = js["distance"] as? JSONDictionary {
				self.distance = Quantity(json: val, owner: self)
			}
			if let val = js["landmark"] as? JSONDictionary {
				self.landmark = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let aspect = self.aspect {
			json["aspect"] = aspect.asJSON()
		}
		if let distance = self.distance {
			json["distance"] = distance.asJSON()
		}
		if let landmark = self.landmark {
			json["landmark"] = landmark.asJSON()
		}
		
		return json
	}
}


/**
 *  Specific anatomical location.
 *
 *  The Specific and identified anatomical location.
 */
public class BodySiteSpecificLocation: FHIRElement
{
	override public class var resourceName: String {
		get { return "BodySiteSpecificLocation" }
	}
	
	/// Description of anatomical plane
	public var anatomicalPlane: CodeableConcept?
	
	/// Named anatomical location
	public var name: CodeableConcept?
	
	/// Which instance of many
	public var number: Int?
	
	/// Laterality
	public var side: CodeableConcept?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["anatomicalPlane"] as? JSONDictionary {
				self.anatomicalPlane = CodeableConcept(json: val, owner: self)
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["number"] as? Int {
				self.number = val
			}
			if let val = js["side"] as? JSONDictionary {
				self.side = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let anatomicalPlane = self.anatomicalPlane {
			json["anatomicalPlane"] = anatomicalPlane.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let side = self.side {
			json["side"] = side.asJSON()
		}
		
		return json
	}
}

