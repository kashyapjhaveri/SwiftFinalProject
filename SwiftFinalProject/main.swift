//
//  main.swift
//  SwiftFinalProject
//
//  Created by Kashyap Jhaveri on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

print("Hello, World!")


//var temp = Bus(vehicleIdentificationNumber: "gsrg", vehicleDescription: "hvbv", vehicleManufacturerName: "bbbs", isSelfDrive: true, isInsured: false, insuranceProviderName: "dvs", noOfSeat: 2, fuelType: Fuel.PETROL, baseRate: BaseRate.BUS, ratePerKm: RatePerKm.BUS, vehicleType: "Bua", typeOfBus: "Coch", isAccessibilityAvailable: true, isWifiAvailable: false);
//
//temp.Display();

var BusesDT = [String : Bus]()
for b in BusesDT
{
    b.value.Display()
    print(" \t ********Bus Details********")
}

