//
//  String+Localization.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 4/1/15.
//  2015, SMART Health IT
//

import Foundation


extension String
{
	/**
		Convenience getter using `NSLocalizedString()` with no comment.
	 */
	public var localized: String {
		return NSLocalizedString(self, comment: "")
	}
}

