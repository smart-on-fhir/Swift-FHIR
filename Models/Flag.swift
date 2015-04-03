//
//  Flag.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Flag) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Key information to flag to healthcare providers.
 *
 *  Prospective warnings of potential issues when providing care to the patient.
 */
public class Flag: DomainResource
{
	override public class var resourceName: String {
		get { return "Flag" }
	}
	
	/// Flag creator
	public var author: Reference?
	
	/// Clinical, administrative, etc.
	public var category: CodeableConcept?
	
	/// Partially deaf, Requires easy open caps, No permanent address, etc.
	public var code: CodeableConcept?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Who is flag about?
	public var patient: Reference?
	
	/// Time period when flag is active
	public var period: Period?
	
	/// active | inactive | entered-in-error
	public var status: String?
	
	public convenience init(code: CodeableConcept?, patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? FHIRJSON {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? FHIRJSON {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let author = self.author {
			json["author"] = author.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

