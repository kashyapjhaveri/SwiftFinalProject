//
//  customer.swift
//  SwiftFinalProject
//
//  Created by gagandeep kaur on 2020-02-12.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class customer: Person {

    
    var address : String
    var city : String
    
    init (id: String, firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String  , address : String , city : String )
    
    {
        
    super.init (id: String , firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String )
        self.address = address
        self.city = city
    }
   override  func Display(){
        super.Display()
        
                    print("address  : \(self.address)")
                print("city : \(self.city)")
    }
    


}

