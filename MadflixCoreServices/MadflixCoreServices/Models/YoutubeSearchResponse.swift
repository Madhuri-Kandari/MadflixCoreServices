//
//  YoutubeSearchResponse.swift
//  MadflixServices
//
//  Created by Chandana Sudha Madhuri Kandari on 21/05/24.
//

import Foundation

public struct YoutubeSearchResponse: Codable {
    public let items: [VideoElements]?
}

public struct VideoElements: Codable {
    public let id: IDVideoElement
}

public struct IDVideoElement: Codable {
    public let kind: String
    public let playlistId: String?
    public let videoId: String?
}

