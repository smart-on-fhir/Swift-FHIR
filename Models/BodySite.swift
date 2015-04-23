//
//  BodySite.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/BodySite) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Specific and identified anatomical location.
 *
 *  Record details about the anatomical location of a specimen or body part.  This resource may be used when a coded
 *  concept does not provide the necessary detail needed for the use case.
 */
public class BodySite: DomainResource
{
	override public class var resourceName: String {
		get { return "BodySite" }
	}
	
	/// Named anatomical location
	public var code: CodeableConcept?
	
	/// The Description of anatomical location
	public var description_fhir: String?
	
	/// Bodysite identifier
	public var identifier: [Identifier]?
	
	/// Attached images
	public var image: [Attachment]?
	
	/// Modification to location code
	public var modifier_fhir: [CodeableConcept]?
	
	/// Patient
	public var patient: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["image"] {
				presentKeys.addObject("image")
				if let val = exist as? [FHIRJSON] {
					self.image = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"image\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["modifier"] {
				presentKeys.addObject("modifier")
				if let val = exist as? [FHIRJSON] {
					self.modifier_fhir = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"modifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.addObject("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patient\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"patient\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let image = self.image {
			json["image"] = Attachment.asJSONArray(image)
		}
		if let modifier_fhir = self.modifier_fhir {
			json["modifier"] = CodeableConcept.asJSONArray(modifier_fhir)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		
		return json
	}
}

