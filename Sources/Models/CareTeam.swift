//
//  CareTeam.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/CareTeam) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Planned participants in the coordination and delivery of care for a patient or group.

The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care
for a patient.
*/
open class CareTeam: DomainResource {
	override open class var resourceType: String {
		get { return "CareTeam" }
	}
	
	/// Type of team.
	public var category: [CodeableConcept]?
	
	/// Encounter or episode associated with CareTeam.
	public var context: Reference?
	
	/// External Ids for this team.
	public var identifier: [Identifier]?
	
	/// Organization responsible for the care team.
	public var managingOrganization: [Reference]?
	
	/// Name of the team, such as crisis assessment team.
	public var name: FHIRString?
	
	/// Comments made about the CareTeam.
	public var note: [Annotation]?
	
	/// Members of the team.
	public var participant: [CareTeamParticipant]?
	
	/// Time period team covers.
	public var period: Period?
	
	/// Why the care team exists.
	public var reasonCode: [CodeableConcept]?
	
	/// Why the care team exists.
	public var reasonReference: [Reference]?
	
	/// Indicates the current state of the care team.
	public var status: CareTeamStatus?
	
	/// Who care team is for.
	public var subject: Reference?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		managingOrganization = try createInstances(of: Reference.self, for: "managingOrganization", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? managingOrganization
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		participant = try createInstances(of: CareTeamParticipant.self, for: "participant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? participant
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		status = createEnum(type: CareTeamStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "managingOrganization", using: self.managingOrganization, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Members of the team.

Identifies all people and organizations who are expected to be involved in the care team.
*/
open class CareTeamParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "CareTeamParticipant" }
	}
	
	/// Who is involved.
	public var member: Reference?
	
	/// Organization of the practitioner.
	public var onBehalfOf: Reference?
	
	/// Time period of participant.
	public var period: Period?
	
	/// Type of involvement.
	public var role: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		member = try createInstance(type: Reference.self, for: "member", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? member
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.member?.decorate(json: &json, withKey: "member", errors: &errors)
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

