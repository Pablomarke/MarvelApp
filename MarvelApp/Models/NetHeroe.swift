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
    
    enum CodingKeys: String,
                        CodingKey {
        case id
        case name
        case description
        case thumbnail
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
