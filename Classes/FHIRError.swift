//
//  FHIRError.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/24/15.
//  2015, SMART Platforms.
//


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

