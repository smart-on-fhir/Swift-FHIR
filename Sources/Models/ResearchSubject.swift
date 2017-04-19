//
//  ResearchSubject.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ResearchSubject) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Investigation to increase healthcare-related patient-independent knowledge.

A process where a researcher or organization plans and then executes a series of steps intended to increase the field of
healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other
information about medications, devices, therapies and other interventional and investigative techniques.  A
ResearchStudy involves the gathering of information about human or animal subjects.
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
	
	/// Business Identifier for research subject.
	public var identifier: Identifier?
	
	/// Who is part of study.
	public var individual: Reference?
	
	/// Start and end of participation.
	public var period: Period?
	
	/// The current state of the subject.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actualArm = createInstance(type: FHIRString.self, for: "actualArm", in: json, context: &instCtx, owner: self) ?? actualArm
		assignedArm = createInstance(type: FHIRString.self, for: "assignedArm", in: json, context: &instCtx, owner: self) ?? assignedArm
		consent = createInstance(type: Reference.self, for: "consent", in: json, context: &instCtx, owner: self) ?? consent
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		individual = createInstance(type: Reference.self, for: "individual", in: json, context: &instCtx, owner: self) ?? individual
		if nil == individual && !instCtx.containsKey("individual") {
			instCtx.addError(FHIRValidationError(missing: "individual"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		status = createEnum(type: ResearchSubjectStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		study = createInstance(type: Reference.self, for: "study", in: json, context: &instCtx, owner: self) ?? study
		if nil == study && !instCtx.containsKey("study") {
			instCtx.addError(FHIRValidationError(missing: "study"))
		}
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

