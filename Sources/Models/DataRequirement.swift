//
//  DataRequirement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DataRequirement) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Describes a required data item.
 *
 *  Describes a required data item for evaluation in terms of the type of data, and optional code- or date-based filters
 *  of the data.
 */
public class DataRequirement: Element {
	override public class var resourceName: String {
		get { return "DataRequirement" }
	}
	
	/// Code filters for the data.
	public var codeFilter: [DataRequirementCodeFilter]?
	
	/// Date filters for the data.
	public var dateFilter: [DataRequirementDateFilter]?
	
	/// Indicates that specific structure elements are referenced by the knowledge module.
	public var mustSupport: [String]?
	
	/// The profile of the required data.
	public var profile: [Reference]?
	
	/// The type of the required data.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeFilter"] {
				presentKeys.insert("codeFilter")
				if let val = exist as? [FHIRJSON] {
					self.codeFilter = DataRequirementCodeFilter.from(val, owner: self) as? [DataRequirementCodeFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "codeFilter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateFilter"] {
				presentKeys.insert("dateFilter")
				if let val = exist as? [FHIRJSON] {
					self.dateFilter = DataRequirementDateFilter.from(val, owner: self) as? [DataRequirementDateFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "dateFilter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mustSupport"] {
				presentKeys.insert("mustSupport")
				if let val = exist as? [String] {
					self.mustSupport = val
				}
				else {
					errors.append(FHIRJSONError(key: "mustSupport", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? [FHIRJSON] {
					self.profile = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeFilter = self.codeFilter {
			json["codeFilter"] = DataRequirementCodeFilter.asJSONArray(codeFilter)
		}
		if let dateFilter = self.dateFilter {
			json["dateFilter"] = DataRequirementDateFilter.asJSONArray(dateFilter)
		}
		if let mustSupport = self.mustSupport {
			var arr = [AnyObject]()
			for val in mustSupport {
				arr.append(val.asJSON())
			}
			json["mustSupport"] = arr
		}
		if let profile = self.profile {
			json["profile"] = Reference.asJSONArray(profile)
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Code filters for the data.
 *
 *  Code filters specify additional constraints on the data, specifying the value set of interest for a particular
 *  element of the data.
 */
public class DataRequirementCodeFilter: Element {
	override public class var resourceName: String {
		get { return "DataRequirementCodeFilter" }
	}
	
	/// The code-valued attribute of the filter.
	public var path: String?
	
	/// Code value of the filter.
	public var valueCode: [String]?
	
	/// CodeableConcept value of the filter.
	public var valueCodeableConcept: [CodeableConcept]?
	
	/// Coding value of the filter.
	public var valueCoding: [Coding]?
	
	/// Valueset for the filter.
	public var valueSetReference: Reference?
	
	/// Valueset for the filter.
	public var valueSetString: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init(json: nil)
		self.path = path
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
			if let exist: AnyObject = js["valueCode"] {
				presentKeys.insert("valueCode")
				if let val = exist as? [String] {
					self.valueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueCode", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCodeableConcept"] {
				presentKeys.insert("valueCodeableConcept")
				if let val = exist as? [FHIRJSON] {
					self.valueCodeableConcept = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "valueCodeableConcept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueCoding"] {
				presentKeys.insert("valueCoding")
				if let val = exist as? [FHIRJSON] {
					self.valueCoding = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "valueCoding", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSetReference"] {
				presentKeys.insert("valueSetReference")
				if let val = exist as? FHIRJSON {
					self.valueSetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSetString"] {
				presentKeys.insert("valueSetString")
				if let val = exist as? String {
					self.valueSetString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetString", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueCode = self.valueCode {
			var arr = [AnyObject]()
			for val in valueCode {
				arr.append(val.asJSON())
			}
			json["valueCode"] = arr
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = CodeableConcept.asJSONArray(valueCodeableConcept)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = Coding.asJSONArray(valueCoding)
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON()
		}
		if let valueSetString = self.valueSetString {
			json["valueSetString"] = valueSetString.asJSON()
		}
		
		return json
	}
}


/**
 *  Date filters for the data.
 *
 *  Date filters specify additional constraints on the data in terms of the applicable date range for specific elements.
 */
public class DataRequirementDateFilter: Element {
	override public class var resourceName: String {
		get { return "DataRequirementDateFilter" }
	}
	
	/// The date-valued attribute of the filter.
	public var path: String?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDateTime: DateTime?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valueDuration: Duration?
	
	/// The value of the filter, as a Period, DateTime, or Duration value.
	public var valuePeriod: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init(json: nil)
		self.path = path
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
			if let exist: AnyObject = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueDuration"] {
				presentKeys.insert("valueDuration")
				if let val = exist as? FHIRJSON {
					self.valueDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		
		return json
	}
}

