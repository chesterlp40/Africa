//
//  VideoModel.swift
//  VideoModel
//
//  Created by Ezequiel Rasgido on 13/09/2021.
//

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
