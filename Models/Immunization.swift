//
//  Immunization.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Immunization) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Immunization event information.
 */
public class Immunization: DomainResource
{
	override public class var resourceName: String {
		get { return "Immunization" }
	}
	
	/// Vaccination administration date
	public var date: DateTime?
	
	/// Amount of vaccine administered
	public var doseQuantity: Quantity?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// Vaccine expiration date
	public var expirationDate: Date?
	
	/// Administration / non-administration reasons
	public var explanation: ImmunizationExplanation?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Where did vaccination occur?
	public var location: Reference?
	
	/// Vaccine lot number
	public var lotNumber: String?
	
	/// Vaccine manufacturer
	public var manufacturer: Reference?
	
	/// Who was immunized?
	public var patient: Reference?
	
	/// Who administered vaccine?
	public var performer: Reference?
	
	/// Details of a reaction that follows immunization
	public var reaction: [ImmunizationReaction]?
	
	/// Is this a self-reported record?
	public var reported: Bool?
	
	/// Who ordered vaccination?
	public var requester: Reference?
	
	/// How vaccine entered body
	public var route: CodeableConcept?
	
	/// Body site vaccine  was administered
	public var site: CodeableConcept?
	
	/// What protocol was followed
	public var vaccinationProtocol: [ImmunizationVaccinationProtocol]?
	
	/// Vaccine product administered
	public var vaccineType: CodeableConcept?
	
	/// Was immunization given?
	public var wasNotGiven: Bool?
	
	public convenience init(date: DateTime?, patient: Reference?, reported: Bool?, vaccineType: CodeableConcept?, wasNotGiven: Bool?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != reported {
			self.reported = reported
		}
		if nil != vaccineType {
			self.vaccineType = vaccineType
		}
		if nil != wasNotGiven {
			self.wasNotGiven = wasNotGiven
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["doseQuantity"] as? JSONDictionary {
				self.doseQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["expirationDate"] as? String {
				self.expirationDate = Date(string: val)
			}
			if let val = js["explanation"] as? JSONDictionary {
				self.explanation = ImmunizationExplanation(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["location"] as? JSONDictionary {
				self.location = Reference(json: val, owner: self)
			}
			if let val = js["lotNumber"] as? String {
				self.lotNumber = val
			}
			if let val = js["manufacturer"] as? JSONDictionary {
				self.manufacturer = Reference(json: val, owner: self)
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["reaction"] as? [JSONDictionary] {
				self.reaction = ImmunizationReaction.from(val, owner: self) as? [ImmunizationReaction]
			}
			if let val = js["reported"] as? Bool {
				self.reported = val
			}
			if let val = js["requester"] as? JSONDictionary {
				self.requester = Reference(json: val, owner: self)
			}
			if let val = js["route"] as? JSONDictionary {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["site"] as? JSONDictionary {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["vaccinationProtocol"] as? [JSONDictionary] {
				self.vaccinationProtocol = ImmunizationVaccinationProtocol.from(val, owner: self) as? [ImmunizationVaccinationProtocol]
			}
			if let val = js["vaccineType"] as? JSONDictionary {
				self.vaccineType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["wasNotGiven"] as? Bool {
				self.wasNotGiven = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let explanation = self.explanation {
			json["explanation"] = explanation.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let reaction = self.reaction {
			json["reaction"] = ImmunizationReaction.asJSONArray(reaction)
		}
		if let reported = self.reported {
			json["reported"] = reported.asJSON()
		}
		if let requester = self.requester {
			json["requester"] = requester.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let vaccinationProtocol = self.vaccinationProtocol {
			json["vaccinationProtocol"] = ImmunizationVaccinationProtocol.asJSONArray(vaccinationProtocol)
		}
		if let vaccineType = self.vaccineType {
			json["vaccineType"] = vaccineType.asJSON()
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
 *  Administration / non-administration reasons.
 *
 *  Reasons why a vaccine was or was not administered.
 */
public class ImmunizationExplanation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationExplanation" }
	}
	
	/// Why immunization occurred
	public var reason: [CodeableConcept]?
	
	/// Why immunization did not occur
	public var reasonNotGiven: [CodeableConcept]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? [JSONDictionary] {
				self.reason = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["reasonNotGiven"] as? [JSONDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = CodeableConcept.asJSONArray(reason)
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = CodeableConcept.asJSONArray(reasonNotGiven)
		}
		
		return json
	}
}


/**
 *  Details of a reaction that follows immunization.
 *
 *  Categorical data indicating that an adverse event is associated in time to an immunization.
 */
public class ImmunizationReaction: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationReaction" }
	}
	
	/// When did reaction start?
	public var date: DateTime?
	
	/// Additional information on reaction
	public var detail: Reference?
	
	/// Was reaction self-reported?
	public var reported: Bool?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["detail"] as? JSONDictionary {
				self.detail = Reference(json: val, owner: self)
			}
			if let val = js["reported"] as? Bool {
				self.reported = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let reported = self.reported {
			json["reported"] = reported.asJSON()
		}
		
		return json
	}
}


/**
 *  What protocol was followed.
 *
 *  Contains information about the protocol(s) under which the vaccine was administered.
 */
public class ImmunizationVaccinationProtocol: FHIRElement
{
	override public class var resourceName: String {
		get { return "ImmunizationVaccinationProtocol" }
	}
	
	/// Who is responsible for protocol
	public var authority: Reference?
	
	/// Details of vaccine protocol
	public var description_fhir: String?
	
	/// What dose number within series?
	public var doseSequence: Int?
	
	/// Does dose count towards immunity?
	public var doseStatus: CodeableConcept?
	
	/// Why does does count/not count?
	public var doseStatusReason: CodeableConcept?
	
	/// Disease immunized against
	public var doseTarget: CodeableConcept?
	
	/// Name of vaccine series
	public var series: String?
	
	/// Recommended number of doses for immunity
	public var seriesDoses: Int?
	
	public convenience init(doseSequence: Int?, doseStatus: CodeableConcept?, doseTarget: CodeableConcept?) {
		self.init(json: nil)
		if nil != doseSequence {
			self.doseSequence = doseSequence
		}
		if nil != doseStatus {
			self.doseStatus = doseStatus
		}
		if nil != doseTarget {
			self.doseTarget = doseTarget
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? JSONDictionary {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["doseStatus"] as? JSONDictionary {
				self.doseStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseStatusReason"] as? JSONDictionary {
				self.doseStatusReason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseTarget"] as? JSONDictionary {
				self.doseTarget = CodeableConcept(json: val, owner: self)
			}
			if let val = js["series"] as? String {
				self.series = val
			}
			if let val = js["seriesDoses"] as? Int {
				self.seriesDoses = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let doseSequence = self.doseSequence {
			json["doseSequence"] = doseSequence.asJSON()
		}
		if let doseStatus = self.doseStatus {
			json["doseStatus"] = doseStatus.asJSON()
		}
		if let doseStatusReason = self.doseStatusReason {
			json["doseStatusReason"] = doseStatusReason.asJSON()
		}
		if let doseTarget = self.doseTarget {
			json["doseTarget"] = doseTarget.asJSON()
		}
		if let series = self.series {
			json["series"] = series.asJSON()
		}
		if let seriesDoses = self.seriesDoses {
			json["seriesDoses"] = seriesDoses.asJSON()
		}
		
		return json
	}
}

