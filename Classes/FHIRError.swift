//
//  FHIRError.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/24/15.
//  2015, SMART Platforms.
//


/**
Our FHIR errors.
*/
public enum FHIRError: ErrorType, CustomStringConvertible {
	case Error(String)
	
	case ResourceLocationUnknown
	case ResourceWithoutServer
	case ResourceWithoutId
	case ResourceAlreadyHasId
	case ResourceFailedToInstantiate(String)
	
	case RequestCannotPrepareBody
	case RequestNotSent(String)
	case NoRequestHandlerAvailable(String)
	case NoResponseReceived
	case RequestError(Int, String)
	
	case OperationConfigurationError(String)
	case OperationInputParameterMissing(String)
	case OperationNotSupported(String)
	
	case SearchResourceTypeNotDefined
	
	/// JSON parsing failed for reason in 1st argument, full JSON string is 2nd argument.
	case JSONParsingError(String, String)
	
	public var description: String {
		switch self {
		case .Error(let message):
			return message
		
		case .ResourceLocationUnknown:
			return "The location of the resource is not known".localized
		case .ResourceWithoutServer:
			return "The resource does not have a server instance assigned".localized
		case .ResourceWithoutId:
			return "The resource does not have an id, cannot proceed".localized
		case .ResourceAlreadyHasId:
			return "The resource already have an id, cannot proceed".localized
		case .ResourceFailedToInstantiate(let path):
			return "\("Failed to instantiate resource when trying to read from".localized): «\(path)»"
		
		case .RequestCannotPrepareBody:
			return "`FHIRServerRequestHandler` cannot prepare request body data".localized
		case .RequestNotSent(let reason):
			return "\("Request not sent".localized): \(reason)"
		case .NoRequestHandlerAvailable(let type):
			return "\("No request handler is available for requests of type".localized) “\(type)”"
		case .NoResponseReceived:
			return "No response received".localized
		case .RequestError(let status, let message):
			return "Error \(status): \(message)"
		
		case .OperationConfigurationError(let message):
			return message
		case .OperationInputParameterMissing(let name):
			return "Operation is missing input parameter “\(name)”"
		case .OperationNotSupported(let name):
			return "\("Operation is not supported".localized): \(name)"
			
		case .SearchResourceTypeNotDefined:
			return "Cannot find the resource type against which to run the search".localized
		
		case .JSONParsingError(let reason, let raw):
			return "\("Failed to parse JSON".localized): \(reason)\n\(raw)"
		}
	}
}


/**
Errors thrown during JSON parsing.
*/
public struct FHIRJSONError: ErrorType, CustomStringConvertible {
	
	/// The error type.
	public var code: FHIRJSONErrorType
	
	/// The JSON property key generating the error.
	public var key: String
	
	/// The type expected for values of this key.
	public var wants: Any.Type?
	
	/// The type received for this key.
	public var has: Any.Type?
	
	/// The resource type name received.
	public var hasType: String?
	
	
	init(code: FHIRJSONErrorType, key: String) {
		self.code = code
		self.key = key
	}
	
	public init(key: String) {
		self.init(code: .MissingKey, key: key)
	}
	
	public init(key: String, has: Any.Type) {
		self.init(code: .UnknownKey, key: key)
		self.has = has
	}
	
	public init(key: String, wants: Any.Type, has: Any.Type) {
		self.init(code: .WrongValueTypeForKey, key: key)
		self.wants = wants
		self.has = has
	}
	
	public init(wantsType: Any.Type?, hasType: String) {
		self.init(code: .WrongResourceType, key: "resourceType")
		self.wants = wantsType
		self.hasType = hasType
	}
	
	public var description: String {
		let nul = Any.self
		switch code {
		case .MissingKey:
			return "Expecting nonoptional JSON property “\(key)” but it is missing"
		case .UnknownKey:
			return "Superfluous JSON property “\(key)” of type \(has ?? nul), ignoring"
		case .WrongValueTypeForKey:
			return "Expecting JSON property “\(key)” to be `\(wants ?? nul)`, but is \(has ?? nul)"
		case .WrongResourceType:
			 return "Expecting resource type “\(wants ?? nul)” but received “\(hasType ?? "unknown")”"
		}
	}
}

public enum FHIRJSONErrorType: Int {
	case MissingKey
	case UnknownKey
	case WrongValueTypeForKey
	case WrongResourceType
}

