//
//  LocationModel.swift
//  LocationModel
//
//  Created by Ezequiel Rasgido on 13/09/2021.
//

import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double

    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
