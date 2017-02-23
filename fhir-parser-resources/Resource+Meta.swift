//
//  Resource+Meta.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 2/22/17.
//  2017, SMART Platforms.
//


extension Resource {
	
	/// Inspects meta.tag and returns true if it finds the "SUBSETTED" tag, which should be present if `_summary=true` was requested.
	public var _isSummary: Bool {
		if let tags = meta?.tag {
			for tag in tags {
				if "http://hl7.org/fhir/v3/ObservationValue" == tag.system?.absoluteString && "SUBSETTED" == tag.code?.string {
					return true
				}
			}
		}
		return false
	}
}

