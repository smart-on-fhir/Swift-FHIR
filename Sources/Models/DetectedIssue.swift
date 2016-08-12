//
//  DetectedIssue.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DetectedIssue) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Clinical issue with action.
 *
 *  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for
 *  a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public class DetectedIssue: DomainResource {
	override public class var resourceName: String {
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
	public var reference: NSURL?
	
	/// high | moderate | low.
	public var severity: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? String {
					self.detail = val
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["implicated"] {
				presentKeys.insert("implicated")
				if let val = exist as? [FHIRJSON] {
					self.implicated = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "implicated", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mitigation"] {
				presentKeys.insert("mitigation")
				if let val = exist as? [FHIRJSON] {
					self.mitigation = DetectedIssueMitigation.from(val, owner: self) as? [DetectedIssueMitigation]
				}
				else {
					errors.append(FHIRJSONError(key: "mitigation", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.insert("reference")
				if let val = exist as? String {
					self.reference = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "reference", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = detail.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let implicated = self.implicated {
			json["implicated"] = Reference.asJSONArray(implicated)
		}
		if let mitigation = self.mitigation {
			json["mitigation"] = DetectedIssueMitigation.asJSONArray(mitigation)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.asJSON()
		}
		
		return json
	}
}


/**
 *  Step taken to address.
 *
 *  Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk
 *  identified by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that
 *  may reduce/eliminate the need for any action.
 */
public class DetectedIssueMitigation: BackboneElement {
	override public class var resourceName: String {
		get { return "DetectedIssueMitigation" }
	}
	
	/// What mitigation?.
	public var action: CodeableConcept?
	
	/// Who is committing?.
	public var author: Reference?
	
	/// Date committed.
	public var date: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: CodeableConcept) {
		self.init(json: nil)
		self.action = action
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.insert("action")
				if let val = exist as? FHIRJSON {
					self.action = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "action", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "action"))
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let action = self.action {
			json["action"] = action.asJSON()
		}
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		
		return json
	}
}

