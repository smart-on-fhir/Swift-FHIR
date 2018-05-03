//
//  OccupationalData.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/OccupationalData) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Patient's or family member's work information (ODH).

A person's work information, structured to facilitate individual, population, and public health use; not intended to
support billing.
*/
open class OccupationalData: DomainResource {
	override open class var resourceType: String {
		get { return "OccupationalData" }
	}
	
	/// Combat Zone Work period.
	public var combatZonePeriod: [Period]?
	
	/// Occupational Data (ODH) recording time.
	public var date: DateTime?
	
	/// Employment status.
	public var employmentStatus: [OccupationalDataEmploymentStatus]?
	
	/// Unique identifier for the occupational data (ODH) record.
	public var identifier: Identifier?
	
	/// Occupational Data (ODH) informant.
	public var informant: [Reference]?
	
	/// Past or Present Job.
	public var pastOrPresentJob: [OccupationalDataPastOrPresentJob]?
	
	/// Occupational Data (ODH) recorder.
	public var recorder: [Reference]?
	
	/// Retirement date.
	public var retirementDate: [DateTime]?
	
	/// The status of this ODH. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Who the occupational data (ODH) is collected about.
	public var subject: Reference?
	
	/// Usual Work.
	public var usualWork: OccupationalDataUsualWork?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		combatZonePeriod = createInstances(of: Period.self, for: "combatZonePeriod", in: json, context: &instCtx, owner: self) ?? combatZonePeriod
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		employmentStatus = createInstances(of: OccupationalDataEmploymentStatus.self, for: "employmentStatus", in: json, context: &instCtx, owner: self) ?? employmentStatus
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		informant = createInstances(of: Reference.self, for: "informant", in: json, context: &instCtx, owner: self) ?? informant
		pastOrPresentJob = createInstances(of: OccupationalDataPastOrPresentJob.self, for: "pastOrPresentJob", in: json, context: &instCtx, owner: self) ?? pastOrPresentJob
		recorder = createInstances(of: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		retirementDate = createInstances(of: DateTime.self, for: "retirementDate", in: json, context: &instCtx, owner: self) ?? retirementDate
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		usualWork = createInstance(type: OccupationalDataUsualWork.self, for: "usualWork", in: json, context: &instCtx, owner: self) ?? usualWork
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "combatZonePeriod", using: self.combatZonePeriod, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "employmentStatus", using: self.employmentStatus, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "informant", using: self.informant, errors: &errors)
		arrayDecorate(json: &json, withKey: "pastOrPresentJob", using: self.pastOrPresentJob, errors: &errors)
		arrayDecorate(json: &json, withKey: "recorder", using: self.recorder, errors: &errors)
		arrayDecorate(json: &json, withKey: "retirementDate", using: self.retirementDate, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.usualWork?.decorate(json: &json, withKey: "usualWork", errors: &errors)
	}
}


/**
Employment status.

A person's current economic relationship to a job. Employment status refers to whether a person is currently working for
compensation, is unemployed (i.e., searching for work for compensation), or is not in the labor force (e.g. disabled,
homemaker, chooses not to work, etc.). Employment status is not the same as classification of work.
*/
open class OccupationalDataEmploymentStatus: BackboneElement {
	override open class var resourceType: String {
		get { return "OccupationalDataEmploymentStatus" }
	}
	
	/// Employment status code.
	public var code: CodeableConcept?
	
