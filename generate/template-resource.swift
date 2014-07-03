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
class {{ klass.className }}: {{ klass.superclass|default('FHIRElement') }} {
{%- for prop in klass.properties %}
	
	/*! {{ prop.short }} */
	var {{ prop.name }}: {{ prop.className }}{{ prop.modArray }}{{ prop.modOptional }}
{%- endfor %}

{%- if klass.nonoptional|length > 0 %}
	
	init(
	{%- for nonop in klass.nonoptional -%}
		{{ nonop.name }}: {{ nonop.className }}
		{%- if not loop.last %}, {% endif -%}
	{%- endfor -%}
	) {
		
	}
{%- endif %}
}
{% endfor %}
