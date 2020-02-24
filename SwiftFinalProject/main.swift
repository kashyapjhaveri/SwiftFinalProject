//
//  main.swift
//  SwiftFinalProject
//
//  Created by Kashyap Jhaveri on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

var BusesDT = [String : Bus]()
var CarsDT = [String : Car]()
var MotorcyclesDT = [String : MotorCycle]()
var ownersDT = [Int : Owner]()
var DriversDT = [Int: Driver]()
var CustomersDT = [Int: Customer]()


func readCustomersToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Customers")

        if let customers = json as? [Any]{
            
            for customer in customers {
                var tempGender:Gender;
                let cust = customer as! [String:Any];
                
                let tempDate = Date.from(date: cust["birthDate"] as! String)
                
                if Date().compare(tempDate!).rawValue < 1{
                    print("Birth Date cannot be greater than current date for customer Id:- \(cust["id"] as! Int)")
                }
                else{
                    if cust["gender"] as! String == "Male"{
                        tempGender = Gender.Male;
                    }
                    else if cust["gender"] as! String == "Female"
                    {
                        tempGender = Gender.Female;
                    }
                    else{
                        tempGender = Gender.Others;
                    }
                    
                    let tempObj = Customer(id: cust["id"] as! Int, firstname: cust["firstName"] as! String, lastname: cust["lastName"] as! String, gender: tempGender, birthDate:tempDate!, mobileNumber: cust["mobileNumber"] as! String, email: cust["email"] as! String, username: cust["userName"] as! String, password: cust["password"] as! String, address: cust["address"] as! String, city: cust["city"] as! String)
                    
                    CustomersDT.updateValue(tempObj, forKey: cust["id"] as! Int);
                }
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch {
        print("Invalid Error")
    }
}

func readOwnersToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Owners")

        if let owners = json as? [Any]{
            
            for owner in owners {
                var tempGender:Gender;
                let own = owner as! [String:Any];
                
                let tempDate = Date.from(date: own["birthDate"] as! String)
                
                if Date().compare(tempDate!).rawValue < 1{
                    print("Birth Date cannot be greater than current date for owner Id:- \(own["id"] as! Int)")
                }
                else {
                
                    if own["gender"] as! String == "Male"{
                        tempGender = Gender.Male;
                    }
                    else if own["gender"] as! String == "Female"
                    {
                        tempGender = Gender.Female;
                    }
                    else{
                        tempGender = Gender.Others;
                    }
                    
                    let tempObj = Owner(id: own["id"] as! Int, firstname: own["firstName"] as! String, lastname: own["lastName"] as! String, gender: tempGender, birthDate: tempDate!,mobileNumber: own["mobileNumber"] as! String, email: own["email"] as! String, username: own["userName"] as! String, password: own["password"] as! String, companyTitle: own["companyTitle"] as! String, businessNumber: own["businessLandlineNumber"] as! String, website: own["website"] as! String);
                    
                    ownersDT.updateValue(tempObj, forKey: own["id"] as! Int)
                }
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch {
        print("Invalid Error")
    }
}

func readDriversToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Drivers")

        if let drivers = json as? [Any]{
            
            for driver in drivers {
                var tempGender:Gender;
                let dri = driver as! [String:Any];
                
                let tempDate = Date.from(date: dri["birthDate"] as! String)
                
                if Date().compare(tempDate!).rawValue < 1{
                    print("Birth Date cannot be greater than current date for owner Id:- \(dri["id"] as! Int)")
                }
                else{
                    if dri["gender"] as! String == "Male"{
                        tempGender = Gender.Male;
                    }
                    else if dri["gender"] as! String == "Female"
                    {
                        tempGender = Gender.Female;
                    }
                    else{
                        tempGender = Gender.Others;
                    }
                    
                   let tempObj = Driver(id: dri["id"] as! Int, firstname: dri["firstName"] as! String, lastname: dri["lastName"] as! String, gender: tempGender, birthDate: tempDate!,mobileNumber: dri["mobileNumber"] as! String, email: dri["email"] as! String, username: dri["userName"] as! String, password: dri["password"] as! String, drivingLicenceNumber: dri["drivingLicenceNumber"] as! String, isHistoryCleared: dri["isHistoryCleared"] as! Bool, salary: dri["salary"] as! Double
                    );
                    DriversDT.updateValue(tempObj, forKey: dri["id"] as! Int);
                }
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch {
        print("Invalid Error")
    }
}


func readBusesToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Buses")

        if let buses = json as? [Any]{
            
            for bus in buses {
                var tempFuelType:Fuel;
                let b = bus as! [String:Any];
                
                if b["fuelType"] as! String == "Petrol"
                {
                    tempFuelType = .PETROL;
                }
                else if b["fuelType"] as! String == "Desiel"
                {
                    tempFuelType = .DIESEL;
                }
                else{
                    tempFuelType = .ELETRIC;
                }
                
                let tempObj = Bus(vehicleIdentificationNumber: b["VIN"] as! String, vehicleDescription: b["vehicleDescription"] as! String, vehicleManufacturerName: b["manufacturerName"] as! String, isSelfDrive: b["isSelfDrive"] as! Bool, isInsured: b["isInsured"] as! Bool, noOfSeat: b["noOfSeat"] as! Int, fuelType: tempFuelType, typeOfBus: b["typeOfBus"] as! String, isAccessibilityAvailable: b["isAccessibilityAvailable"] as! Bool, isWifiAvailable: b["isWifiAvailable"] as! Bool);

                if tempObj.isInsured == true {
                    tempObj.setInsuranceProviderName(insuranceProviderName: b["insuranceProviderName"] as! String)
                }

                if tempObj.isSelfDrive == false{
                    guard let driver = DriversDT[b["driver"] as! Int] else {
                        throw DriverExceptions.driverObjectNotFound
                    }
                    tempObj.setDriver(driver: driver);
                }

                BusesDT.updateValue(tempObj, forKey: b["VIN"] as! String);
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch DriverExceptions.driverObjectNotFound{
        print("Driver object not found while paring buses");
    }
    catch {
        print("Invalid Error")
    }
}

func readCarsToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Cars")

        if let cars = json as? [Any]{
            
            for car in cars {
                var tempFuelType:Fuel;
                let c = car as! [String:Any];
                
                if c["fuelType"] as! String == "Petrol"
                {
                    tempFuelType = .PETROL;
                }
                else if c["fuelType"] as! String == "Desiel"
                {
                    tempFuelType = .DIESEL;
                }
                else{
                    tempFuelType = .ELETRIC;
                }
                
                let tempObj = Car(vehicleIdentificationNumber:  c["VIN"] as! String, vehicleDescription: c["vehicleDescription"] as! String, vehicleManufacturerName: c["manufacturerName"] as! String, isSelfDrive: c["isSelfDrive"] as! Bool, isInsured: c["isInsured"] as! Bool, noOfSeat: c["noOfSeat"] as! Int, fuelType: tempFuelType, carType: c["carType"] as! String, carColour: c["carColor"] as! String);
                
                if tempObj.isInsured == true {
                    tempObj.setInsuranceProviderName(insuranceProviderName: c["insuranceProviderName"] as! String)
                }

                if tempObj.isSelfDrive == false{
                    guard let driver = DriversDT[c["driver"] as! Int] else {
                        throw DriverExceptions.driverObjectNotFound
                    }
                    tempObj.setDriver(driver: driver);
                }

                CarsDT.updateValue(tempObj, forKey: c["VIN"] as! String);
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch DriverExceptions.driverObjectNotFound{
        print("Driver object not found while paring buses");
    }
    catch {
        print("Invalid Error")
    }
}

func readMotocyclesToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "MotorCycles")

        if let motorCycles = json as? [Any]{
            
            for motorCycle in motorCycles {
                var tempFuelType:Fuel;
                let m = motorCycle as! [String:Any];
                
                if m["fuelType"] as! String == "Petrol"
                {
                    tempFuelType = .PETROL;
                }
                else if m["fuelType"] as! String == "Desiel"
                {
                    tempFuelType = .DIESEL;
                }
                else{
                    tempFuelType = .ELETRIC;
                }
                
                let tempObj = MotorCycle(vehicleIdentificationNumber: m["VIN"] as! String, vehicleDescription: m["vehicleDescription"] as! String, vehicleManufacturerName: m["manufacturerName"] as! String, isSelfDrive: m["isSelfDrive"] as! Bool, isInsured: m["isInsured"] as! Bool, noOfSeat: m["noOfSeat"] as! Int, fuelType: tempFuelType, maxTopSpeed: m["maxTopSpeed"] as! Int, mileage: m["milage"] as! Double)
                
                if tempObj.isInsured == true {
                    tempObj.setInsuranceProviderName(insuranceProviderName: m["insuranceProviderName"] as! String)
                }

                if tempObj.isSelfDrive == false{
                    guard let driver = DriversDT[m["driver"] as! Int] else {
                        throw DriverExceptions.driverObjectNotFound
                    }
                    tempObj.setDriver(driver: driver);
                }

                MotorcyclesDT.updateValue(tempObj, forKey: m["VIN"] as! String);
            }
        }
    }
    catch FileExceptions.fileNotFound{
        print("File not found")
    }
    catch FileExceptions.dataReadingError {
        print("Error while reading data from file");
    }
    catch FileExceptions.errorPasingToJSON{
        print("Error while parsing data to json")
    }
    catch DriverExceptions.driverObjectNotFound{
        print("Driver object not found while paring buses");
    }
    catch {
        print("Invalid Error")
    }
}

func initAllValues() {
    readCustomersToDictonary();
    readOwnersToDictonary();
    readDriversToDictonary();
    readBusesToDictonary();
    readCarsToDictonary();
    readMotocyclesToDictonary();
}

func listAllPersons(type:String) {
    switch type {
        case "customers":
            print("---------All Customers--------");
            for customer in CustomersDT.values {
                print("======================")
                customer.Display()
                print("======================")
            }
        break;
        
        case "drivers":
            print("---------All Drivers--------");
            for driver in DriversDT.values
            {
                print("======================")
                driver.Display();
                print("======================")
            }
        break;
        
        case "owners":
            print("---------All Owners--------");
            for owner in ownersDT.values
            {
                print("======================")
                owner.Display();
                print("======================")
            }
        break;
        
        default:
        break;
    }
}

func listAllVehicles(type:String) {
    switch type {
        case "cars":
            print("---------All Cars--------");
            for car in CarsDT.values {
                print("======================")
                car.Display()
                print("======================")
            }
        break;
        
        case "buses":
            print("---------All Buses--------");
            for bus in BusesDT.values
            {
                print("======================")
                bus.Display();
                print("======================")
            }
        break;
        
        case "motorcycles":
            print("---------All MotorCycles--------");
            for motorCycle in MotorcyclesDT.values
            {
                print("======================")
                motorCycle.Display();
                print("======================")
            }
        break;
        
        default:
        break;
    }
}

initAllValues()

var choice = "0";

print("----------------------------")
print("1.List all persons")
print("2.List all vehicles")
print("----------------------------")

print("Enter you choice:- ");

choice = readLine() ?? "0";

switch choice{

    case "1":
        var nextChoice = "0";
        print("1.Customers");
        print("2.Owners");
        print("3.Drivers");

        print("Enter your choice: -")
        nextChoice = readLine() ?? "0"

        switch nextChoice {
            case "1":
                listAllPersons(type: "customers");
            break;

            case "2":
                listAllPersons(type: "owners");
            break;

            case "3":
                listAllPersons(type: "drivers");
            break;

            default:
            break;
        }
    break;

    case "2":
        var nextChoice = "0";
        print("1.Cars");
        print("2.Buses");
        print("3.MotorCycles");

        print("Enter your choice: -")
        nextChoice = readLine() ?? "0"

        switch nextChoice {
            case "1":
                listAllVehicles(type: "cars");
            break;

            case "2":
                listAllVehicles(type: "buses");
            break;

            case "3":
                listAllVehicles(type: "motorcycles");
            break;

            default:
            break;
        }
    break;
    default:
    break;
}
