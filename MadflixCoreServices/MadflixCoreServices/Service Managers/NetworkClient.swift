//
//  NetworkClient.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public class NetworkClient: NetworkProtocol {
    public init() { }
    public func request<T: Decodable>(url: String, completionHandler: @escaping (T?, CustomError?) -> Void) {
        guard let url = URL(string: url) else {
            completionHandler(nil, .wrongURL)
            return
        }
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard error == nil else {
                completionHandler(nil, .networkError)
                return
            }
            guard let data = data else {
                completionHandler(nil, .noDataToDecode)
                return
            }
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                completionHandler(response, nil)
            } catch let error {
                completionHandler(nil, .decodeError(error))
            }
        }
        task.resume()
    }
}


