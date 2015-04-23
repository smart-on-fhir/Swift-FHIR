//
//  Reference.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Reference) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A reference from one resource to another.
 */
public class Reference: FHIRElement
{
	override public class var resourceName: String {
		get { return "Reference" }
	}
	
	/// Text alternative for the resource
	public var display: String?
	
	/// Relative, internal or absolute URL reference
	public var reference: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["display"] {
				presentKeys.addObject("display")
				if let val = exist as? String {
					self.display = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"display\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["reference"] {
				presentKeys.addObject("reference")
				if let val = exist as? String {
					self.reference = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reference\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let reference = self.reference {
			json["reference"] = reference.asJSON()
		}
		
		return json
	}
}

