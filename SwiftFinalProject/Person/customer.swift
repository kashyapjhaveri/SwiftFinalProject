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
    
//    var password: String{
//        get{
//            
//        }
//        set
//        {
//            self.password = encrypt(originalPass: newValue)
//        }
//    }
        
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
        self.password     = password
        self.address      = address
        self.city         = city
        
    }
    
     func Display()
   {
    
        print (" id          : \(self.id)")
        print (" firstname   : \(self.firstname)")
        print (" lastname    : \(self.lastname)")
        print (" gender      : \(self.gender)")
        print (" birthDate   : \(self.birthDate)")
        print (" age         : \(self.age)")
        print (" mobileNumber: \(self.mobileNumber)")
        print (" email       : \(self.email)")
        print (" username    : \(self.username)")
        print (" password    : \(self.password)")
        print ("address      : \(self.address)")
        print ("city         : \(self.city)")
    }
    }




