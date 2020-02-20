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
    var id : String
    var firstname : String
    var lastname : String
    var gender : Gender
    var birthDate : Date
    var age : Int
    var mobileNumber : String
    var email : String
    var username : String
    var password : String

    final  var key : UInt8 = 5
    
    init (_ id: String,_ firstname: String,_ lastname: String,_ gender: Gender,_ birthDate: Date,_ mobileNumber: String,_ email: String,_ username: String,_ password: String )
    {
           self.id = id
           self.firstname = firstname
           self.lastname = lastname
           self.gender = gender
           self.birthDate = birthDate
        self.age = birthDate.getAge()
           self.mobileNumber = mobileNumber
           self.email = email
           self.username = username
           self.password = password
    }
        
    func Display() {
        print (" id : \(self.id)")
        print (" firstname: \(self.firstname)")
        print (" lastname: \(self.lastname)")
        print (" gender: \(self.gender)")
        print (" birthDate: \(self.birthDate)")
        print (" age: \(self.age)")
        print (" mobileNumber: \(self.mobileNumber)")
        print (" email : \(self.email)")
        print (" username : \(self.username)")
        print (" password: \(self.password)")
    }
}

