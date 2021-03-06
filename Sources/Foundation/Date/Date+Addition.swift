//
//  Date+Addition.swift
//
//  Created by Goran Brlas on 11/04/2019.
//  Copyright © 2019 Infinum. All rights reserved.
//

import Foundation

public extension Date {
    
    /// Adds `numOfYears` to `self` and returns it as a new `Date`.
    ///
    /// - Parameters:
    ///   - numOfYears: Number of years to add
    ///   - calendar: Calendar to use
    /// - Returns: Resulting date by adding `numOfYears` to `self`.
    func date(byAddingYears numOfYears: Int, calendar: Calendar = .current) -> Date? {
        return calendar.date(byAdding: .year, value: numOfYears, to: self)
    }
    
    /// Adds `numOfMonths` to `self` and returns it as a new `Date`.
    ///
    /// - Parameters:
    ///   - numOfMonths: Number of months to add
    ///   - calendar: Calendar to use
    /// - Returns: Resulting date by adding `numOfMonths` to `self`.
    func date(byAddingMonths numOfMonths: Int, calendar: Calendar = .current) -> Date? {
        return calendar.date(byAdding: .month, value: numOfMonths, to: self)
    }
    
    /// Adds `numOfDays` to `self` and returns it as a new `Date`.
    ///
    /// - Parameters:
    ///   - numOfDays: Number of days to add
    ///   - calendar: Calendar to use
    /// - Returns: Resulting date by adding `numOfDays` to `self`.
    func date(byAddingDays numOfDays: Int, calendar: Calendar = .current) -> Date? {
        return calendar.date(byAdding: .day, value: numOfDays, to: self)
    }
    
}
