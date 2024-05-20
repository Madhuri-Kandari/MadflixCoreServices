//
//  CustomError.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//


import Foundation

public enum CustomError: Error {
    case networkError
    case genericError
    case wrongURL
    case noDataToDecode
    case decodeError(Error)
    
    public var errorText: String {
        switch self {
        case .networkError:
            return "No internet connection, please try again."
        case .genericError:
            return "Something's wrong, please try again after sometime."
        case .wrongURL:
            return "Please give the correct URL"
        case .noDataToDecode:
            return "No data to decode"
        case .decodeError(let error):
            return "\(error.localizedDescription)"
        }
    }
}
