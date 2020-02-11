//
//  Car.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation


class Car : Vehicle
{
    var carType : String
    var colour : String
    
     init(vehicleIdentificationNumber: String, vehicleDescription: String, vehicleManufacturerName: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, noOfSeat: Int, fuelType: Fuel, baseRate: Int, ratePerKm: Int, vehicleType: String, carType : String, colour : String)
    {
        super.init(vehicleIdentificationNumber: String, vehicleDescription: String, vehicleManufacturerName: String, isSelfDrive: Bool, isInsured: Bool, insuranceProviderName: String, noOfSeat: Int, fuelType: Fuel, baseRate: Int, ratePerKm: Int, vehicleType: String)
        self.carType = carType
        self.colour = colour
    }
    override func Display() {
        super.Display()
        print("carType     : \(self.carType)")
        print("colour      : \(self.colour)")
    }
}
