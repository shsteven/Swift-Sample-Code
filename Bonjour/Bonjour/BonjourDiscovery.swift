//
//  BonjourDiscovery.swift
//  Bonjour
//
//  Created by Steven on 19/7/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import Foundation

class BonjoourDiscovery: NSObject, NSNetServiceBrowserDelegate, NSNetServiceDelegate {
    
    var browser: NSNetServiceBrowser
    var services: Array<NSNetService>
    var connectedService: NSNetService?
    var connected: Bool
    
    init() {
        browser = NSNetServiceBrowser()
        services = []
        connected = false
    }
    
    // Make a singleton
    class var sharedInstance : BonjoourDiscovery {
    struct Static {
        static var onceToken : dispatch_once_t = 0
        static var instance : BonjoourDiscovery? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = BonjoourDiscovery()
        }
        return Static.instance!
    }
    
    
    
    
    
    
    func startDiscovery() {
        browser.delegate = self
        browser.searchForServicesOfType("_webdav._tcp.", inDomain: "")
    }
    
    func stopDiscovery() {
        browser.stop()
    }
    
    // NSNetService
    func connectToService(aService: NSNetService!) {
        if (connected) {
            self.disconnect()
        }

        aService.delegate = self
        aService .resolveWithTimeout(30)
        
    }
    
    func disconnect() {
        connectedService = nil
        connected = false
    }
    
    // NSNetServiceBrowser delegate
    func netServiceBrowser(aNetServiceBrowser: NSNetServiceBrowser!, didFindService aNetService: NSNetService!, moreComing: Bool) {
        
        services += aNetService
    }
    
    func netServiceBrowser(aNetServiceBrowser: NSNetServiceBrowser!, didRemoveService aNetService: NSNetService!, moreComing: Bool) {
        
        if aNetService == connectedService {
            self.disconnect()
        }
        
        if let index = services.indexOf(aNetService) {
            services.removeAtIndex(index)
        }

    }
    
    
    // NSNetServiceDelegate
    func netServiceDidResolveAddress(netservice: NSNetService!) {
        println("resolved service \(netservice.description)")
    }
    
    func netService(netservice: NSNetService!,
        didNotResolve errorDict: [NSObject : AnyObject]!) {
        println("failed to resolve service")
    }
    
}



