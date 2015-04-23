//
//  Contraindication.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Contraindication) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Clinical issue with action.
 *
 *  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for
 *  a patient.  E.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public class Contraindication: DomainResource
{
	override public class var resourceName: String {
		get { return "Contraindication" }
	}
	
	/// Who found issue?
	public var author: Reference?
	
	/// E.g. Drug-drug, duplicate therapy, etc.
	public var category: CodeableConcept?
	
	/// When identified
	public var date: DateTime?
	
	/// Description and context
	public var detail: String?
	
	/// Unique id for the contraindication
	public var identifier: Identifier?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// Step taken to address
	public var mitigation: [ContraindicationMitigation]?
	
	/// Associated patient
	public var patient: Reference?
	
	/// Authority for issue
	public var reference: NSURL?
	
	/// high | medium | low
	public var severity: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? String {
					self.detail = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["implicated"] {
				presentKeys.addObject("implicated")
				if let val = exist as? [FHIRJSON] {
					self.implicated = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"implicated\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mitigation"] {
				presentKeys.addObject("mitigation")
				if let val = exist as? [FHIRJSON] {
					self.mitigation = ContraindicationMitigation.from(val, owner: self) as? [ContraindicationMitigation]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mitigation\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["reference"] {
				presentKeys.addObject("reference")
				if let val = exist as? String {
					self.reference = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reference\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.addObject("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"severity\" to be `String`, but is \(exist.dynamicType)"))
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
			json["mitigation"] = ContraindicationMitigation.asJSONArray(mitigation)
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
 *  identified by the contraindicaiton from manifesting.  Can also reflect an observation of known mitigating factors
 *  that may reduce/eliminate the need for any action.
 */
public class ContraindicationMitigation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContraindicationMitigation" }
	}
	
	/// What mitigation?
	public var action: CodeableConcept?
	
	/// Who is committing?
	public var author: Reference?
	
	/// Date committed
	public var date: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(action: CodeableConcept?) {
		self.init(json: nil)
		if nil != action {
			self.action = action
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["action"] {
				presentKeys.addObject("action")
				if let val = exist as? FHIRJSON {
					self.action = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"action\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"action\" but it is missing"))
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? FHIRJSON {
					self.author = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
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

