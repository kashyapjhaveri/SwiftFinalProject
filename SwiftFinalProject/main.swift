//
//  main.swift
//  SwiftFinalProject
//
//  Created by Kashyap Jhaveri on 2020-02-11.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation

//var BusesDT = [Int : Bus]()
//var CarsDT = [Int : Car]()
//var MotorcyclesDT = [Int : MotorCycle]()
var ownersDT = [Int : Owner]()
//var DriversDT = [Int: Driver]()
var CustomersDT = [Int: Customer]()


func readCustomersToDictonary()  {
    let readFileInstance = ReadFile.getInsatnce();
    
    do {
        let json = try readFileInstance.readJSONFile(fileName: "Customers")

        if let customers = json as? [Any]{
            
            for customer in customers {
                var tempGender:Gender;
                let cust = customer as! [String:Any];
                
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
                
                let tempDate = Date.from(date: cust["birthDate"] as! String)
                
                let tempObj = Customer(id: cust["id"] as! Int, firstname: cust["firstName"] as! String, lastname: cust["lastName"] as! String, gender: tempGender, birthDate:tempDate!, mobileNumber: cust["mobileNumber"] as! String, email: cust["email"] as! String, username: cust["userName"] as! String, password: cust["password"] as! String, address: cust["address"] as! String, city: cust["city"] as! String)
                
                CustomersDT.updateValue(tempObj, forKey: cust["id"] as! Int);
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
                
                let tempDate = Date.from(date: own["birthDate"] as! String)
                
                let tempObj = Owner(id: own["id"] as! Int, firstname: own["firstName"] as! String, lastname: own["lastName"] as! String, gender: tempGender, birthDate: tempDate!,mobileNumber: own["mobileNumber"] as! String, email: own["email"] as! String, username: own["userName"] as! String, password: own["password"] as! String, companyTitle: own["companyTitle"] as! String, businessNumber: own["businessLandlineNumber"] as! String, website: own["website"] as! String);
                
                ownersDT.updateValue(tempObj, forKey: own["id"] as! Int)
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

func initAllValues() {
    readCustomersToDictonary();
    readOwnersToDictonary();
}

initAllValues()

//print(ownersDT[1]?.Display())
