//
//  GGError.swift
//  GetGit
//
//  Created by renks on 12.01.2020.
//  Copyright © 2020 renks. All rights reserved.
//

import Foundation

enum GGError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data recieved from the server was invalid. Please try again."
}
