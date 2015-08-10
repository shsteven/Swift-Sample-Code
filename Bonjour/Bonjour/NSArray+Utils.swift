//
//  NSArray+Utils.swift
//  Bonjour
//
//  Created by Steven on 19/7/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import Foundation

extension Array {
    func contains(object:AnyObject!) -> Bool {
        if(self.isEmpty) {
            return false
        }
        let array: NSArray = self.bridgeToObjectiveC();
        
        return array.containsObject(object)
    }
    
    func indexOf(object:AnyObject!) -> Int? {
        var index = NSNotFound
        if(!self.isEmpty) {
            let array: NSArray = self.bridgeToObjectiveC();
            index = array.indexOfObject(object)
        }
        if(index == NSNotFound) {
            return Optional.None;
        }
        return index
    }
    
    //#pragma mark KVC
    
    func getKeyPath(keyPath: String!) -> AnyObject! {
        return self.bridgeToObjectiveC().valueForKeyPath(keyPath);
    }
}


extension Array {
    func firstObject() -> T! {
        var firstItem: T!
        if !self.isEmpty {
            firstItem = self[0]
        }
        return firstItem
    }
    
    func lastObject() -> T! {
        var lastItem: T!
        if !self.isEmpty {
            lastItem = self[self.count-1]
        }
        
        return lastItem
    }
}