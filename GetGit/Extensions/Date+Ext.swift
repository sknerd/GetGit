//
//  Date+Ext.swift
//  GetGit
//
//  Created by renks on 27.01.2020.
//  Copyright © 2020 renks. All rights reserved.
//

import Foundation

extension Date {
 
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
