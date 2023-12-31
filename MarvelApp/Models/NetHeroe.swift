//
//  NetHeroe.swift
//  MarvelApp
//
//  Created by Pablo Márquez Marín on 27/7/23.
//

import Foundation

struct ResponseHeroe: Decodable {
    
    let code:Int
    let data: Data
    let status: String
    
    enum CodingKeys: String,
                        CodingKey {
        case code
        case data
        case status
    }
}

struct Data: Decodable {
    let total: Int
    let count: Int
    let results: [HeroeData]?
    
    enum CodingKeys: String,
                        CodingKey {
        case total
        case count
        case results
    }
}

struct HeroeData: Decodable {
    
    let id: Int?
    let name: String?
    let description: String?
    let thumbnail: Thumbnail
    let comics: Comics
    let series: Series
    let stories: Stories
    let events: Events
    
    enum CodingKeys: String,
                        CodingKey {
        case id
        case name
        case description
        case thumbnail
        case comics
        case series
        case stories
        case events
    }
}

struct Thumbnail: Decodable {
    let path: String
    let extension2: String
    
    enum CodingKeys: String,
                        CodingKey {
        case path
        case extension2  = "extension"
    }
    
    func ThumbnailComplete() -> String {
    let totalUrl = path + "." + extension2
        return totalUrl
    }
}

struct Comics: Decodable {
    let available: Int
    let collectionURI: String
    let items: [ApiItems]
    let returned: Int
    
    enum CodingKeys: String,
                     CodingKey {
        case available
        case collectionURI
        case items
        case returned
    }
}

struct Series: Decodable {
    let available: Int
    let collectionURI: String
    let items: [ApiItems]
    let returned: Int
    
    enum CodingKeys: String,
                     CodingKey {
        case available
        case collectionURI
        case items = "items"
        case returned
        
    }
}

struct Stories: Decodable {
    let available: Int
    let collectionURI: String
    let items: [ApiItems]
    let returned: Int
    
    enum codingKeys: String, CodingKey {
        case available
        case collectionURI
        case items
        case returned
    }
}

struct Events: Decodable {
    let available: Int
    let collectionURI: String
    let items: [ApiItems]
    let returned: Int
    
    enum CodingKeys: String, CodingKey {
        case available
        case collectionURI
        case items
        case returned
    }
}

struct ApiItems: Decodable {
    let resourceURI: String
    let name: String
    
    enum CodingKeys: String,
                        CodingKey {
        case resourceURI
        case name
    }
}


