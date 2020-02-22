//
//  Owner.swift
//  SwiftFinalProject
//
//  Created by Gagandeep kaur on 2020-02-12.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Owner : Person
{
    var id                    : Int
    var firstname             : String
    var lastname              : String
    var gender                : Gender
    var birthDate             : Date
    var age                   : Int
    var mobileNumber          : String
    var email                 : String
    var username              : String
    var password              : String
    var companyTitle          : String
    var businessNumber        : String
    var website               : String
    
    init (id: Int, firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String , companyTitle: String , businessNumber : String , website : String )
    {
        self.id             = id
        self.firstname      = firstname
        self.lastname       = lastname
        self.gender         = gender
        self.birthDate      = birthDate
        self.age            = birthDate.getAge()
        self.mobileNumber   = mobileNumber
        self.email          = email
        self.username       = username
        self.password       = password
        self.companyTitle   = companyTitle
        self.businessNumber = businessNumber
        self.website        = website
    
    }
    
    func Display()
    {
        print (" id                 : \(self.id)")
        print (" firstname          : \(self.firstname)")
        print (" lastname           : \(self.lastname)")
        print (" gender             : \(self.gender)")
        print (" birthDate          : \(self.birthDate)")
        print (" age                : \(self.age)")
        print (" mobileNumber       : \(self.mobileNumber)")
        print (" email              : \(self.email)")
        print (" username           : \(self.username)")
        print (" password           : \(self.password)")
        print("companyTitle         : \(self.companyTitle)")
        print("businessNumber       : \(self.businessNumber)")
        print("website              : \(self.website)")
    }
}
