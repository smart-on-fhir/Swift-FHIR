//
//  FHIRCanonical.swift
//  SwiftFHIR
//
//  Created by Dave Carlson on 05.06.2019.
//  2019, Dave Carlson
//

import Foundation


/**
Struct to parse and hold the URL, version and fragment for FHIR canonical type. Extensions may contribute additional convenience functions. Use of the '|' version separator is not valid for general URI syntax, so it must be removed before saving 'url' part of the reference.

The canonical URL serves as a stable logical identifier for the resource, and is the preferred way to reference a conformance or knowledge resource. The canonical URL SHOULD also resolve to the location where the master copy of the artifact is found, though it is not always possible to arrange this. The canonical URL SHALL NOT refer to some other resource (though it may resolve to a different version of the same resource).

Canonical URIs may include a fragement, which occurs following the version. Thus, we must parse and retain the fragement, if present, for use when resolving references, e.g. from the FHIR specification:
		<valueSet value="http://fhir.acme.com/Questionnaire/example|1.0#vs1"/>
	or, for contained resources:
		<answerValueSet value="#vs1"/>
*/
public struct FHIRCanonical: FHIRPrimitive, CustomStringConvertible {
	
	/// The actual url, optional if only fragment is included.
	public var url: URL?
	
	/// An optional version suffix using '|' separator.
	public var version: String?
	
	/// An optional fragment suffix using '#' separator.
	public var fragment: String?
	
	/// An optional id of the element.
	public var id: String?
	
	/// The parent/owner of the receiver, if any. Used to dereference resources.
	public weak var _owner: FHIRAbstractBase?
	
	/// Optional extensions of the element.
	public var extension_fhir: [Extension]?
	
	/// Returns true if the string is the empty string.
	public var absoluteString: String? {
		return url?.absoluteString
	}
	
	
	/**
	Designated initializer.
	
	- parameter string: The URL represented by the receiver
	- parameter version: Optional version string
	- parameter fragment: Optional fragment string
	*/
	public init(_ url: URL, version: String? = nil, fragment: String? = nil) {
		self.url = url
		self.version = version
		self.fragment = fragment
	}
	
	/**
	Convenience initializer.
	
	- parameter string: The URI string represented by the receiver
	*/
	public init?(_ string: String) {
		let parts = string.components(separatedBy: "|")
		let uri = parts.count > 0 ? parts[0] : nil
		let version = parts.count > 1 ? parts[1] : nil
		
		guard let urlString = uri, let url = URL(string: urlString) else {
			return nil
		}
		self.init(url, version: version)
	}
	
	
	// MARK: - FHIRJSONType
	
	public typealias JSONType = String
	
	public init(json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) {
		let fragmentParts = json.components(separatedBy: "#")
		let urlParts = fragmentParts.count > 0 ? fragmentParts[0] : ""
		let fragment = fragmentParts.count > 1 ? fragmentParts[1] : nil
		
		let versionParts = urlParts.components(separatedBy: "|")
		let uri = versionParts.count > 0 ? versionParts[0] : nil
		let version = versionParts.count > 1 ? versionParts[1] : nil
		
		if let urlString = uri, let url = URL(string: urlString) {
			self.url = url
		}
		self.version = version
		self.fragment = fragment
		
		if self.url == nil, self.fragment == nil {
			context.addError(FHIRValidationError(key: "", problem: "“\(json)” is not a valid URI"))
			url = URL(string: "error")!	// empty string is invalid URL
		}
		_owner = owner
	}
	
	public func asJSON(errors: inout [FHIRValidationError]) -> JSONType {
		return self.description
	}
	
	
	// MARK: - CustomStringConvertible
	
	public var description: String {
		return (url?.absoluteString ?? "") + (version != nil ? "|\(version!)" : "") + (fragment != nil ? "#\(fragment!)" : "")
	}
}



