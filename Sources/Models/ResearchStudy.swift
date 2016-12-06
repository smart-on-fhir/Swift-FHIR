//
//  ResearchStudy.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ResearchStudy) on 2016-12-06.
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
	public var description_fhir: String?
	
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
	public var title: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ResearchStudyStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["arm"] {
			presentKeys.insert("arm")
			if let val = exist as? [FHIRJSON] {
				do {
					self.arm = try ResearchStudyArm.instantiate(fromArray: val, owner: self) as? [ResearchStudyArm]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "arm"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "arm", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? [FHIRJSON] {
				do {
					self.category = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["enrollment"] {
			presentKeys.insert("enrollment")
			if let val = exist as? [FHIRJSON] {
				do {
					self.enrollment = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "enrollment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "enrollment", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? [FHIRJSON] {
				do {
					self.focus = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "focus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["keyword"] {
			presentKeys.insert("keyword")
			if let val = exist as? [FHIRJSON] {
				do {
					self.keyword = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "keyword"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "keyword", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["partOf"] {
			presentKeys.insert("partOf")
			if let val = exist as? [FHIRJSON] {
				do {
					self.partOf = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "partOf"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "partOf", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["principalInvestigator"] {
			presentKeys.insert("principalInvestigator")
			if let val = exist as? FHIRJSON {
				do {
					self.principalInvestigator = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "principalInvestigator"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "principalInvestigator", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["protocol"] {
			presentKeys.insert("protocol")
			if let val = exist as? [FHIRJSON] {
				do {
					self.protocol_fhir = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "protocol"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "protocol", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["reasonStopped"] {
			presentKeys.insert("reasonStopped")
			if let val = exist as? FHIRJSON {
				do {
					self.reasonStopped = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reasonStopped"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reasonStopped", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relatedArtifact"] {
			presentKeys.insert("relatedArtifact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.relatedArtifact = try RelatedArtifact.instantiate(fromArray: val, owner: self) as? [RelatedArtifact]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relatedArtifact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relatedArtifact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["site"] {
			presentKeys.insert("site")
			if let val = exist as? [FHIRJSON] {
				do {
					self.site = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "site"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "site", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sponsor"] {
			presentKeys.insert("sponsor")
			if let val = exist as? FHIRJSON {
				do {
					self.sponsor = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "sponsor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "sponsor", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ResearchStudyStatus(rawValue: val) {
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
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let arm = self.arm {
			json["arm"] = arm.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.map() { $0.asJSON(errors: &errors) }
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let enrollment = self.enrollment {
			json["enrollment"] = enrollment.map() { $0.asJSON(errors: &errors) }
		}
		if let focus = self.focus {
			json["focus"] = focus.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let keyword = self.keyword {
			json["keyword"] = keyword.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let partOf = self.partOf {
			json["partOf"] = partOf.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let principalInvestigator = self.principalInvestigator {
			json["principalInvestigator"] = principalInvestigator.asJSON(errors: &errors)
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.map() { $0.asJSON(errors: &errors) }
		}
		if let reasonStopped = self.reasonStopped {
			json["reasonStopped"] = reasonStopped.asJSON(errors: &errors)
		}
		if let relatedArtifact = self.relatedArtifact {
			json["relatedArtifact"] = relatedArtifact.map() { $0.asJSON(errors: &errors) }
		}
		if let site = self.site {
			json["site"] = site.map() { $0.asJSON(errors: &errors) }
		}
		if let sponsor = self.sponsor {
			json["sponsor"] = sponsor.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
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
	public var description_fhir: String?
	
	/// Label for study arm.
	public var name: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
	}
}

