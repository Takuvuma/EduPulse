//
//  stream.swift
//  EduPulse
//
//  Created by Takudzwa Vuma on 2/15/24.
//

import Foundation

extension String{
    
    func isValidEmail() -> Bool {
        //test@mail.com -> true
        //test.com -> false
        
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        
        return regex.firstMatch(in: self,range: NSRange(location:  0, length: count))  != nil
        
    }
    
    
}
