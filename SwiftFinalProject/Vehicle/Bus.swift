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
    var vehicleIdentificationNumber : String
    var vehicleDescription          : String
    var vehicleManufacturerName     : String
    var isSelfDrive                 : Bool
    var isInsured                   : Bool
    var insuranceProviderName       : String
    var noOfSeat                    : Int
    var fuelType                    : Fuel
    var baseRate                    : Int
    var ratePerKm                   : RatePerKm
    var vehicleType                 : String
    var typeOfBus                   : String
    var isAccessibilityAvailable    : Bool
    var isWifiAvailable             : Bool
    
    init(vehicleIdentificationNumber:String,vehicleDescription:String,vehicleManufacturerName:String,isSelfDrive:Bool,isInsured:Bool,insuranceProviderName:String,noOfSeat:Int,fuelType:Fuel,baseRate:Int,ratePerKm:RatePerKm,vehicleType:String,typeOfBus:String,isAccessibilityAvailable:Bool,isWifiAvailable:Bool)
    {
        self.vehicleIdentificationNumber = vehicleIdentificationNumber
        self.vehicleDescription = vehicleDescription
        self.vehicleManufacturerName = vehicleManufacturerName
        self.isSelfDrive = isSelfDrive
        self.isInsured = isInsured
        self.insuranceProviderName = insuranceProviderName
        self.noOfSeat = noOfSeat
        self.fuelType = Fuel
        self.baseRate = baseRate
        self.ratePerKm = ratePerKm
        self.vehicleType = vehicleType
        self.typeOfBus = typeOfBus
        self.isAccessibilityAvailable = isAccessibilityAvailable
        self.isWifiAvailable = isWifiAvailable
    }
    
    func Display()
    {
        print("Vehicle Identification Number : \(self.vehicleIdentificationNumber)")
        print("Vehicle Description           : \(self.vehicleDescription)")
        print("Vehicle Manufacturer Name     : \(self.vehicleManufacturerName)")
        print("InsuranceProviderName         : \(self.insuranceProviderName)")
        print("No Of Seat                    : \(self.noOfSeat)")
        print("Fuel Type                     : \(self.Fuel)")
        print("Base Rate                     : \(self.baseRate)")
        print("Rate Per Km                   : \(self.ratePerKm)")
        print("Vehicle Type                  : \(self.vehicleType)")
        print("Type Of Bus                   : \(self.typeOfBus)")
        print("Is Accessibility Available    : \(self.isAccessibilityAvailable)")
        print("Is WIFI Available             : \(self.isWifiAvailable)")
    }
    
}
