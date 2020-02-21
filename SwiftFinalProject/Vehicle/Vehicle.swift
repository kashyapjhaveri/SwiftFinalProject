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
    case CAR=7.0, MOTORCYCLE=5.0, BUS=11.0
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
var baseRate : Int {get set}
var ratePerKm : Int {get}
var vehicleType : String {get set}
    
func Display()
}

