//
//  Extension.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Extension) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Optional Extensions Element.

Optional Extensions Element - found in all resources.
*/
open class Extension: Element {
	override open class var resourceType: String {
		get { return "Extension" }
	}
	
	/// identifies the meaning of the extension.
	public var url: FHIRURL?
	
	/// Value of extension.
	public var valueAddress: Address?
	
	/// Value of extension.
	public var valueAge: Age?
	
	/// Value of extension.
	public var valueAnnotation: Annotation?
	
	/// Value of extension.
	public var valueAttachment: Attachment?
	
	/// Value of extension.
	public var valueBase64Binary: Base64Binary?
	
	/// Value of extension.
	public var valueBoolean: FHIRBool?
	
	/// Value of extension.
	public var valueCode: FHIRString?
	
	/// Value of extension.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of extension.
	public var valueCoding: Coding?
	
	/// Value of extension.
	public var valueContactPoint: ContactPoint?
	
	/// Value of extension.
	public var valueCount: Count?
	
	/// Value of extension.
	public var valueDate: FHIRDate?
	
	/// Value of extension.
	public var valueDateTime: DateTime?
	
	/// Value of extension.
	public var valueDecimal: FHIRDecimal?
	
	/// Value of extension.
	public var valueDistance: Distance?
	
	/// Value of extension.
	public var valueDuration: Duration?
	
	/// Value of extension.
	public var valueHumanName: HumanName?
	
	/// Value of extension.
	public var valueId: FHIRString?
	
	/// Value of extension.
	public var valueIdentifier: Identifier?
	
	/// Value of extension.
	public var valueInstant: Instant?
	
	/// Value of extension.
	public var valueInteger: FHIRInteger?
	
	/// Value of extension.
	public var valueMarkdown: FHIRString?
	
	/// Value of extension.
	public var valueMeta: Meta?
	
	/// Value of extension.
	public var valueMoney: Money?
	
	/// Value of extension.
	public var valueOid: FHIRURL?
	
	/// Value of extension.
	public var valuePeriod: Period?
	
	/// Value of extension.
	public var valuePositiveInt: FHIRInteger?
	
	/// Value of extension.
	public var valueQuantity: Quantity?
	
	/// Value of extension.
	public var valueRange: Range?
	
	/// Value of extension.
	public var valueRatio: Ratio?
	
	/// Value of extension.
	public var valueReference: Reference?
	
	/// Value of extension.
	public var valueSampledData: SampledData?
	
	/// Value of extension.
	public var valueSignature: Signature?
	
	/// Value of extension.
	public var valueString: FHIRString?
	
	/// Value of extension.
	public var valueTime: FHIRTime?
	
	/// Value of extension.
	public var valueTiming: Timing?
	
	/// Value of extension.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Value of extension.
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: FHIRURL) {
		self.init()
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		if nil == url && !presentKeys.contains("url") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "url"))
		}
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
		
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
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

