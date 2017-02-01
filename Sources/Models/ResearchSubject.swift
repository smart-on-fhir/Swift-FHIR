//
//  ResearchSubject.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/ResearchSubject) on 2017-02-01.
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
open class ResearchSubject: DomainResource {
	override open class var resourceType: String {
		get { return "ResearchSubject" }
	}
	
	/// What path was followed.
	public var actualArm: FHIRString?
	
	/// What path should be followed.
	public var assignedArm: FHIRString?
	
	/// Agreement to participate in study.
	public var consent: Reference?
	
	/// Business Identifer for event.
	public var identifier: Identifier?
	
	/// Who is part of study.
	public var individual: Reference?
	
	/// Start and end of participation.
	public var period: Period?
	
	/// The current state of the event.
	public var status: ResearchSubjectStatus?
	
	/// Study subject is part of.
	public var study: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(individual: Reference, status: ResearchSubjectStatus, study: Reference) {
		self.init()
		self.individual = individual
		self.status = status
		self.study = study
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actualArm = try createInstance(type: FHIRString.self, for: "actualArm", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actualArm
		assignedArm = try createInstance(type: FHIRString.self, for: "assignedArm", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assignedArm
		consent = try createInstance(type: Reference.self, for: "consent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? consent
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		individual = try createInstance(type: Reference.self, for: "individual", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? individual
		if nil == individual && !presentKeys.contains("individual") {
			errors.append(FHIRValidationError(missing: "individual"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		status = createEnum(type: ResearchSubjectStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		study = try createInstance(type: Reference.self, for: "study", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? study
		if nil == study && !presentKeys.contains("study") {
			errors.append(FHIRValidationError(missing: "study"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actualArm?.decorate(json: &json, withKey: "actualArm", errors: &errors)
		self.assignedArm?.decorate(json: &json, withKey: "assignedArm", errors: &errors)
		self.consent?.decorate(json: &json, withKey: "consent", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.individual?.decorate(json: &json, withKey: "individual", errors: &errors)
		if nil == self.individual {
			errors.append(FHIRValidationError(missing: "individual"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.study?.decorate(json: &json, withKey: "study", errors: &errors)
		if nil == self.study {
			errors.append(FHIRValidationError(missing: "study"))
		}
	}
}

