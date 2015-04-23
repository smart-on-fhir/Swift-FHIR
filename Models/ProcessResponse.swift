//
//  ProcessResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcessResponse) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  ProcessResponse resource.
 *
 *  This resource provides processing status, errors and notes from the processing of a resource.
 */
public class ProcessResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "ProcessResponse" }
	}
	
	/// Creation date
	public var created: DateTime?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Error code
	public var error: [Coding]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Notes
	public var notes: [ProcessResponseNotes]?
	
	/// Authoring Organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Processing outcome
	public var outcome: Coding?
	
	/// Request reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible Practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["disposition"] {
				presentKeys.addObject("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"disposition\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["error"] {
				presentKeys.addObject("error")
				if let val = exist as? [FHIRJSON] {
					self.error = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"error\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["form"] {
				presentKeys.addObject("form")
				if let val = exist as? FHIRJSON {
					self.form = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"form\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? [FHIRJSON] {
					self.notes = ProcessResponseNotes.from(val, owner: self) as? [ProcessResponseNotes]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.addObject("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"organization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.addObject("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalRuleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.addObject("outcome")
				if let val = exist as? FHIRJSON {
					self.outcome = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"outcome\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.addObject("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"request\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requestOrganization"] {
				presentKeys.addObject("requestOrganization")
				if let val = exist as? FHIRJSON {
					self.requestOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requestOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requestProvider"] {
				presentKeys.addObject("requestProvider")
				if let val = exist as? FHIRJSON {
					self.requestProvider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requestProvider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.addObject("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ruleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = Coding.asJSONArray(error)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let notes = self.notes {
			json["notes"] = ProcessResponseNotes.asJSONArray(notes)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON()
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		
		return json
	}
}


/**
 *  Notes.
 *
 *  Suite of processing note or additional requirements is the processing has been held.
 */
public class ProcessResponseNotes: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcessResponseNotes" }
	}
	
	/// Notes text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

