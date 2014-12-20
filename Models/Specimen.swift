//
//  Specimen.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (specimen.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Sample for analysis.
 */
public class Specimen: FHIRResource
{
	override public class var resourceName: String {
		get { return "Specimen" }
	}
	
	/// Identifier assigned by the lab
	public var accessionIdentifier: Identifier?
	
	/// Collection details
	public var collection: SpecimenCollection?
	
	/// Direct container of specimen (tube/slide, etc)
	public var container: [SpecimenContainer]?
	
	/// External Identifier
	public var identifier: [Identifier]?
	
	/// The time when specimen was received for processing
	public var receivedTime: NSDate?
	
	/// Parent of specimen
	public var source: [SpecimenSource]?
	
	/// Where the specimen came from. This may be from the patient(s) or from the environment or a device
	public var subject: Reference?
	
	/// Treatment and processing step details
	public var treatment: [SpecimenTreatment]?
	
	/// Kind of material that forms the specimen
	public var type: CodeableConcept?
	
	public convenience init(subject: Reference?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["accessionIdentifier"] as? NSDictionary {
				self.accessionIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["collection"] as? NSDictionary {
				self.collection = SpecimenCollection(json: val, owner: self)
			}
			if let val = js["container"] as? [NSDictionary] {
				self.container = SpecimenContainer.from(val, owner: self) as? [SpecimenContainer]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["receivedTime"] as? String {
				self.receivedTime = NSDate(json: val)
			}
			if let val = js["source"] as? [NSDictionary] {
				self.source = SpecimenSource.from(val, owner: self) as? [SpecimenSource]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["treatment"] as? [NSDictionary] {
				self.treatment = SpecimenTreatment.from(val, owner: self) as? [SpecimenTreatment]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Collection details.
 *
 *  Details concerning the specimen collection.
 */
public class SpecimenCollection: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenCollection" }
	}
	
	/// Collection time
	public var collectedDateTime: NSDate?
	
	/// Collection time
	public var collectedPeriod: Period?
	
	/// Who collected the specimen
	public var collector: Reference?
	
	/// Collector comments
	public var comment: [String]?
	
	/// Technique used to perform collection
	public var method: CodeableConcept?
	
	/// The quantity of specimen collected
	public var quantity: Quantity?
	
	/// Anatomical collection site
	public var sourceSite: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["collectedDateTime"] as? String {
				self.collectedDateTime = NSDate(json: val)
			}
			if let val = js["collectedPeriod"] as? NSDictionary {
				self.collectedPeriod = Period(json: val, owner: self)
			}
			if let val = js["collector"] as? NSDictionary {
				self.collector = Reference(json: val, owner: self)
			}
			if let val = js["comment"] as? [String] {
				self.comment = val
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["sourceSite"] as? NSDictionary {
				self.sourceSite = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Direct container of specimen (tube/slide, etc).
 *
 *  The container holding the specimen.  The recursive nature of containers; i.e. blood in tube in tray in rack is not
 *  addressed here.
 */
public class SpecimenContainer: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenContainer" }
	}
	
	/// Additive associated with container
	public var additiveCodeableConcept: CodeableConcept?
	
	/// Additive associated with container
	public var additiveReference: Reference?
	
	/// Container volume or size
	public var capacity: Quantity?
	
	/// Textual description of the container
	public var description: String?
	
	/// Id for the container
	public var identifier: [Identifier]?
	
	/// Quantity of specimen within container
	public var specimenQuantity: Quantity?
	
	/// Kind of container directly associated with specimen
	public var type: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additiveCodeableConcept"] as? NSDictionary {
				self.additiveCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["additiveReference"] as? NSDictionary {
				self.additiveReference = Reference(json: val, owner: self)
			}
			if let val = js["capacity"] as? NSDictionary {
				self.capacity = Quantity(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["specimenQuantity"] as? NSDictionary {
				self.specimenQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Parent of specimen.
 *
 *  Parent specimen from which the focal specimen was a component.
 */
public class SpecimenSource: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenSource" }
	}
	
	/// parent | child
	public var relationship: String?
	
	/// The subject of the relationship
	public var target: [Reference]?
	
	public convenience init(relationship: String?) {
		self.init(json: nil)
		if nil != relationship {
			self.relationship = relationship
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["relationship"] as? String {
				self.relationship = val
			}
			if let val = js["target"] as? [NSDictionary] {
				self.target = Reference.from(val, owner: self) as? [Reference]
			}
		}
	}
}


/**
 *  Treatment and processing step details.
 *
 *  Details concerning treatment and processing steps for the specimen.
 */
public class SpecimenTreatment: FHIRElement
{
	override public class var resourceName: String {
		get { return "SpecimenTreatment" }
	}
	
	/// Material used in the processing step
	public var additive: [Reference]?
	
	/// Textual description of procedure
	public var description: String?
	
	/// Indicates the treatment or processing step  applied to the specimen
	public var procedure: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additive"] as? [NSDictionary] {
				self.additive = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["procedure"] as? NSDictionary {
				self.procedure = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

