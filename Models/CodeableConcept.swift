//
//  CodeableConcept.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/CodeableConcept) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Concept - reference to a terminology or just  text.
 *
 *  A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 */
public class CodeableConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "CodeableConcept" }
	}
	
	/// Code defined by a terminology system
	public var coding: [Coding]?
	
	/// Plain text representation of the concept
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["coding"] {
				presentKeys.addObject("coding")
				if let val = exist as? [FHIRJSON] {
					self.coding = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"coding\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let coding = self.coding {
			json["coding"] = Coding.asJSONArray(coding)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

