//
//  Person.swift
//  SwiftFinalProject
//
//  Created by Evneet kaur on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Person : IDisplay
{
   
    
    var id : String
    var  firstname : String
    var lastname : String
    var gender : Gender
    var birthDate : Date
    var age : Int
    var mobileNumber : String
    var email : String
    var username : String
    var  password : String

   var  calendar = Calendar.current
   // func calendar;.component(.year, from: date)
   // calendar.component(.month, from: date)
  //  calendar.component(.day, from: date)

    
    final  var key : UInt8 = 5
    func Person (){
        
        
    }
    
    
    
    
}
