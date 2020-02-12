//
//  Person.swift
//  SwiftFinalProject
//
//  Created by Gagandeep kaur on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Person : IDisplay

{
   
    
    var id : String = ""
    var  firstname : String = ""
    var lastname : String = ""
    var gender : Gender
    var birthDate : Date
    var age : Int = 0
    var mobileNumber : String = ""
    var email : String = ""
    var username : String = ""
    var  password : String

    
    final  var key : UInt8 = 5
    
    func Person ()
        
    {
    }
        init (id: String, firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String )
        {
               self.id = id
               self.firstname = firstname
               self.lastname = lastname
               self.gender = gender
               self.birthDate = birthDate
               self.age = age
               self.mobileNumber = mobileNumber
               self.email = email
               self.username = username
               self.password = password
            
        func Display() {
            <#code#>
        }

        
        
    }
    
    
    
    
}

