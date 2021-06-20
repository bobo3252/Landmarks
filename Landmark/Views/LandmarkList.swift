//
//  LandmarkList.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/15.
//

import SwiftUI


struct LandmarkList: View {
    let landmark1 = Landmark(
        id: 1001,
        name: "Turtle Rock",
        category: "Rivers",
        city: "Twentynine Palms",
        state: "California",
        isFeatured: true,
        isFavorite: true,
        park: "Joshua Tree National Park",
        coordinates: Coordinate(
            longitude: -116.166868,
            latitude: 34.011286
        ),
        description: "Suscipit inceptos ...",
        imageName: "turtlerock"
    )

    let landmark2 = Landmark(
        id: 1002,
        name: "Silver Salmon Creek",
        category: "Lakes",
        city: "Port Alsworth",
        state: "Alaska",
        isFeatured: false,
        isFavorite: false,
        park: "Lake Clark National Park and Preserve",
        coordinates: Coordinate(
            longitude: -152.665167,
            latitude: 59.980167
        ),
        description: "Suscipit inceptos ...",
        imageName: "silversalmoncreek"
    )

    var body: some View {
        NavigationView{
            List {
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark1),
                    label: {
                        LandmarkRow(landmark: landmark1)
                    }
                )
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark2),
                    label: {
                        LandmarkRow(landmark: landmark2)
                    }
                )
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
