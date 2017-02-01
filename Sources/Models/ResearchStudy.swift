//
//  ResearchStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/ResearchStudy) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Investigation increase healthcare-related patient-independent knowledge.

A process where a researcher or organization plans and then executes a series of steps intended to increase the field of
healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
information about medications, devices, therapies and other interventional and investigative techniques.
ResearchStudies involve the gathering of information about human or animal subjects.
*/
open class ResearchStudy: DomainResource {
	override open class var resourceType: String {
		get { return "ResearchStudy" }
	}
	
	/// Defined path through the study for a subject.
	public var arm: [ResearchStudyArm]?
	
	/// Classifications for the study.
	public var category: [CodeableConcept]?
	
	/// Contact details for the study.
	public var contact: [ContactDetail]?
	
	/// What this is study doing.
	public var description_fhir: FHIRString?
	
	/// Inclusion & exclusion criteria.
	public var enrollment: [Reference]?
	
	/// Drugs, devices, conditions, etc. under study.
	public var focus: [CodeableConcept]?
	
	/// Business Identifer for study.
	public var identifier: [Identifier]?
	
	/// Geographic region(s) for study.
	public var jurisdiction: [CodeableConcept]?
	
	/// Used to search for the study.
	public var keyword: [CodeableConcept]?
	
	/// Comments made about the event.
	public var note: [Annotation]?
	
	/// Part of larger study.
	public var partOf: [Reference]?
	
	/// When the study began and ended.
	public var period: Period?
	
	/// Individual responsible for the study.
	public var principalInvestigator: Reference?
	
	/// Steps followed in executing study.
	public var protocol_fhir: [Reference]?
	
	/// Reason for terminating study early.
	public var reasonStopped: CodeableConcept?
	
	/// References and dependencies.
	public var relatedArtifact: [RelatedArtifact]?
	
	/// Location involved in study execution.
	public var site: [Reference]?
	
	/// Organization responsible for the study.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		arm = try createInstances(of: ResearchStudyArm.self, for: "arm", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? arm
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		enrollment = try createInstances(of: Reference.self, for: "enrollment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? enrollment
		focus = try createInstances(of: CodeableConcept.self, for: "focus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? focus
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		keyword = try createInstances(of: CodeableConcept.self, for: "keyword", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? keyword
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		partOf = try createInstances(of: Reference.self, for: "partOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? partOf
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		principalInvestigator = try createInstance(type: Reference.self, for: "principalInvestigator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? principalInvestigator
		protocol_fhir = try createInstances(of: Reference.self, for: "protocol", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? protocol_fhir
		reasonStopped = try createInstance(type: CodeableConcept.self, for: "reasonStopped", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonStopped
		relatedArtifact = try createInstances(of: RelatedArtifact.self, for: "relatedArtifact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relatedArtifact
		site = try createInstances(of: Reference.self, for: "site", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? site
		sponsor = try createInstance(type: Reference.self, for: "sponsor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sponsor
		status = createEnum(type: ResearchStudyStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		title = try createInstance(type: FHIRString.self, for: "title", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? title
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "arm", using: self.arm, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "enrollment", using: self.enrollment, errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "keyword", using: self.keyword, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
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
	
	/// Categorization of arm.
	public var code: CodeableConcept?
	
	/// Short explanation of study path.
	public var description_fhir: FHIRString?
	
	/// Label for study arm.
	public var name: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
	}
}

