//
//  JSON-extensions.swift
//  SMART-on-FHIR
//
//  Created by Pascal Pfiffner on 7/4/14.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


extension NSDate {
	public convenience init(json: String) {
		let parsed = NSDate.dateFromISOString(json)
		self.init(timeInterval: 0, sinceDate: parsed ?? NSDate())
	}
	
	public class func dateFromISOString(string: String) -> NSDate? {
		let formatter = NSDateFormatter()
		formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
		formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
		formatter.calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
		
		var date = formatter.dateFromString(string)
		if nil == date {
			formatter.dateFormat = "yyyy-MM-dd"
			date = formatter.dateFromString(string)
		}
		
		return date
	}
}

extension NSURL {
	public convenience init(json: String) {
		self.init(string: json)
	}
	
	public class func from(json: [String]) -> [NSURL] {
		var arr: [NSURL] = []
		return arr
	}
}

extension NSDecimalNumber {
	public convenience init(json: Double) {
		self.init(string: "\(json)")
	}
}

