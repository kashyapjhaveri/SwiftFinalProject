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
    
    init(_ vehicleIdentificationNumber: String,_ vehicleDescription: String, _ vehicleManufacturerName: String,_ isSelfDrive: Bool,_ isInsured: Bool, _ insuranceProviderName: String,_ noOfSeat: Int,_ fuelType: Fuel,_ baseRate: Int, _ ratePerKm: Int,_ vehicleType: String,_ typeOfBus:String, _ isAccessibilityAvailable:Bool,_ isWifiAvailable:Bool)
    {
        
        self.typeOfBus = typeOfBus
        self.isAccessibilityAvailable = isAccessibilityAvailable
        self.isWifiAvailable = isWifiAvailable
        super.init(vehicleIdentificationNumber,vehicleDescription,vehicleManufacturerName,isSelfDrive,isInsured,insuranceProviderName,noOfSeat,fuelType,baseRate,ratePerKm,vehicleType)
    }
    override func Display() {
        super.Display()
        print("typeOfBus                   : \(self.typeOfBus)")
        print("isAccessibilityAvailable    : \(self.isAccessibilityAvailable)")
        print("isWifiAvailable             : \(self.isWifiAvailable)")
    }
}
