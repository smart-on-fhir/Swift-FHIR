//
//  ResearchSubject.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ResearchSubject) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var actualArm: String?
	
	/// What path should be followed.
	public var assignedArm: String?
	
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
		if let exist = json["actualArm"] {
			presentKeys.insert("actualArm")
			if let val = exist as? String {
				self.actualArm = val
			}
			else {
				errors.append(FHIRValidationError(key: "actualArm", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["assignedArm"] {
			presentKeys.insert("assignedArm")
			if let val = exist as? String {
				self.assignedArm = val
			}
			else {
				errors.append(FHIRValidationError(key: "assignedArm", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["consent"] {
			presentKeys.insert("consent")
			if let val = exist as? FHIRJSON {
				do {
					self.consent = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "consent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "consent", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["individual"] {
			presentKeys.insert("individual")
			if let val = exist as? FHIRJSON {
				do {
					self.individual = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "individual"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "individual", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "individual"))
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
			if let val = exist as? String {
				if let enumval = ResearchSubjectStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["study"] {
			presentKeys.insert("study")
			if let val = exist as? FHIRJSON {
				do {
					self.study = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "study"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "study", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "study"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let actualArm = self.actualArm {
			json["actualArm"] = actualArm.asJSON()
		}
		if let assignedArm = self.assignedArm {
			json["assignedArm"] = assignedArm.asJSON()
		}
		if let consent = self.consent {
			json["consent"] = consent.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let individual = self.individual {
			json["individual"] = individual.asJSON(errors: &errors)
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let study = self.study {
			json["study"] = study.asJSON(errors: &errors)
		}
		
		return json
	}
}

