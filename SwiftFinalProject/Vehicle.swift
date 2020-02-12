//
//  Vehicle.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

class Vehicle : IDisplay
{
    
var vehicleIdentificationNumber : String
var vehicleDescription : String
var vehicleManufacturerName : String
var isSelfDrive : Bool
var isInsured : Bool
var insuranceProviderName : String
var noOfSeat : Int
var fuelType : Fuel
var baseRate : Int
var ratePerKm : Int
var vehicleType : String

init(_ vehicleIdentificationNumber:String,_ vehicleDescription:String,_ vehicleManufacturerName:String,_ isSelfDrive:Bool,_ isInsured:Bool,_ insuranceProviderName:String,_ noOfSeat:Int,_ fuelType:Fuel,_ baseRate:Int,_ ratePerKm:Int,_ vehicleType:String)
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
}
func Display()
{
    print("vehicleIdentificationNumber : \(self.vehicleIdentificationNumber)")
    print("vehicleDescription          : \(self.vehicleDescription)")
    print("vehicleManufacturerName     : \(self.vehicleManufacturerName)")
    print("insuranceProviderName       : \(self.insuranceProviderName)")
    print("noOfSeat                    : \(self.noOfSeat)")
    print("fuelType                    : \(self.fuelType)")
    print("baseRate                    : \(self.baseRate)")
    print("ratePerKm                   : \(self.ratePerKm)")
    print("vehicleType                 : \(self.vehicleType)")
    
}
}

