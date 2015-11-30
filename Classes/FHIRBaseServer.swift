//
//  FHIRBaseServer.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/30/15.
//  Copyright © 2015 SMART Health IT. All rights reserved.
//

/**
This typealias is used in reference resolving. If you create your own implementation (and you probably want to), omit this file from your
target and create a typealias from `FHIRBaseServer` to your own implementation. The SMART framework subclasses `FHIROpenServer` and then
typealiases its subclass to `FHIRBaseServer`.
*/
public typealias FHIRBaseServer = FHIROpenServer

