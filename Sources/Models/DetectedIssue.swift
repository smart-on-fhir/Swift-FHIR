//
//  DetectedIssue.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/DetectedIssue) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Clinical issue with action.

Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a
patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
*/
open class DetectedIssue: DomainResource {
	override open class var resourceType: String {
		get { return "DetectedIssue" }
	}
	
	/// The provider or device that identified the issue.
	public var author: Reference?
	
	/// Issue Category, e.g. drug-drug, duplicate therapy, etc..
	public var category: CodeableConcept?
	
	/// When identified.
	public var date: DateTime?
	
	/// Description and context.
	public var detail: String?
	
	/// Unique id for the detected issue.
	public var identifier: Identifier?
	
	/// Problem resource.
	public var implicated: [Reference]?
	
	/// Step taken to address.
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Associated patient.
	public var patient: Reference?
	
	/// Authority for issue.
	public var reference: URL?
	
	/// Indicates the degree of importance associated with the identified issue based on the potential impact on the
	/// patient.
	public var severity: DetectedIssueSeverity?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? String {
				self.detail = val
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: String.self, has: type(of: exist)))
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
		if let exist = json["implicated"] {
			presentKeys.insert("implicated")
			if let val = exist as? [FHIRJSON] {
				do {
					self.implicated = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "implicated"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "implicated", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["mitigation"] {
			presentKeys.insert("mitigation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.mitigation = try DetectedIssueMitigation.instantiate(fromArray: val, owner: self) as? [DetectedIssueMitigation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "mitigation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mitigation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["patient"] {
			presentKeys.insert("patient")
			if let val = exist as? FHIRJSON {
				do {
					self.patient = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patient"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reference"] {
			presentKeys.insert("reference")
			if let val = exist as? String {
				self.reference = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "reference", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? String {
				if let enumval = DetectedIssueSeverity(rawValue: val) {
					self.severity = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "severity", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "severity", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let implicated = self.implicated {
			json["implicated"] = implicated.map() { $0.asJSON(errors: &errors) }
		}
		if let mitigation = self.mitigation {
			json["mitigation"] = mitigation.map() { $0.asJSON(errors: &errors) }
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON(errors: &errors)
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.rawValue
		}
		
		return json
	}
}


/**
Step taken to address.

Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk identified
by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
reduce/eliminate the need for any action.
*/
open class DetectedIssueMitigation: BackboneElement {
	override open class var resourceType: String {
		get { return "DetectedIssueMitigation" }
	}
	
	/// What mitigation?.
	public var action: CodeableConcept?
	
	/// Who is committing?.
	public var author: Reference?
	
	/// Date committed.
	public var date: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: CodeableConcept) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["action"] {
			presentKeys.insert("action")
			if let val = exist as? FHIRJSON {
				do {
					self.action = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "action"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "action", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "action"))
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? FHIRJSON {
				do {
					self.author = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let action = self.action {
			json["action"] = action.asJSON(errors: &errors)
		}
		if let author = self.author {
			json["author"] = author.asJSON(errors: &errors)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		
		return json
	}
}

