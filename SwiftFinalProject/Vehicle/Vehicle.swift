//
//  Vehicle.swift
//  SwiftFinalProject
//
//  Created by Shree Marella on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

enum RatePerKm : Double
{
    case CAR=5.0, MOTORCYCLE=1.0, BUS=7.0
}

enum BaseRate : Double{
    case CAR=100,MOTORCYCLE=50,BUS=250
}

protocol Vehicle : IDisplay
{
    
var vehicleIdentificationNumber : String {get set}
var vehicleDescription : String {get set}
var vehicleManufacturerName : String {get set}
var isSelfDrive : Bool {get set}
var isInsured : Bool {get set}
var insuranceProviderName : String {get set}
var noOfSeat : Int {get set}
var fuelType : Fuel {get set}
var baseRate : BaseRate {get set}
var ratePerKm : RatePerKm {get}
var vehicleType : String {get set}
    
func Display()

}

