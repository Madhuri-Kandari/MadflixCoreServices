//
//  NetworkProtocol.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public protocol NetworkProtocol: AnyObject {
    func request<T: Decodable>(url: String, completionHandler: @escaping (T?, CustomError?) -> Void)
}