	/// Employment status effective time period.
	public var effective: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, effective: Period) {
		self.init()
		self.code = code
		self.effective = effective
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		effective = createInstance(type: Period.self, for: "effective", in: json, context: &instCtx, owner: self) ?? effective
		if nil == effective && !instCtx.containsKey("effective") {
			instCtx.addError(FHIRValidationError(missing: "effective"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.effective?.decorate(json: &json, withKey: "effective", errors: &errors)
		if nil == self.effective {
			errors.append(FHIRValidationError(missing: "effective"))
		}
	}
}


/**
Past or Present Job.

The type of work done by a person during a current or past job. A job is defined by the sum of all the data related to
the occupation. A change in occupation, supervisory level, industry, employer, or employer location is considered a new
job.
*/
open class OccupationalDataPastOrPresentJob: BackboneElement {
	override open class var resourceType: String {
		get { return "OccupationalDataPastOrPresentJob" }
	}
	
	/// Past or Present Job effective time period.
	public var effective: Period?
	
	/// Past or Present Job employer.
	public var employer: Reference?
	
	/// Past or Present Job industry.
	public var industry: CodeableConcept?
	
	/// Past or Present Job job duty.
	public var jobDuty: [FHIRString]?
	
	/// Past or Present Job occupation.
	public var occupation: CodeableConcept?
	
	/// Past or Present Job occupational hazard.
	public var occupationalHazard: [FHIRString]?
	
	/// Past or Present Job supervisory level.
	public var supervisoryLevel: CodeableConcept?
	
	/// Past or Present Job work classification.
	public var workClassification: CodeableConcept?
	
	/// Past or Present Job work schedule.
	public var workSchedule: OccupationalDataPastOrPresentJobWorkSchedule?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(industry: CodeableConcept, occupation: CodeableConcept) {
		self.init()
		self.industry = industry
		self.occupation = occupation
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		effective = createInstance(type: Period.self, for: "effective", in: json, context: &instCtx, owner: self) ?? effective
		employer = createInstance(type: Reference.self, for: "employer", in: json, context: &instCtx, owner: self) ?? employer
		industry = createInstance(type: CodeableConcept.self, for: "industry", in: json, context: &instCtx, owner: self) ?? industry
		if nil == industry && !instCtx.containsKey("industry") {
			instCtx.addError(FHIRValidationError(missing: "industry"))
		}
		jobDuty = createInstances(of: FHIRString.self, for: "jobDuty", in: json, context: &instCtx, owner: self) ?? jobDuty
		occupation = createInstance(type: CodeableConcept.self, for: "occupation", in: json, context: &instCtx, owner: self) ?? occupation
		if nil == occupation && !instCtx.containsKey("occupation") {
			instCtx.addError(FHIRValidationError(missing: "occupation"))
		}
		occupationalHazard = createInstances(of: FHIRString.self, for: "occupationalHazard", in: json, context: &instCtx, owner: self) ?? occupationalHazard
		supervisoryLevel = createInstance(type: CodeableConcept.self, for: "supervisoryLevel", in: json, context: &instCtx, owner: self) ?? supervisoryLevel
		workClassification = createInstance(type: CodeableConcept.self, for: "workClassification", in: json, context: &instCtx, owner: self) ?? workClassification
		workSchedule = createInstance(type: OccupationalDataPastOrPresentJobWorkSchedule.self, for: "workSchedule", in: json, context: &instCtx, owner: self) ?? workSchedule
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.effective?.decorate(json: &json, withKey: "effective", errors: &errors)
		self.employer?.decorate(json: &json, withKey: "employer", errors: &errors)
		self.industry?.decorate(json: &json, withKey: "industry", errors: &errors)
		if nil == self.industry {
			errors.append(FHIRValidationError(missing: "industry"))
		}
		arrayDecorate(json: &json, withKey: "jobDuty", using: self.jobDuty, errors: &errors)
		self.occupation?.decorate(json: &json, withKey: "occupation", errors: &errors)
		if nil == self.occupation {
			errors.append(FHIRValidationError(missing: "occupation"))
		}
		arrayDecorate(json: &json, withKey: "occupationalHazard", using: self.occupationalHazard, errors: &errors)
		self.supervisoryLevel?.decorate(json: &json, withKey: "supervisoryLevel", errors: &errors)
		self.workClassification?.decorate(json: &json, withKey: "workClassification", errors: &errors)
		self.workSchedule?.decorate(json: &json, withKey: "workSchedule", errors: &errors)
	}
}


/**
Past or Present Job work schedule.

Describes a person's typical arrangement of working hours for one job.
*/
open class OccupationalDataPastOrPresentJobWorkSchedule: BackboneElement {
	override open class var resourceType: String {
		get { return "OccupationalDataPastOrPresentJobWorkSchedule" }
	}
	
	/// Past or Present Job work schedule code.
	public var code: CodeableConcept?
	
	/// Past or Present Job work schedule daily work hours.
	public var dailyWorkHours: FHIRDecimal?
	
	/// Past or Present Job work schedule weekly work days.
	public var weeklyWorkDays: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		dailyWorkHours = createInstance(type: FHIRDecimal.self, for: "dailyWorkHours", in: json, context: &instCtx, owner: self) ?? dailyWorkHours
		weeklyWorkDays = createInstance(type: FHIRDecimal.self, for: "weeklyWorkDays", in: json, context: &instCtx, owner: self) ?? weeklyWorkDays
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.dailyWorkHours?.decorate(json: &json, withKey: "dailyWorkHours", errors: &errors)
		self.weeklyWorkDays?.decorate(json: &json, withKey: "weeklyWorkDays", errors: &errors)
	}
}


/**
Usual Work.

The type of work a person has held for the longest amount of time during his or her life, regardless of the occupation
currently held and regardless of whether or not it has been held for a continuous time.
*/
open class OccupationalDataUsualWork: BackboneElement {
	override open class var resourceType: String {
		get { return "OccupationalDataUsualWork" }
	}
	
	/// Usual Work duration.
	public var duration: Duration?
	
	/// Usual Work industry.
	public var industry: CodeableConcept?
	
	/// Usual Work occupation.
	public var occupation: CodeableConcept?
	
	/// Usual Work start time.
	public var start: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(industry: CodeableConcept, occupation: CodeableConcept) {
		self.init()
		self.industry = industry
		self.occupation = occupation
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		duration = createInstance(type: Duration.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		industry = createInstance(type: CodeableConcept.self, for: "industry", in: json, context: &instCtx, owner: self) ?? industry
		if nil == industry && !instCtx.containsKey("industry") {
			instCtx.addError(FHIRValidationError(missing: "industry"))
		}
		occupation = createInstance(type: CodeableConcept.self, for: "occupation", in: json, context: &instCtx, owner: self) ?? occupation
		if nil == occupation && !instCtx.containsKey("occupation") {
			instCtx.addError(FHIRValidationError(missing: "occupation"))
		}
		start = createInstance(type: DateTime.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.industry?.decorate(json: &json, withKey: "industry", errors: &errors)
		if nil == self.industry {
			errors.append(FHIRValidationError(missing: "industry"))
		}
		self.occupation?.decorate(json: &json, withKey: "occupation", errors: &errors)
		if nil == self.occupation {
			errors.append(FHIRValidationError(missing: "occupation"))
		}
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
	}
}

