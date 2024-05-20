//
//  ListCategory.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public enum ListCategory {
    case trendingMovies
    case trendingTV
    case topRated
    case popularMovies
    case upcomingMovies
    case search(String)
    case getMovie(String)
}
