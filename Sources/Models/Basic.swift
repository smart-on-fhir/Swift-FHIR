//
//  Basic.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Basic) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Resource for non-supported content.
 *
 *  Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing
 *  resource, and custom resources not appropriate for inclusion in the FHIR specification.
 */
public class Basic: DomainResource {
	override public class var resourceType: String {
		get { return "Basic" }
	}
	
	/// Who created.
	public var author: Reference?
	
	/// Kind of Resource.
	public var code: CodeableConcept?
	
	/// When created.
	public var created: FHIRDate?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// Identifies the focus of this resource.
	public var subject: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		
		return json
	}
}

