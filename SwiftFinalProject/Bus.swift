//
//  Bus.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Bus : Vehicle
{
    var typeOfBus : String
    var isAccessibilityAvailable : Bool
    var isWifiAvailable : Bool
    
    init(vehicleIdentificationNumber: String, vehicleDescription: String, vehicleManufacturerName: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, noOfSeat: Int, fuelType: Fuel, baseRate: Int, ratePerKm: Int, vehicleType: String, typeOfBus:String, isAccessibilityAvailable:Bool, isWifiAvailable:Bool)
    {
        super.init(vehicleIdentificationNumber:String,vehicleDescription:String,vehicleManufacturerName:String,isSelfDrive:Bool,isInsured:Bool,insuranceProviderName:String,noOfSeat:Int,fuelType:Fuel,baseRate:Int,ratePerKm:Int,vehicleType:String)
        self.typeOfBus = typeOfBus
        self.isAccessibilityAvailable = isAccessibilityAvailable
        self.isWifiAvailable = isWifiAvailable
    }
    override func Display() {
        super.Display()
        print("typeOfBus                   : \(self.typeOfBus)")
        print("isAccessibilityAvailable    : \(self.isAccessibilityAvailable)")
        print("isWifiAvailable             : \(self.isWifiAvailable)")
    }
}
