//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR {{ info.version }} on {{ info.date }}.
//  {{ info.year }}, SMART Health IT.
//


/**
Extension to FHIRAbstractBase to be able to instantiate by class name.
*/
extension FHIRAbstractBase {
	
	public class func factory<T: FHIRAbstractBase>(_ typeName: String, json: FHIRJSON, owner: FHIRAbstractBase?, type: T.Type, context: inout FHIRInstantiationContext) -> T {
		switch typeName {
		{%- for klass in classes %}{% if klass.resource_type %}
			case "{{ klass.resource_type }}":
				if let res = {{ klass.resource_type }}(json: json, owner: owner, context: &context) as? T { return res }
		{%- endif %}{% endfor %}
			default:
				break
		}
		return T(json: json, owner: owner, context: &context)
	}
}

