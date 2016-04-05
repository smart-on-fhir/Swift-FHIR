//
//  ModuleDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ModuleDefinition) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Defines the data requirements information for a quality artifact.
 *
 *  The ModuleDefinition resource defines the data requirements for a quality artifact.
 */
public class ModuleDefinition: DomainResource {
	override public class var resourceName: String {
		get { return "ModuleDefinition" }
	}
	
	/// None.
	public var codeSystem: [ModuleDefinitionCodeSystem]?
	
	/// Describes a required data item.
	public var data: [ModuleDefinitionData]?
	
	/// Logical identifier.
	public var identifier: [Identifier]?
	
	/// A library referenced by the module.
	public var library: [ModuleDefinitionLibrary]?
	
	/// None.
	public var model: [ModuleDefinitionModel]?
	
	/// None.
	public var parameter: [ModuleDefinitionParameter]?
	
	/// None.
	public var valueSet: [ModuleDefinitionValueSet]?
	
	/// The version of the module, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [FHIRJSON] {
					self.codeSystem = ModuleDefinitionCodeSystem.from(val, owner: self) as? [ModuleDefinitionCodeSystem]
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["data"] {
				presentKeys.insert("data")
				if let val = exist as? [FHIRJSON] {
					self.data = ModuleDefinitionData.from(val, owner: self) as? [ModuleDefinitionData]
				}
				else {
					errors.append(FHIRJSONError(key: "data", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = ModuleDefinitionLibrary.from(val, owner: self) as? [ModuleDefinitionLibrary]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["model"] {
				presentKeys.insert("model")
				if let val = exist as? [FHIRJSON] {
					self.model = ModuleDefinitionModel.from(val, owner: self) as? [ModuleDefinitionModel]
				}
				else {
					errors.append(FHIRJSONError(key: "model", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ModuleDefinitionParameter.from(val, owner: self) as? [ModuleDefinitionParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSet"] {
				presentKeys.insert("valueSet")
				if let val = exist as? [FHIRJSON] {
					self.valueSet = ModuleDefinitionValueSet.from(val, owner: self) as? [ModuleDefinitionValueSet]
				}
				else {
					errors.append(FHIRJSONError(key: "valueSet", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = ModuleDefinitionCodeSystem.asJSONArray(codeSystem)
		}
		if let data = self.data {
			json["data"] = ModuleDefinitionData.asJSONArray(data)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let library = self.library {
			json["library"] = ModuleDefinitionLibrary.asJSONArray(library)
		}
		if let model = self.model {
			json["model"] = ModuleDefinitionModel.asJSONArray(model)
		}
		if let parameter = self.parameter {
			json["parameter"] = ModuleDefinitionParameter.asJSONArray(parameter)
		}
		if let valueSet = self.valueSet {
			json["valueSet"] = ModuleDefinitionValueSet.asJSONArray(valueSet)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A code system definition used within the knowledge module.
 */
public class ModuleDefinitionCodeSystem: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionCodeSystem" }
	}
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String, name: String) {
		self.init(json: nil)
		self.identifier = identifier
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Describes a required data item.
 *
 *  Describes a required data item for evaluation in terms of the type of data, and optional code- or date-based filters
 *  of the data.
 */
public class ModuleDefinitionData: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionData" }
	}
	
	/// None.
	public var codeFilter: [ModuleDefinitionDataCodeFilter]?
	
	/// None.
	public var dateFilter: [ModuleDefinitionDataDateFilter]?
	
	/// Indicates that specific structure elements are referenced by the knowledge module.
	public var mustSupport: [String]?
	
	/// The profile of the required data.
	public var profile: Reference?
	
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
					self.codeFilter = ModuleDefinitionDataCodeFilter.from(val, owner: self) as? [ModuleDefinitionDataCodeFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "codeFilter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dateFilter"] {
				presentKeys.insert("dateFilter")
				if let val = exist as? [FHIRJSON] {
					self.dateFilter = ModuleDefinitionDataDateFilter.from(val, owner: self) as? [ModuleDefinitionDataDateFilter]
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
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
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
			json["codeFilter"] = ModuleDefinitionDataCodeFilter.asJSONArray(codeFilter)
		}
		if let dateFilter = self.dateFilter {
			json["dateFilter"] = ModuleDefinitionDataDateFilter.asJSONArray(dateFilter)
		}
		if let mustSupport = self.mustSupport {
			var arr = [AnyObject]()
			for val in mustSupport {
				arr.append(val.asJSON())
			}
			json["mustSupport"] = arr
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Code filters for the required data, if any.
 */
public class ModuleDefinitionDataCodeFilter: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionDataCodeFilter" }
	}
	
	/// The codeableConcepts for the filter.
	public var codeableConcept: [CodeableConcept]?
	
	/// The code-valued attribute of the filter.
	public var path: String?
	
	/// The valueset for the code filter.
	public var valueSetReference: Reference?
	
	/// The valueset for the code filter.
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
			if let exist: AnyObject = js["codeableConcept"] {
				presentKeys.insert("codeableConcept")
				if let val = exist as? [FHIRJSON] {
					self.codeableConcept = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "codeableConcept", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
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
		
		if let codeableConcept = self.codeableConcept {
			json["codeableConcept"] = CodeableConcept.asJSONArray(codeableConcept)
		}
		if let path = self.path {
			json["path"] = path.asJSON()
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
 *  None.
 *
 *  Date filters for the required data, if any.
 */
public class ModuleDefinitionDataDateFilter: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionDataDateFilter" }
	}
	
	/// The date-valued attribute of the filter.
	public var path: String?
	
	/// The value of the filter, as a Period or dateTime value.
	public var valueDateTime: DateTime?
	
	/// The value of the filter, as a Period or dateTime value.
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
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		
		return json
	}
}


/**
 *  A library referenced by the module.
 *
 *  A library referenced by the module. The reference must consist of either an id, or a document reference.
 */
public class ModuleDefinitionLibrary: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionLibrary" }
	}
	
	/// None.
	public var documentAttachment: Attachment?
	
	/// None.
	public var documentReference: Reference?
	
	/// None.
	public var identifier: String?
	
	/// The local name for the library.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentAttachment"] {
				presentKeys.insert("documentAttachment")
				if let val = exist as? FHIRJSON {
					self.documentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "documentAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentReference"] {
				presentKeys.insert("documentReference")
				if let val = exist as? FHIRJSON {
					self.documentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "documentReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentAttachment = self.documentAttachment {
			json["documentAttachment"] = documentAttachment.asJSON()
		}
		if let documentReference = self.documentReference {
			json["documentReference"] = documentReference.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A model reference used by the content.
 */
public class ModuleDefinitionModel: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionModel" }
	}
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Parameters to the module.
 */
public class ModuleDefinitionParameter: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionParameter" }
	}
	
	/// None.
	public var documentation: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var profile: Reference?
	
	/// None.
	public var type: String?
	
	/// None.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, type: String, use: String) {
		self.init(json: nil)
		self.name = name
		self.type = type
		self.use = use
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "use"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A value set definition used by the knowledge module.
 */
public class ModuleDefinitionValueSet: BackboneElement {
	override public class var resourceName: String {
		get { return "ModuleDefinitionValueSet" }
	}
	
	/// None.
	public var codeSystem: [String]?
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String, name: String) {
		self.init(json: nil)
		self.identifier = identifier
		self.name = name
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [String] {
					self.codeSystem = val
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeSystem = self.codeSystem {
			var arr = [AnyObject]()
			for val in codeSystem {
				arr.append(val.asJSON())
			}
			json["codeSystem"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

