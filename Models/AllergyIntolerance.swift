//
//  AllergyIntolerance.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (allergyintolerance.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Allergy or Intolerance (generally: Risk Of Adverse reaction to a substance).
 *
 *  Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure
 *  to a substance.
 */
public class AllergyIntolerance: FHIRResource
{
	override public class var resourceName: String {
		get { return "AllergyIntolerance" }
	}
	
	/// food | medication | environment - Category of Substance
	public var category: String?
	
	/// Additional text not captured in other fields
	public var comment: String?
	
	/// low | high | unassessible - Estimated potential clinical harm
	public var criticality: String?
	
	/// Adverse Reaction Events linked to exposure to substance
	public var event: [AllergyIntoleranceEvent]?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// Date(/time) of last known occurence of a reaction
	public var lastOccurence: DateTime?
	
	/// When recorded
	public var recordedDate: DateTime?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// unconfirmed | confirmed | resolved | refuted
	public var status: String?
	
	/// Who the sensitivity is for
	public var subject: Reference?
	
	/// Substance, (or class) considered to be responsible for risk
	public var substance: CodeableConcept?
	
	/// immune | non-immune - Underlying mechanism (if known)
	public var type: String?
	
	public convenience init(subject: Reference?, substance: CodeableConcept?) {
		self.init(json: nil)
		if nil != subject {
			self.subject = subject
		}
		if nil != substance {
			self.substance = substance
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["criticality"] as? String {
				self.criticality = val
			}
			if let val = js["event"] as? [JSONDictionary] {
				self.event = AllergyIntoleranceEvent.from(val, owner: self) as? [AllergyIntoleranceEvent]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["lastOccurence"] as? String {
				self.lastOccurence = DateTime(string: val)
			}
			if let val = js["recordedDate"] as? String {
				self.recordedDate = DateTime(string: val)
			}
			if let val = js["recorder"] as? JSONDictionary {
				self.recorder = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["substance"] as? JSONDictionary {
				self.substance = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}


/**
 *  Adverse Reaction Events linked to exposure to substance.
 *
 *  Details about each Adverse Reaction Event linked to exposure to the identified Substance.
 */
public class AllergyIntoleranceEvent: FHIRElement
{
	override public class var resourceName: String {
		get { return "AllergyIntoleranceEvent" }
	}
	
	/// unlikely | likely | confirmed - clinical certainty about the specific substance
	public var certainty: String?
	
	/// Text about event not captured in other fields
	public var comment: String?
	
	/// Description of the event as a whole
	public var description: String?
	
	/// How long Manifestations persisted
	public var duration: Duration?
	
	/// How the subject was exposed to the substance
	public var exposureRoute: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event
	public var manifestation: [CodeableConcept]?
	
	/// Date(/time) when manifestations showed
	public var onset: DateTime?
	
	/// mild | moderate | severe (of event as a whole)
	public var severity: String?
	
	/// Specific substance considered to be responsible for event
	public var substance: CodeableConcept?
	
	public convenience init(manifestation: [CodeableConcept]?) {
		self.init(json: nil)
		if nil != manifestation {
			self.manifestation = manifestation
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["certainty"] as? String {
				self.certainty = val
			}
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["duration"] as? JSONDictionary {
				self.duration = Duration(json: val, owner: self)
			}
			if let val = js["exposureRoute"] as? JSONDictionary {
				self.exposureRoute = CodeableConcept(json: val, owner: self)
			}
			if let val = js["manifestation"] as? [JSONDictionary] {
				self.manifestation = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["onset"] as? String {
				self.onset = DateTime(string: val)
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["substance"] as? JSONDictionary {
				self.substance = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

