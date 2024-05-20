//
//  RequestRouter.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//


import Foundation

protocol URLRequestRouter {
    
}

public enum RequestRouter: URLRequestRouter {
    case getTrendingMovies
    case getTrendingTV
    case getUpComingMovies
    case getPopularMovies
    case getTopRatedMovies
    case discoverMovies
    case searchMovie(String)
    case getMovieFromYoutube(String)
    
    public func getUrl() -> String {
        let url: String = {
            
            var baseURL: String?
            switch self {
            case .getMovieFromYoutube:
                baseURL = NetworkConstants.youtubeBaseURL
            default:
                baseURL = NetworkConstants.baseURL
            }
            
            var relativePath: String?
            switch self {
            case .getTrendingMovies:
                relativePath = NetworkConstants.getTrendingMovies
            case .getTrendingTV:
                relativePath = NetworkConstants.getTrendingTV
            case .getUpComingMovies:
                relativePath = NetworkConstants.getUpComingMovies
            case .getPopularMovies:
                relativePath = NetworkConstants.getPopularMovies
            case .getTopRatedMovies:
                relativePath = NetworkConstants.getTopRatedMovies
            case .discoverMovies:
                relativePath = NetworkConstants.discoverMovies
            case .searchMovie:
                relativePath = NetworkConstants.searchMovie
            default:
                break
            }
            
            var apiKey: String?
            switch self {
            case .getMovieFromYoutube:
                apiKey = "\(NetworkConstants.youtubeKey)=\(NetworkConstants.YOUTUBE_API_KEY)"
            default:
                apiKey = "\(NetworkConstants.apiKey)=\(NetworkConstants.API_KEY)"
            }
            
            var headers: String?
            switch self {
            case .getUpComingMovies, .getPopularMovies, .getTopRatedMovies:
                headers = NetworkConstants.getUpcomingMoviesHeader
            case .discoverMovies:
                headers = NetworkConstants.discoverMoviesHeader
            case .searchMovie(let query):
                headers = "&query=\(query)"
            case .getMovieFromYoutube(let query):
                headers = "&q=\(query)"
            default:
                break
            }
            
            let url = "\(baseURL ?? "")\(relativePath ?? "")\(apiKey ?? "")\(headers ?? "")"
            return url
        }()
        return url
    }
}

