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
		let parsed = NSDate.dateFromISOString(json)
		self.init(timeInterval: 0, sinceDate: parsed ? parsed! : NSDate())
	}
	
	class func dateFromISOString(string: String) -> NSDate? {
		let formatter = NSDateFormatter()
		formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
		
		var date = formatter.dateFromString(string)
		if !date {
			formatter.dateFormat = "yyyy-MM-dd"
			date = formatter.dateFromString(string)
		}
		
		return date
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
	convenience init(json: Double) {
		self.init(string: "\(json)")
	}
}

