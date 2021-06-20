//
//  Landmark.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/15.
//

import Foundation

struct Landmark: Decodable {
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    let coordinates: Coordinate
    let description: String
    let imageName: String
}

struct Coordinate: Decodable {
    let longitude: Double
    let latitude: Double
}
