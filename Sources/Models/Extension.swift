//
//  Extension.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Extension) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var url: URL?
	
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
	public var valueBoolean: Bool?
	
	/// Value of extension.
	public var valueCode: String?
	
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
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of extension.
	public var valueDistance: Distance?
	
	/// Value of extension.
	public var valueDuration: Duration?
	
	/// Value of extension.
	public var valueHumanName: HumanName?
	
	/// Value of extension.
	public var valueId: String?
	
	/// Value of extension.
	public var valueIdentifier: Identifier?
	
	/// Value of extension.
	public var valueInstant: Instant?
	
	/// Value of extension.
	public var valueInteger: Int?
	
	/// Value of extension.
	public var valueMarkdown: String?
	
	/// Value of extension.
	public var valueMeta: Meta?
	
	/// Value of extension.
	public var valueMoney: Money?
	
	/// Value of extension.
	public var valueOid: String?
	
	/// Value of extension.
	public var valuePeriod: Period?
	
	/// Value of extension.
	public var valuePositiveInt: UInt?
	
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
	public var valueString: String?
	
	/// Value of extension.
	public var valueTime: FHIRTime?
	
	/// Value of extension.
	public var valueTiming: Timing?
	
	/// Value of extension.
	public var valueUnsignedInt: UInt?
	
	/// Value of extension.
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: URL) {
		self.init()
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "url"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

