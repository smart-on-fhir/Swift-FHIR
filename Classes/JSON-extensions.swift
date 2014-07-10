//
//  JSON-extensions.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/4/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


extension NSDate {
	convenience init(json: String) {
		// TODO: parse ISO date
		self.init(timeInterval: 0, sinceDate: NSDate())
	}
}

extension NSURL {
	convenience init(json: String) {
		self.init(string: json)
	}
	
	class func from(json: [String]) -> [NSURL] {
		var arr: [NSURL] = []
		return arr
	}
}

extension NSDecimalNumber {
	convenience init(json: String) {
		self.init(string: json)
	}
}

