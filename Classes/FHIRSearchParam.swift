//
//  FHIRSearchParam.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/10/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//


/*!
 *  Instances of this class are used to construct parameters for a FHIR search.
 */
class FHIRSearchParam
{
	/*! The name of the search parameter. */
	var subject: String?
	
	/*! The first search parameter must define a profile type to which the search is applied. */
	var profileType: String?
	
	/*! The preceding search param instance in a chain. */
	var previous: FHIRSearchParam? {
	didSet(oldPrev) {
		if previous && self !== previous!.next {
			previous!.next = self
		}
		if oldPrev !== previous && self === oldPrev?.next {
			oldPrev!.next = nil
		}
	}
	}
	
	/*! The next search param in a chain. */
	weak var next: FHIRSearchParam? {
	didSet(oldNext) {
		if next && self !== next!.previous {
			next!.previous = self
		}
		if oldNext !== next && self === oldNext?.previous {
			oldNext!.previous = nil
		}
	}
	}
	
	/*! On which profiles the receiver's subject is supported; can be used for validation. */
	var supportedProfiles: [String]?
	
	
	/*! The param's value is a string.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#string
	 */
	var string: String?
	
	/*! The param's value is a token. Can be modified with `tokenAsText`.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#token
	 */
	var token: String?
	
	/*! The param describes a numerical value.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#number
	 */
	var number: Float?
	
	/*! The param's value is a date string.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#date
	 */
	var date: String?
	
	/*! The param describes a numerical quantity.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#quantity
	 */
	var quantity: String?
	
	/*! The param's value is a reference.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#reference
	 */
	var reference: String?
	
	/*! A composite search parameter.
	 *  http://www.hl7.org/implement/standards/fhir/search.html#combining
	 */
	var composite: [String: String]?
	
	
	// Modifiers: http://www.hl7.org/implement/standards/fhir/search.html#modifiers
	
	/*! If `true` we're looking for a missing parameter. */
	var missing: Bool?
	
	/*! Only needed for strings; if `true` the match must be exact. */
	var stringExact = false
	
	/*! Only needed for tokens; if `true` the token should be queried like text. */
	var tokenAsText = false
	
	/*! Only needed for references: the type of the reference. */
	var referenceType: String?
	
	
	init(subject: String?) {
		self.subject = subject
	}
	
	convenience init(profileType: String) {
		self.init(subject: nil)
		self.profileType = profileType
	}
	
	convenience init(subject: String, missing: Bool) {
		self.init(subject: subject)
		self.missing = missing
	}
	
	
	convenience init(subject: String, token: String) {
		self.init(subject: subject)
		self.token = token
	}
	
	convenience init(subject: String, token: String, asText: Bool) {
		self.init(subject: subject, token: token)
		tokenAsText = asText
	}
	
	
	convenience init(subject: String, string: String) {
		self.init(subject: subject)
		self.string = string
	}
	
	convenience init(subject: String, string: String, exact: Bool) {
		self.init(subject: subject, string: string)
		stringExact = exact
	}
	
	
	convenience init(subject: String, number: Float) {
		self.init(subject: subject)
		self.number = number
	}
	
	
	convenience init(subject: String, date: String) {
		self.init(subject: subject)
		self.date = date
	}
	
	
	convenience init(subject: String, quantity: String) {
		self.init(subject: subject)
		self.quantity = quantity
	}
	
	
	convenience init(subject: String, reference: String) {
		self.init(subject: subject)
		self.reference = reference
	}
	
	convenience init(subject: String, reference: String, type: String) {
		self.init(subject: subject, reference: reference)
		profileType = type
	}
	
	
	convenience init(subject: String, composite: [String: String]) {
		self.init(subject: subject)
		self.composite = composite
	}
	
	
	// MARK: Construction
	
	func asParam() -> String {
		if missing {
			return "\(subject):missing=" + (missing! ? "true" : "false")
		}
		return "\(subject)=\(paramValue())"
	}
	
	func paramValue() -> String {
		if string {
			return string!
		}
		if token {
			if tokenAsText {
				return "\(token!):text"
			}
			return token!
		}
		if number {
			return number!.description
		}
		if date {
			return date!
		}
		if quantity {
			return quantity!
		}
		if reference {
			return reference!
		}
		return ""
	}
	
	/*!
	 *  Construct the search param string, if the receiver is part of a chain UP TO the receiver but NOT beyond.
	 *
	 *  Use the `last` method to get the last param of a chain, then construct the parameter string of the whole chain.
	 */
	func construct() -> String {
		var path = ""
		if previous {
			if subject {
				let prev = previous!.construct()
				let sep = previous!.previous ? "&" : "?"
				path = prev + "\(sep)\(asParam())"
			}
			else {
				fatalError("Need a subject to construct a search URL for the 2nd or later argument")
			}
		}
		else if profileType {
			path = profileType!
		}
		else {
			fatalError("The first search parameter needs to have \"profileType\" set")
		}
		
		return path
	}
	
	
	// MARK: Chaining
	
	func last() -> FHIRSearchParam {
		if next {
			return next!.last()
		}
		return self
	}
}

