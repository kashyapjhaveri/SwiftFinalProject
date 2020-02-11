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

init(vehicleIdentificationNumber:String,vehicleDescription:String,vehicleManufacturerName:String,isSelfDrive:Bool,isInsured:Bool,insuranceProviderName:String,noOfSeat:Int,fuelType:Fuel,baseRate:Int,ratePerKm:Int,vehicleType:String)
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

