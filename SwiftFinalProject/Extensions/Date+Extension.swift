//
//  Date+Extension.swift
//  SwiftFinalProject
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 Kashyap Jhaveri. All rights reserved.
//

import Foundation
extension Date{
    func getAge() -> Int {
            return Calendar.current.dateComponents([.year], from: self).year!;
    }
}
