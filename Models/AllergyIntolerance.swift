//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Allergy or Intolerance (generally: Risk Of Adverse reaction to a substance).
 *
 *  Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure
 *  to a substance.
 */
public class AllergyIntolerance: DomainResource
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
	
	/// Who the sensitivity is for
	public var patient: Reference?
	
	/// When recorded
	public var recordedDate: DateTime?
	
	/// Who recorded the sensitivity
	public var recorder: Reference?
	
	/// Source of the information about the allergy
	public var reporter: Reference?
	
	/// unconfirmed | confirmed | resolved | refuted | entered-in-error
	public var status: String?
	
	/// Substance, (or class) considered to be responsible for risk
	public var substance: CodeableConcept?
	
	/// immune | non-immune - Underlying mechanism (if known)
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?, substance: CodeableConcept?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
		if nil != substance {
			self.substance = substance
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comment"] {
				presentKeys.addObject("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comment\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["criticality"] {
				presentKeys.addObject("criticality")
				if let val = exist as? String {
					self.criticality = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"criticality\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = AllergyIntoleranceEvent.from(val, owner: self) as? [AllergyIntoleranceEvent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["lastOccurence"] {
				presentKeys.addObject("lastOccurence")
				if let val = exist as? String {
					self.lastOccurence = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lastOccurence\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
			if let exist: AnyObject = js["recordedDate"] {
				presentKeys.addObject("recordedDate")
				if let val = exist as? String {
					self.recordedDate = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recordedDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["recorder"] {
				presentKeys.addObject("recorder")
				if let val = exist as? FHIRJSON {
					self.recorder = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"recorder\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reporter"] {
				presentKeys.addObject("reporter")
				if let val = exist as? FHIRJSON {
					self.reporter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reporter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["substance"] {
				presentKeys.addObject("substance")
				if let val = exist as? FHIRJSON {
					self.substance = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"substance\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"substance\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let criticality = self.criticality {
			json["criticality"] = criticality.asJSON()
		}
		if let event = self.event {
			json["event"] = AllergyIntoleranceEvent.asJSONArray(event)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let lastOccurence = self.lastOccurence {
			json["lastOccurence"] = lastOccurence.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let recordedDate = self.recordedDate {
			json["recordedDate"] = recordedDate.asJSON()
		}
		if let recorder = self.recorder {
			json["recorder"] = recorder.asJSON()
		}
		if let reporter = self.reporter {
			json["reporter"] = reporter.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
	public var description_fhir: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(manifestation: [CodeableConcept]?) {
		self.init(json: nil)
		if nil != manifestation {
			self.manifestation = manifestation
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["certainty"] {
				presentKeys.addObject("certainty")
				if let val = exist as? String {
					self.certainty = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"certainty\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comment"] {
				presentKeys.addObject("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comment\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["duration"] {
				presentKeys.addObject("duration")
				if let val = exist as? FHIRJSON {
					self.duration = Duration(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"duration\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exposureRoute"] {
				presentKeys.addObject("exposureRoute")
				if let val = exist as? FHIRJSON {
					self.exposureRoute = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exposureRoute\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["manifestation"] {
				presentKeys.addObject("manifestation")
				if let val = exist as? [FHIRJSON] {
					self.manifestation = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"manifestation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"manifestation\" but it is missing"))
			}
			if let exist: AnyObject = js["onset"] {
				presentKeys.addObject("onset")
				if let val = exist as? String {
					self.onset = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"onset\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.addObject("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"severity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["substance"] {
				presentKeys.addObject("substance")
				if let val = exist as? FHIRJSON {
					self.substance = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"substance\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let certainty = self.certainty {
			json["certainty"] = certainty.asJSON()
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let exposureRoute = self.exposureRoute {
			json["exposureRoute"] = exposureRoute.asJSON()
		}
		if let manifestation = self.manifestation {
			json["manifestation"] = CodeableConcept.asJSONArray(manifestation)
		}
		if let onset = self.onset {
			json["onset"] = onset.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		if let substance = self.substance {
			json["substance"] = substance.asJSON()
		}
		
		return json
	}
}

