//
//  FHIRResource.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 7/2/14.
//  2014, SMART Health IT.
//


/**
 *  Abstract superclass for all FHIR resource models.
 */
public class FHIRResource: FHIRElement
{
	/// A specific version id, if the instance was created using `vread`.
	public var _versionId: String?
	
	/// If this instance lives on a server, this property represents that server.
	public var _server: FHIRServer? {
		get {
			return __server ?? owningResource()?._server
		}
		set {
			__server = newValue
		}
	}
	var __server: FHIRServer?
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let exist: AnyObject = json?["resourceType"] {
			presentKeys.insert("resourceType")
			
			if let val = exist as? String {
				if val != self.dynamicType.resourceName {
					errors.append(FHIRJSONError(wantsType: self.dynamicType, hasType: val))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "id", wants: String.self, has: exist.dynamicType))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	/** Serialize the receiver to JSON. */
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		json["resourceType"] = self.dynamicType.resourceName
		
		return json
	}
	
	
	// MARK: - Printable
	
	override public var description: String {
		let nilstr = "nil"
		return "<\(self.dynamicType.resourceName)> \(id ?? nilstr) on \(__server?.baseURL ?? nilstr)"
	}
}

