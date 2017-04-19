//
//  Parameters.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Parameters) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		parameter = createInstances(of: ParametersParameter.self, for: "parameter", in: json, context: &instCtx, owner: self) ?? parameter
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if nil == name && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		part = createInstances(of: ParametersParameter.self, for: "part", in: json, context: &instCtx, owner: self) ?? part
		resource = createInstance(type: Resource.self, for: "resource", in: json, context: &instCtx, owner: self) ?? resource
		valueAddress = createInstance(type: Address.self, for: "valueAddress", in: json, context: &instCtx, owner: self) ?? valueAddress
		valueAge = createInstance(type: Age.self, for: "valueAge", in: json, context: &instCtx, owner: self) ?? valueAge
		valueAnnotation = createInstance(type: Annotation.self, for: "valueAnnotation", in: json, context: &instCtx, owner: self) ?? valueAnnotation
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueContactPoint = createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, context: &instCtx, owner: self) ?? valueContactPoint
		valueCount = createInstance(type: Count.self, for: "valueCount", in: json, context: &instCtx, owner: self) ?? valueCount
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueDistance = createInstance(type: Distance.self, for: "valueDistance", in: json, context: &instCtx, owner: self) ?? valueDistance
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valueHumanName = createInstance(type: HumanName.self, for: "valueHumanName", in: json, context: &instCtx, owner: self) ?? valueHumanName
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueIdentifier = createInstance(type: Identifier.self, for: "valueIdentifier", in: json, context: &instCtx, owner: self) ?? valueIdentifier
		valueInstant = createInstance(type: Instant.self, for: "valueInstant", in: json, context: &instCtx, owner: self) ?? valueInstant
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueMarkdown = createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, context: &instCtx, owner: self) ?? valueMarkdown
		valueMeta = createInstance(type: Meta.self, for: "valueMeta", in: json, context: &instCtx, owner: self) ?? valueMeta
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueOid = createInstance(type: FHIRURL.self, for: "valueOid", in: json, context: &instCtx, owner: self) ?? valueOid
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valuePositiveInt = createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, context: &instCtx, owner: self) ?? valuePositiveInt
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueSignature = createInstance(type: Signature.self, for: "valueSignature", in: json, context: &instCtx, owner: self) ?? valueSignature
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueTiming = createInstance(type: Timing.self, for: "valueTiming", in: json, context: &instCtx, owner: self) ?? valueTiming
		valueUnsignedInt = createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, context: &instCtx, owner: self) ?? valueUnsignedInt
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
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

