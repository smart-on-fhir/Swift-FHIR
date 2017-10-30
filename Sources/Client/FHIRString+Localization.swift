//
//  FHIRString+Localization.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 1/3/17.
//  2017, SMART Health IT.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


extension FHIRString {
	
	/// The string, localized in the device language; uses `Locale.current` with `localized(in: Locale)`
	public var localized: String {
		return localized(in: Locale.current).string
	}
	
	/**
	Returns the string localized in the given locale, if available, self.string otherwise.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The name of the locale for which to retrieve the localization, e.g. "fr" or "de-CH"
	- returns:          A String in the given locale, untranslated otherwise
	*/
	public func localized(in locale: String) -> String {
		return localized(in: Locale(identifier: locale)).string
	}
	
	/**
	Returns the string localized in the given locale, if available, self otherwise.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The locale for which to retrieve the localization
	- returns:          The FHIRString in the given locale, untranslated otherwise
	*/
	public func localized(in locale: Locale) -> FHIRString {
		if let translations = extensions(forURI: "http://hl7.org/fhir/StructureDefinition/translation") {
			
			// check for exact locale matches
			for translation in translations {
				if let langCode = translation.extensions(forURI: "lang")?.first?.valueCode?.string, Locale(identifier: langCode) == locale {
					if let localized = translation.extensions(forURI: "content")?.first?.valueString {
						return localized
					}
				}
			}
			
			// no exact match, only test for languageCode this time
			for translation in translations {
				if let langCode = translation.extensions(forURI: "lang")?.first?.valueCode?.string, Locale(identifier: langCode).languageCode == locale.languageCode {
					if let localized = translation.extensions(forURI: "content")?.first?.valueString {
						return localized
					}
				}
			}
		}
		return self
	}
}

