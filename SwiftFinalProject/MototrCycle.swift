//
//  MototrCycle.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation


class MototrCycle : Vehicle
{
    var maxTopSpeed : Int
    var mileage : Float
    
     init(vehicleIdentificationNumber: String, vehicleDescription: String, vehicleManufacturerName: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, noOfSeat: Int, fuelType: Fuel, baseRate: Int, ratePerKm: Int, vehicleType: String, maxTopSpeed: Int, mileage: Float)
    {
        super.init(vehicleIdentificationNumber: String, vehicleDescription: String, vehicleManufacturerName: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, noOfSeat: Int, fuelType: Fuel, baseRate: Int, ratePerKm: Int, vehicleType: String)
        self.maxTopSpeed = maxTopSpeed
        self.mileage = mileage
    }
    
    override func Display() {
        super.Display()
        print("MaxTopSpeed     : \(self.maxTopSpeed)")
        print("Mileage         : \(self.mileage)")
    }
}
