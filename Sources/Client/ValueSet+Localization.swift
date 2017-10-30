//
//  ValueSet+Localization.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 02.02.17.
//  2017, SMART Health IT.
//


import Foundation
#if !NO_MODEL_IMPORT
	import Models
#endif


extension ValueSetComposeIncludeConceptDesignation {
	
	/**
	Inspects its `language` property and returns a FHIRstring localized in the desired locale, if one is found, nil otherwise.
	
	If `strict` is false, the method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a
	localization is only available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The desired locale
	- parameter strict: Whether the locale must match language and region (false by default)
	- returns: A localized string, or nil if none is matching
	*/
	public func localization(for locale: Locale, strict: Bool = false) -> FHIRString? {
		if let lang = language?.string, Locale(identifier: lang) == locale, let localized = value {
			return localized
		}
		if !strict, let lang = language?.string, Locale(identifier: lang).languageCode == locale.languageCode, let localized = value {
			return localized
		}
		return nil
	}
}

#if swift(>=3.1)
extension Array where Element == ValueSetComposeIncludeConceptDesignation {
	
	/**
	Inspects all `language` properties of the elements in the array and returns a FHIRstring localized in the desired locale, if one is
	found, nil otherwise.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	The method doesn't use `ValueSetComposeIncludeConceptDesignation.localization(for:strict:)` for a slightly more effecient full
	implementation.
	
	- parameter locale: The desired locale
	- returns: A localized string, or nil if none is matching
	*/
	public func localization(for locale: Locale) -> FHIRString? {
		for translation in self {
			if let lang = translation.language?.string, Locale(identifier: lang) == locale, let localized = translation.value {
				return localized
			}
		}
		
		// no exact match; test for languageCode only
		for translation in self {
			if let lang = translation.language?.string, Locale(identifier: lang).languageCode == locale.languageCode, let localized = translation.value {
				return localized
			}
		}
		return nil
	}
}
#endif


extension ValueSetComposeIncludeConcept {
	
	/// The `display` string, localized in the device language; uses `Locale.current` with `localized(in: Locale)`
	public var display_localized: String? {
		return display_localized(in: Locale.current)?.string
	}
	
	/**
	Returns the `display.string` value, localized in the given locale if available, `self.display.string` otherwise.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The locale for which to retrieve the localization
	- returns:          A String in the given locale, untranslated otherwise
	*/
	public func display_localized(in locale: String) -> String? {
		return display_localized(in: Locale(identifier: locale))?.string
	}
	
	/**
	Returns the `display` value, localized in the given locale if available, `self.display` otherwise. This is achieved by first looking at
	the `designation` property and querying it for a designation for the desired locale. If none is found, the standard localization
	extension is queried (look at `FHIRString.localized()`), ultimately falling back to the `display` value.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The locale for which to retrieve the localization
	- returns:          The FHIRString in the given locale, untranslated otherwise
	*/
	public func display_localized(in locale: Locale) -> FHIRString? {
		if let translations = designation {
			#if swift(>=3.1)
			if let localized = translations.localization(for: locale) {
				return localized
			}
			#else
			for translation in translations {
				if let localized = translation.localization(for: locale, strict: true) {
					return localized
				}
			}
			
			// no exact match; test for languageCode only
			for translation in translations {
				if let localized = translation.localization(for: locale, strict: false) {
					return localized
				}
			}
			#endif
		}
		return display?.localized(in: locale)
	}
}


extension ValueSetExpansionContains {
	
	/// The `display` string, localized in the device language; uses `Locale.current` with `localized(in: Locale)`
	public var display_localized: String? {
		return display_localized(in: Locale.current)?.string
	}
	
	/**
	Returns the `display.string` value, localized in the given locale if available, `self.display.string` otherwise.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The locale for which to retrieve the localization
	- returns:          A String in the given locale, untranslated otherwise
	*/
	public func display_localized(in locale: String) -> String? {
		return display_localized(in: Locale(identifier: locale))?.string
	}
	
	/**
	Returns the `display` value, localized in the given locale if available, `self.display` otherwise. This is achieved by first looking at
	the `designation` property and querying it for a designation for the desired locale. If none is found, the standard localization
	extension is queried (look at `FHIRString.localized()`), ultimately falling back to the `display` value.
	
	The method will fall back to language code only if you provide a language and region code (e.g. "en-US") but a localization is only
	available for the language code (e.g. "en") or a different region (e.g. "en-AU").
	
	- parameter locale: The locale for which to retrieve the localization
	- returns:          The FHIRString in the given locale, untranslated otherwise
	*/
	public func display_localized(in locale: Locale) -> FHIRString? {
		if let translations = designation {
			#if swift(>=3.1)
			if let localized = translations.localization(for: locale) {
				return localized
			}
			#else
			for translation in translations {
				if let localized = translation.localization(for: locale, strict: true) {
					return localized
				}
			}
			
			// no exact match; test for languageCode only
			for translation in translations {
				if let localized = translation.localization(for: locale, strict: false) {
					return localized
				}
			}
			#endif
		}
		return display?.localized(in: locale)
	}
}

