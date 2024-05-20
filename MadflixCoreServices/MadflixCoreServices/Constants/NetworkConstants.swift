//
//  NetworkConstants.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public struct NetworkConstants {
    public static let API_KEY = "17cdbbe4526fb4b12eace1fb7c80c8a5"
    public static let YOUTUBE_API_KEY = "AIzaSyAS-iCm03b7OUIQhrFP6VLZWKIFPQrmJkU"
    public static let baseURL = "https://api.themoviedb.org"
    public static let youtubeBaseURL = "https://youtube.googleapis.com/youtube/v3/search?"
    
    static let getTrendingMovies = "/3/trending/movie/day?"
    static let getTrendingTV = "/3/trending/tv/day?"
    static let getUpComingMovies = "/3/movie/upcoming?"
    static let getPopularMovies = "/3/movie/popular?"
    static let getTopRatedMovies = "/3/movie/top_rated?"
    static let discoverMovies = "/3/discover/movie?"
    static let searchMovie = "/3/search/movie?"
    
    static let apiKey = "api_key"
    static let youtubeKey = "key"
    
    static let getUpcomingMoviesHeader = "&language=en-US&page=1"
    static let discoverMoviesHeader = "&language=en-US&page=1&sort_by=popularity.desc&include_adult=false&include_video=false&with_watch_monetiztion_types=flatrate"
}

