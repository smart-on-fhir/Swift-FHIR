//
//  Parameters.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Parameters) on 2016-12-13.
//  2016, SMART Health IT.
//

import Foundation


/**
Operation Request or Response.

This special resource type is used to represent an operation request and response (operations.html). It has no other
use, and there is no RESTful endpoint associated with it.
*/
open class Parameters: Resource {
	override open class var resourceType: String {
		get { return "Parameters" }
	}
	
	/// Operation Parameter.
	public var parameter: [ParametersParameter]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		parameter = try createInstances(of: ParametersParameter.self, for: "parameter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameter
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
	}
}


/**
Operation Parameter.

A parameter passed to or received from the operation.
*/
open class ParametersParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ParametersParameter" }
	}
	
	/// Name from the definition.
	public var name: FHIRString?
	
	/// Named part of a multi-part parameter.
	public var part: [ParametersParameter]?
	
	/// If parameter is a whole resource.
	public var resource: Resource?
	
	/// If parameter is a data type.
	public var valueAddress: Address?
	
	/// If parameter is a data type.
	public var valueAge: Age?
	
	/// If parameter is a data type.
	public var valueAnnotation: Annotation?
	
	/// If parameter is a data type.
	public var valueAttachment: Attachment?
	
	/// If parameter is a data type.
	public var valueBase64Binary: Base64Binary?
	
	/// If parameter is a data type.
	public var valueBoolean: FHIRBool?
	
	/// If parameter is a data type.
	public var valueCode: FHIRString?
	
	/// If parameter is a data type.
	public var valueCodeableConcept: CodeableConcept?
	
	/// If parameter is a data type.
	public var valueCoding: Coding?
	
	/// If parameter is a data type.
	public var valueContactPoint: ContactPoint?
	
	/// If parameter is a data type.
	public var valueCount: Count?
	
	/// If parameter is a data type.
	public var valueDate: FHIRDate?
	
	/// If parameter is a data type.
	public var valueDateTime: DateTime?
	
	/// If parameter is a data type.
	public var valueDecimal: FHIRDecimal?
	
	/// If parameter is a data type.
	public var valueDistance: Distance?
	
	/// If parameter is a data type.
	public var valueDuration: Duration?
	
	/// If parameter is a data type.
	public var valueHumanName: HumanName?
	
	/// If parameter is a data type.
	public var valueId: FHIRString?
	
	/// If parameter is a data type.
	public var valueIdentifier: Identifier?
	
	/// If parameter is a data type.
	public var valueInstant: Instant?
	
	/// If parameter is a data type.
	public var valueInteger: FHIRInteger?
	
	/// If parameter is a data type.
	public var valueMarkdown: FHIRString?
	
	/// If parameter is a data type.
	public var valueMeta: Meta?
	
	/// If parameter is a data type.
	public var valueMoney: Money?
	
	/// If parameter is a data type.
	public var valueOid: FHIRURL?
	
	/// If parameter is a data type.
	public var valuePeriod: Period?
	
	/// If parameter is a data type.
	public var valuePositiveInt: FHIRInteger?
	
	/// If parameter is a data type.
	public var valueQuantity: Quantity?
	
	/// If parameter is a data type.
	public var valueRange: Range?
	
	/// If parameter is a data type.
	public var valueRatio: Ratio?
	
	/// If parameter is a data type.
	public var valueReference: Reference?
	
	/// If parameter is a data type.
	public var valueSampledData: SampledData?
	
	/// If parameter is a data type.
	public var valueSignature: Signature?
	
	/// If parameter is a data type.
	public var valueString: FHIRString?
	
	/// If parameter is a data type.
	public var valueTime: FHIRTime?
	
	/// If parameter is a data type.
	public var valueTiming: Timing?
	
	/// If parameter is a data type.
	public var valueUnsignedInt: FHIRInteger?
	
	/// If parameter is a data type.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: FHIRString) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		part = try createInstances(of: ParametersParameter.self, for: "part", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? part
		resource = try createInstance(type: Resource.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		valueAddress = try createInstance(type: Address.self, for: "valueAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAddress
		valueAge = try createInstance(type: Age.self, for: "valueAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAge
		valueAnnotation = try createInstance(type: Annotation.self, for: "valueAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAnnotation
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueBase64Binary = try createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBase64Binary
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueContactPoint = try createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueContactPoint
		valueCount = try createInstance(type: Count.self, for: "valueCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCount
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueDistance = try createInstance(type: Distance.self, for: "valueDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDistance
		valueDuration = try createInstance(type: Duration.self, for: "valueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDuration
		valueHumanName = try createInstance(type: HumanName.self, for: "valueHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueHumanName
		valueId = try createInstance(type: FHIRString.self, for: "valueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueId
		valueIdentifier = try createInstance(type: Identifier.self, for: "valueIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueIdentifier
		valueInstant = try createInstance(type: Instant.self, for: "valueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInstant
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueMarkdown = try createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMarkdown
		valueMeta = try createInstance(type: Meta.self, for: "valueMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMeta
		valueMoney = try createInstance(type: Money.self, for: "valueMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMoney
		valueOid = try createInstance(type: FHIRURL.self, for: "valueOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueOid
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valuePositiveInt = try createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePositiveInt
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueSignature = try createInstance(type: Signature.self, for: "valueSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSignature
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		valueTiming = try createInstance(type: Timing.self, for: "valueTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTiming
		valueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUnsignedInt
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "part", using: self.part, errors: &errors)
		self.resource?.decorate(json: &json, withKey: "resource", errors: &errors)
		self.valueAddress?.decorate(json: &json, withKey: "valueAddress", errors: &errors)
		self.valueAge?.decorate(json: &json, withKey: "valueAge", errors: &errors)
		self.valueAnnotation?.decorate(json: &json, withKey: "valueAnnotation", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMeta?.decorate(json: &json, withKey: "valueMeta", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
	}
}

