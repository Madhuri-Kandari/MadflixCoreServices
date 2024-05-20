//
//  MovieResponse.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public struct MoviesResponse: Codable {
    public let results: [Movie]
}

public struct Movie: Codable {
    public let id: Int
    public let mediaType: String?
    public let original_name: String?
    public let original_title: String?
    public let poster_path: String?
    public let overview: String?
    public let vote_count: Int
    public let release_date: String?
    public let vote_average: Double
}
