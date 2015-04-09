//
//  BodySite.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/BodySite) on 2015-04-03.
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
	
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["image"] as? [FHIRJSON] {
				self.image = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["modifier"] as? [FHIRJSON] {
				self.modifier_fhir = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
		}
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

