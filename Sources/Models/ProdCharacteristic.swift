//
//  ProdCharacteristic.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ProdCharacteristic) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The marketing status describes the date when a medicinal product is actually put on the market or the date as of which
it is no longer available.
*/
open class ProdCharacteristic: BackboneElement {
	override open class var resourceType: String {
		get { return "ProdCharacteristic" }
	}
	
	/// Where applicable, the color can be specified An appropriate controlled vocabulary shall be used The term and the
	/// term identifier shall be used.
	public var color: [FHIRString]?
	
	/// Where applicable, the depth can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used.
	public var depth: Quantity?
	
	/// Where applicable, the external diameter can be specified using a numerical value and its unit of measurement The
	/// unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and
	/// the symbol identifier shall be used.
	public var externalDiameter: Quantity?
	
	/// Where applicable, the height can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used.
	public var height: Quantity?
	
	/// Where applicable, the image can be provided The format of the image attachment shall be specified by regional
	/// implementations.
	public var image: [Attachment]?
	
	/// Where applicable, the imprint can be specified as text.
	public var imprint: [FHIRString]?
	
	/// Where applicable, the nominal volume can be specified using a numerical value and its unit of measurement The
	/// unit of measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and
	/// the symbol identifier shall be used.
	public var nominalVolume: Quantity?
	
	/// Where applicable, the scoring can be specified An appropriate controlled vocabulary shall be used The term and
	/// the term identifier shall be used.
	public var scoring: CodeableConcept?
	
	/// Where applicable, the shape can be specified An appropriate controlled vocabulary shall be used The term and the
	/// term identifier shall be used.
	public var shape: FHIRString?
	
	/// Where applicable, the weight can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used.
	public var weight: Quantity?
	
	/// Where applicable, the width can be specified using a numerical value and its unit of measurement The unit of
	/// measurement shall be specified in accordance with ISO 11240 and the resulting terminology The symbol and the
	/// symbol identifier shall be used.
	public var width: Quantity?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		color = createInstances(of: FHIRString.self, for: "color", in: json, context: &instCtx, owner: self) ?? color
		depth = createInstance(type: Quantity.self, for: "depth", in: json, context: &instCtx, owner: self) ?? depth
		externalDiameter = createInstance(type: Quantity.self, for: "externalDiameter", in: json, context: &instCtx, owner: self) ?? externalDiameter
		height = createInstance(type: Quantity.self, for: "height", in: json, context: &instCtx, owner: self) ?? height
		image = createInstances(of: Attachment.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		imprint = createInstances(of: FHIRString.self, for: "imprint", in: json, context: &instCtx, owner: self) ?? imprint
		nominalVolume = createInstance(type: Quantity.self, for: "nominalVolume", in: json, context: &instCtx, owner: self) ?? nominalVolume
		scoring = createInstance(type: CodeableConcept.self, for: "scoring", in: json, context: &instCtx, owner: self) ?? scoring
		shape = createInstance(type: FHIRString.self, for: "shape", in: json, context: &instCtx, owner: self) ?? shape
		weight = createInstance(type: Quantity.self, for: "weight", in: json, context: &instCtx, owner: self) ?? weight
		width = createInstance(type: Quantity.self, for: "width", in: json, context: &instCtx, owner: self) ?? width
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "color", using: self.color, errors: &errors)
		self.depth?.decorate(json: &json, withKey: "depth", errors: &errors)
		self.externalDiameter?.decorate(json: &json, withKey: "externalDiameter", errors: &errors)
		self.height?.decorate(json: &json, withKey: "height", errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		arrayDecorate(json: &json, withKey: "imprint", using: self.imprint, errors: &errors)
		self.nominalVolume?.decorate(json: &json, withKey: "nominalVolume", errors: &errors)
		self.scoring?.decorate(json: &json, withKey: "scoring", errors: &errors)
		self.shape?.decorate(json: &json, withKey: "shape", errors: &errors)
		self.weight?.decorate(json: &json, withKey: "weight", errors: &errors)
		self.width?.decorate(json: &json, withKey: "width", errors: &errors)
	}
}

