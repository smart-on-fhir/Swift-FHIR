//
//  {{ info.mainClass }}.swift
//  SMART-on-FHIR
//
//  Generated from FHIR {{ info.version }} on {{ info.date }}.
//  Copyright (c) {{ info.year }} SMART Platforms. All rights reserved.
//

import Foundation
{% for klass in classes %}

/*!
 *  {{ klass.short|replace("\n", "\n *  ") }}.
{%- if klass.formal %}
 *
 *  {{ klass.formal|replace("\n", "\n *  ") }}
{%- endif %}
 */
class {{ klass.className }}: {{ klass.superclass|default('FHIRElement') }}
{
{%- if klass.resourceName %}
	override var resourceName: String {
		get { return "{{ klass.resourceName }}" }
	}
{% endif -%}
	
{%- for prop in klass.properties %}	
	/*! {{ prop.short }} */
	var {{ prop.name }}: {{ prop.className }}{% if prop.isArray %}[]{% endif %}?
{% endfor -%}
{% if klass.nonoptional|length > 0 %}	
	convenience init(
	{%- for nonop in klass.nonoptional -%}
		{{ nonop.name }}: {{ nonop.className }}{% if nonop.isArray %}[]{% endif %}?
		{%- if not loop.last %}, {% endif -%}
	{%- endfor -%}
	) {
		self.init(json: nil)
	{%- for nonop in klass.nonoptional %}
		if {{ nonop.name }} {
			self.{{ nonop.name }} = {{ nonop.name }}
		}
	{%- endfor %}
	}
{%- endif %}	
	
	init(json: NSDictionary?) {
		if let js = json {
		{%- for prop in klass.properties %}
			if let val = js["{{ prop.name }}"] as? {% if prop.isArray %}Array<{% endif %}{{ prop.jsonClass }}{% if prop.isArray %}>{% endif %} {
				{%- if prop.isArray %}
				{%- if "String" == prop.className %}
				self.{{ prop.name }} = val
				{%- else %}
				self.{{ prop.name }} = {{ prop.className }}.from(val){% if "NS" != prop.className[:2] %} as? {{ prop.className }}[]{% endif %}
				{%- endif %}
				{%- else %}{% if prop.className == prop.jsonClass %}
				self.{{ prop.name }} = val
				{%- else %}{% if "Int" == prop.jsonClass %}
				self.{{ prop.name }} = (1 == val)
				{%- else %}
				self.{{ prop.name }} = {{ prop.className }}({% if "Double" != prop.className %}json: {% endif %}val)
				{%- endif %}{% endif %}{% endif %}
			}
		{%- endfor %}
		}
		super.init(json: json)
	}
}
{% endfor %}
