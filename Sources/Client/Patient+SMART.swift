//
//  Patient+SMART.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 07.09.16.
//  2016, SMART Health IT.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


extension Patient {
	
	/// Easy way to retrieve a string for the patient's name, with a preference for the "usual" use name.
	public var humanName: String? {
		guard let names = name else {
			return nil
		}
		var useName: HumanName?
		for name in names {
			if nil == useName || .usual == name.use {
				useName = name
			}
			else if let use = name.use, .usual == use || .official == use {
				useName = name
			}
		}
		return useName?.human
	}
	
	/// Uses the system's date formatter to format the birthdate as a short date.
	public var humanBirthDateShort: String? {
		guard let birthdate = birthDate else {
			return nil
		}
		let formatter = DateFormatter()
		formatter.dateStyle = .short
		formatter.timeStyle = .none
		return formatter.string(from: birthdate.nsDate)
	}
	
	/// Uses the system's date formatter to format the birthdate as a medium date.
	public var humanBirthDateMedium: String? {
		guard let birthdate = birthDate else {
			return nil
		}
		let formatter = DateFormatter()
		formatter.dateStyle = .medium
		formatter.timeStyle = .none
		return formatter.string(from: birthdate.nsDate)
	}
}


extension HumanName {
	
	/// Join the non-empty name parts into a "human-normal" string in the order prefix > given > family > suffix, joined by a space,
	/// **unless** the receiver's `text` is set, in which case the text is returned.
	public var human: String? {
		if let text = text {
			return text.string
		}
		
		var parts = [String]()
		if let prefix = prefix {
			parts.append(contentsOf: prefix.filter() { $0.string.characters.count > 0 }.map() { $0.string })
		}
		if let given = given {
			parts.append(contentsOf: given.filter() { $0.string.characters.count > 0 }.map() { $0.string })
		}
		if let family = family?.string, family.characters.count > 0 {
			parts.append(family)
		}
		if let suffix = suffix {
			parts.append(contentsOf: suffix.filter() { $0.string.characters.count > 0 }.map() { $0.string })
		}
		guard parts.count > 0 else {
			return nil
		}
		return parts.joined(separator: " ")
	}
}

