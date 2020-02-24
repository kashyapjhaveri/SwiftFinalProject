//
//  customer.swift
//  SwiftFinalProject
//
//  Created by gagandeep kaur on 2020-02-12.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Customer: Person
{
    var id           : Int
    var firstname    : String
    var lastname     : String
    var gender       : Gender
    var birthDate    : Date
    var age          : Int
    var mobileNumber : String
    var email        : String
    var username     : String
    var password     : String
    var address      : String
    var city         : String
    
        
    init (id: Int, firstname: String, lastname: String, gender: Gender, birthDate: Date, mobileNumber: String, email: String, username: String, password: String  , address : String , city : String )
    {
        self.id           = id
        self.firstname    = firstname
        self.lastname     = lastname
        self.gender       = gender
        self.birthDate    = birthDate
        self.age          = birthDate.getAge()
        self.mobileNumber = mobileNumber
        self.email        = email
        self.username     = username
        self.address      = address
        self.city         = city
        self.password     = password.encryptPassword();
    }
    
    
     func Display()
     {
        print ("ID                  : \(self.id)")
        print ("Firstname           : \(self.firstname)")
        print ("Lastname            : \(self.lastname)")
        print ("Gender              : \(self.gender)")
        print ("BirthDate           : \(self.birthDate.getFormattedDate(dateFormat: "dd-MMM-yyyy"))")
        print ("Age                 : \(self.age) Years")
        print ("MobileNumber        : \(self.mobileNumber)")
        print ("Email               : \(self.email)")
        print ("Username            : \(self.username)")
        print ("Password(encrypted) : \(self.password)")
        print ("Password            : \(self.password.decryptPassword())")
        print ("Address             : \(self.address)")
        print ("City                : \(self.city)")
    }
}




