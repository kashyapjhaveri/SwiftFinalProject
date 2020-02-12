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
var companyTitle : String = ""
var businessNumber : String = ""
var website : String = ""
    
    init (id: String, firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String , companyTitle: String , businessNumber : String , website : String )
    {
        super.init (id: String, firstname: String, lastname: String, gender: Gender, birthDate: Date, age: Int, mobileNumber: String, email: String, username: String, password: String , companyTitle: String ,businessNumber: String , website : String)
        self.companyTitle = companyTitle
        self.businessNumber = businessNumber
        self.website = website

}
    override  func Display(){
    super.Display()
    
                print("companyTitle : \(self.companyTitle)")
        print("businessNumber : \(self.businessNumber)")
        print("website: \(self.website)")
}
}
