//
//  Extensions.swift
//  Pods
//
//  Created by macbook on 16/01/18.
//
//

import Foundation
import UIKit

extension String {
    
    ///This function is used to check whether self is a valid Mobile Number
    func isValidMobileNumber() -> Bool {
        
        
        return true
    }
    
    
    ///This function is used to return the length of self
    func length() -> Int {
        
        return self.characters.count
    }
    
    
    ///This function is used to find the number of occurences of given character in self.
    func occurrences(searchCharacter: Character) -> Int {
        
        return self.characters.filter { $0 ==  searchCharacter}.count
    }
    
    
    ///This function is used to find the given character is present or not in self.
    func contain(searchCharacter: Character ) -> Bool {
        
        if self.characters.contains(searchCharacter) {
            return true
        }
        else {
            return false
        }
        
    }
    
    
    ///This function is used to convert self to Integer. if a non Integer value is given in self it returns 0
    func toInt() -> Int {
        
        if let result = Int(self) {
            return result
        }
        else {
            return 0
        }
        
    }
    
    ///This function is used to insert the given string into the given index in self.
    func insert(string:String,ind:Int) -> String {
        
        return  String(self.characters.prefix(ind)) + string + String(self.characters.suffix(self.characters.count-ind))
    }
    
    ///This function is used to concatinate a string with self.
    mutating func concatenate(str: String) -> String {
        
        return (self+str)
    }
    
    
    ///This function is used to find the given self is leap year or not.
    func isLeapYear() -> Bool {
        
        let year = self.toInt()
        let isLeapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
        
        return isLeapYear
    }
    
    
    ///This function is used to return the given self by arranging in ascending order.
    func asend() -> String {
        
        let n = self.characters.count
        var b = Array(self.characters)
        
        for i in 0...n-1 {
            for j in 0...n-1{
                if b[i] < b[j] {
                    let c = b[i]
                    b[i] = b[j]
                    b[j] = c
                }
            }
        }
        
        return String(b)
    }
    
    
}
