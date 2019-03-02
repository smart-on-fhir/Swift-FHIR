//
//  ResearchStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ResearchStudy) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Investigation to increase healthcare-related patient-independent knowledge.

A process where a researcher or organization plans and then executes a series of steps intended to increase the field of
healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
information about medications, devices, therapies and other interventional and investigative techniques.  A
ResearchStudy involves the gathering of information about human or animal subjects.
*/
open class ResearchStudy: DomainResource {
	override open class var resourceType: String {
		get { return "ResearchStudy" }
	}
	
	/// Defined path through the study for a subject.
	public var arm: [ResearchStudyArm]?
	
	/// Classifications for the study.
	public var category: [CodeableConcept]?
	
	/// Condition being studied.
	public var condition: [CodeableConcept]?
	
	/// Contact details for the study.
	public var contact: [ContactDetail]?
	
	/// What this is study doing.
	public var description_fhir: FHIRString?
	
	/// Inclusion & exclusion criteria.
	public var enrollment: [Reference]?
	
	/// Drugs, devices, etc. under study.
	public var focus: [CodeableConcept]?
	
	/// Business Identifier for study.
	public var identifier: [Identifier]?
	
	/// Used to search for the study.
	public var keyword: [CodeableConcept]?
	
	/// Geographic region(s) for study.
	public var location: [CodeableConcept]?
	
	/// Comments made about the study.
	public var note: [Annotation]?
	
	/// A goal for the study.
	public var objective: [ResearchStudyObjective]?
	
	/// Part of larger study.
	public var partOf: [Reference]?
	
	/// When the study began and ended.
	public var period: Period?
	
	/// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4.
	public var phase: CodeableConcept?
	
	/// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science |
	/// device-feasibility.
	public var primaryPurposeType: CodeableConcept?
	
	/// Researcher who oversees multiple aspects of the study.
	public var principalInvestigator: Reference?
	
	/// Steps followed in executing study.
	public var protocol_fhir: [Reference]?
	
	/// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-
	/// design.
	public var reasonStopped: CodeableConcept?
	
	/// References and dependencies.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Facility where study activities are conducted.
	public var site: [Reference]?
	
	/// Organization that initiates and is legally responsible for the study.
	public var sponsor: Reference?
	
	/// The current state of the study.
	public var status: ResearchStudyStatus?
	
	/// Name for this study.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ResearchStudyStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		arm = createInstances(of: ResearchStudyArm.self, for: "arm", in: json, context: &instCtx, owner: self) ?? arm
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		condition = createInstances(of: CodeableConcept.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		enrollment = createInstances(of: Reference.self, for: "enrollment", in: json, context: &instCtx, owner: self) ?? enrollment
		focus = createInstances(of: CodeableConcept.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		keyword = createInstances(of: CodeableConcept.self, for: "keyword", in: json, context: &instCtx, owner: self) ?? keyword
		location = createInstances(of: CodeableConcept.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		objective = createInstances(of: ResearchStudyObjective.self, for: "objective", in: json, context: &instCtx, owner: self) ?? objective
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		phase = createInstance(type: CodeableConcept.self, for: "phase", in: json, context: &instCtx, owner: self) ?? phase
		primaryPurposeType = createInstance(type: CodeableConcept.self, for: "primaryPurposeType", in: json, context: &instCtx, owner: self) ?? primaryPurposeType
		principalInvestigator = createInstance(type: Reference.self, for: "principalInvestigator", in: json, context: &instCtx, owner: self) ?? principalInvestigator
		protocol_fhir = createInstances(of: Reference.self, for: "protocol", in: json, context: &instCtx, owner: self) ?? protocol_fhir
		reasonStopped = createInstance(type: CodeableConcept.self, for: "reasonStopped", in: json, context: &instCtx, owner: self) ?? reasonStopped
		relatedArtifact = createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, context: &instCtx, owner: self) ?? relatedArtifact
		site = createInstances(of: Reference.self, for: "site", in: json, context: &instCtx, owner: self) ?? site
		sponsor = createInstance(type: Reference.self, for: "sponsor", in: json, context: &instCtx, owner: self) ?? sponsor
		status = createEnum(type: ResearchStudyStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "arm", using: self.arm, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "enrollment", using: self.enrollment, errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "keyword", using: self.keyword, errors: &errors)
		arrayDecorate(json: &json, withKey: "location", using: self.location, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "objective", using: self.objective, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.phase?.decorate(json: &json, withKey: "phase", errors: &errors)
		self.primaryPurposeType?.decorate(json: &json, withKey: "primaryPurposeType", errors: &errors)
		self.principalInvestigator?.decorate(json: &json, withKey: "principalInvestigator", errors: &errors)
		arrayDecorate(json: &json, withKey: "protocol", using: self.protocol_fhir, errors: &errors)
		self.reasonStopped?.decorate(json: &json, withKey: "reasonStopped", errors: &errors)
		arrayDecorate(json: &json, withKey: "relatedArtifact", using: self.relatedArtifact, errors: &errors)
		arrayDecorate(json: &json, withKey: "site", using: self.site, errors: &errors)
		self.sponsor?.decorate(json: &json, withKey: "sponsor", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}


/**
Defined path through the study for a subject.

Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out,
exposure to drug B, wash-out, follow-up.
*/
open class ResearchStudyArm: BackboneElement {
	override open class var resourceType: String {
		get { return "ResearchStudyArm" }
	}
	
	/// Short explanation of study path.
	public var description_fhir: FHIRString?
	
	/// Label for study arm.
	public var name: FHIRString?
	
	/// Categorization of study arm.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
A goal for the study.

A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data
collected during the study.
*/
open class ResearchStudyObjective: BackboneElement {
	override open class var resourceType: String {
		get { return "ResearchStudyObjective" }
	}
	
	/// Label for the objective.
	public var name: FHIRString?
	
	/// primary | secondary | exploratory.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

