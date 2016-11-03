//
//  CareTeam.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/CareTeam) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Planned participants in the coordination and delivery of care for a patient or group.
 *
 *  The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of
 *  care for a patient.
 */
open class CareTeam: DomainResource {
	override open class var resourceType: String {
		get { return "CareTeam" }
	}
	
	/// External Ids for this team.
	public var identifier: [Identifier]?
	
	/// Organization responsible for the care team.
	public var managingOrganization: Reference?
	
	/// Name of the team, such as crisis assessment team.
	public var name: String?
	
	/// Members of the team.
	public var participant: [CareTeamParticipant]?
	
	/// Time period team covers.
	public var period: Period?
	
	/// active | suspended | inactive | entered in error.
	public var status: CodeableConcept?
	
	/// Who care team is for.
	public var subject: Reference?
	
	/// Type of team.
	public var type: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["managingOrganization"] {
			presentKeys.insert("managingOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.managingOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "managingOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "managingOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["participant"] {
			presentKeys.insert("participant")
			if let val = exist as? [FHIRJSON] {
				do {
					self.participant = try CareTeamParticipant.instantiate(fromArray: val, owner: self) as? [CareTeamParticipant]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "participant"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "participant", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? FHIRJSON {
				do {
					self.status = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "status"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let managingOrganization = self.managingOrganization {
			json["managingOrganization"] = managingOrganization.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = participant.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON(errors: &errors)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Members of the team.
 *
 *  Identifies all people and organizations who are expected to be involved in the care team.
 */
open class CareTeamParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "CareTeamParticipant" }
	}
	
	/// Who is involved.
	public var member: Reference?
	
	/// Time period of participant.
	public var period: Period?
	
	/// Type of involvement.
	public var role: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["member"] {
			presentKeys.insert("member")
			if let val = exist as? FHIRJSON {
				do {
					self.member = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "member"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "member", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["role"] {
			presentKeys.insert("role")
			if let val = exist as? FHIRJSON {
				do {
					self.role = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "role"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "role", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let member = self.member {
			json["member"] = member.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let role = self.role {
			json["role"] = role.asJSON(errors: &errors)
		}
		
		return json
	}
}

