//
//  Library.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Library) on 2016-04-05.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Represents a library of quality improvement components.
 *
 *  The Library resource provides a representation container for knowledge artifact component definitions. It is
 *  effectively an exposure of the header information for a CQL/ELM library.
 */
public class Library: DomainResource {
	override public class var resourceName: String {
		get { return "Library" }
	}
	
	/// A code system used by the library.
	public var codeSystem: [LibraryCodeSystem]?
	
	/// Data requirements of the library.
	public var dataRequirement: [DataRequirement]?
	
	/// The content of the library.
	public var document: Attachment?
	
	/// A library referenced by this library.
	public var library: [LibraryLibrary]?
	
	/// A model used by the library.
	public var model: [LibraryModel]?
	
	/// The metadata information for the library.
	public var moduleMetadata: ModuleMetadata?
	
	/// Parameters defined by the library.
	public var parameter: [ParameterDefinition]?
	
	/// A value set used by the library.
	public var valueSet: [LibraryValueSet]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(document: Attachment) {
		self.init(json: nil)
		self.document = document
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [FHIRJSON] {
					self.codeSystem = LibraryCodeSystem.from(val, owner: self) as? [LibraryCodeSystem]
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dataRequirement"] {
				presentKeys.insert("dataRequirement")
				if let val = exist as? [FHIRJSON] {
					self.dataRequirement = DataRequirement.from(val, owner: self) as? [DataRequirement]
				}
				else {
					errors.append(FHIRJSONError(key: "dataRequirement", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["document"] {
				presentKeys.insert("document")
				if let val = exist as? FHIRJSON {
					self.document = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "document", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "document"))
			}
			if let exist: AnyObject = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = LibraryLibrary.from(val, owner: self) as? [LibraryLibrary]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["model"] {
				presentKeys.insert("model")
				if let val = exist as? [FHIRJSON] {
					self.model = LibraryModel.from(val, owner: self) as? [LibraryModel]
				}
				else {
					errors.append(FHIRJSONError(key: "model", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["moduleMetadata"] {
				presentKeys.insert("moduleMetadata")
				if let val = exist as? FHIRJSON {
					self.moduleMetadata = ModuleMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "moduleMetadata", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ParameterDefinition.from(val, owner: self) as? [ParameterDefinition]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSet"] {
				presentKeys.insert("valueSet")
				if let val = exist as? [FHIRJSON] {
					self.valueSet = LibraryValueSet.from(val, owner: self) as? [LibraryValueSet]
				}
				else {
					errors.append(FHIRJSONError(key: "valueSet", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = LibraryCodeSystem.asJSONArray(codeSystem)
		}
		if let dataRequirement = self.dataRequirement {
			json["dataRequirement"] = DataRequirement.asJSONArray(dataRequirement)
		}
		if let document = self.document {
			json["document"] = document.asJSON()
		}
		if let library = self.library {
			json["library"] = LibraryLibrary.asJSONArray(library)
		}
		if let model = self.model {
			json["model"] = LibraryModel.asJSONArray(model)
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = ParameterDefinition.asJSONArray(parameter)
		}
		if let valueSet = self.valueSet {
			json["valueSet"] = LibraryValueSet.asJSONArray(valueSet)
		}
		
		return json
	}
}


/**
 *  A code system used by the library.
 *
 *  A code system definition used within the library.
 */
public class LibraryCodeSystem: BackboneElement {
	override public class var resourceName: String {
		get { return "LibraryCodeSystem" }
	}
	
	/// The identifier of the code system.
	public var identifier: String?
	
	/// Name of the code system.
	public var name: String?
	
	/// The version of the code system, if any.
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
 *  A library referenced by this library.
 *
 *  A library element describes a library referenced by this library.
 */
public class LibraryLibrary: BackboneElement {
	override public class var resourceName: String {
		get { return "LibraryLibrary" }
	}
	
	/// The content of the library.
	public var documentAttachment: Attachment?
	
	/// The content of the library.
	public var documentReference: Reference?
	
	/// The identifier of the library.
	public var identifier: String?
	
	/// Name of the library.
	public var name: String?
	
	/// The version of the library, if any.
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
 *  A model used by the library.
 *
 *  A model element describes the model and version used by the library.
 */
public class LibraryModel: BackboneElement {
	override public class var resourceName: String {
		get { return "LibraryModel" }
	}
	
	/// The identifier of the model.
	public var identifier: String?
	
	/// Name of the model.
	public var name: String?
	
	/// The version of the model, if any.
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
 *  A value set used by the library.
 *
 *  A value set definition referenced by the library.
 */
public class LibraryValueSet: BackboneElement {
	override public class var resourceName: String {
		get { return "LibraryValueSet" }
	}
	
	/// The code system binding for this value set definition.
	public var codeSystem: [String]?
	
	/// The identifier of the value set.
	public var identifier: String?
	
	/// Name of the value set.
	public var name: String?
	
	/// The version of the value set.
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

