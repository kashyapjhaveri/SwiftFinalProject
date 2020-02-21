//
//  MototrCycle.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation


class MotorCycle : Vehicle
{
    var vehicleIdentificationNumber : String
    var vehicleDescription          : String
    var vehicleManufacturerName     : String
    var isSelfDrive                 : Bool
    var isInsured                   : Bool
    var insuranceProviderName       : String
    var noOfSeat                    : Int
    var fuelType                    : Fuel
    var baseRate                    : BaseRate
    var ratePerKm                   : RatePerKm
    var vehicleType                 : String
    var maxTopSpeed                 : Int
    var mileage                     : Float
    
    init(vehicleIdentificationNumber:String,vehicleDescription:String,vehicleManufacturerName:String,isSelfDrive:Bool,isInsured:Bool,insuranceProviderName:String,noOfSeat:Int,fuelType:Fuel,baseRate:BaseRate,ratePerKm:RatePerKm,vehicleType:String,maxTopSpeed:Int,mileage:Float)
    {
        self.vehicleIdentificationNumber = vehicleIdentificationNumber
        self.vehicleDescription = vehicleDescription
        self.vehicleManufacturerName = vehicleManufacturerName
        self.isSelfDrive = isSelfDrive
        self.isInsured = isInsured
        self.insuranceProviderName = insuranceProviderName
        self.noOfSeat = noOfSeat
        self.fuelType = fuelType
        self.baseRate = baseRate
        self.ratePerKm = ratePerKm
        self.vehicleType = vehicleType
        self.maxTopSpeed = maxTopSpeed
        self.mileage = mileage
    }
    
    func Display()
    {
        print("Vehicle Identification Number : \(self.vehicleIdentificationNumber)")
        print("Vehicle Description           : \(self.vehicleDescription)")
        print("Vehicle Manufacturer Name     : \(self.vehicleManufacturerName)")
        print("InsuranceProviderName         : \(self.insuranceProviderName)")
        print("No Of Seat                    : \(self.noOfSeat)")
        print("Fuel Type                     : \(self.fuelType)")
        print("Base Rate                     : \(self.baseRate)")
        print("Rate Per Km                   : \(self.ratePerKm)")
        print("Vehicle Type                  : \(self.vehicleType)")
        print("Maximum Top Speed             : \(self.maxTopSpeed)")
        print("Mileage of the Vehicle        : \(self.mileage)")
    }
}
   
    

