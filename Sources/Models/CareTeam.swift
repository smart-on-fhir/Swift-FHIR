//
//  CareTeam.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/CareTeam) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		managingOrganization = createInstances(of: Reference.self, for: "managingOrganization", in: json, context: &instCtx, owner: self) ?? managingOrganization
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		participant = createInstances(of: CareTeamParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		status = createEnum(type: CareTeamStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		member = createInstance(type: Reference.self, for: "member", in: json, context: &instCtx, owner: self) ?? member
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.member?.decorate(json: &json, withKey: "member", errors: &errors)
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

