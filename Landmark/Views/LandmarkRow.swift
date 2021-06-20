//
//  LandmarkRow.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/15.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height:50)
            Text(landmark.name)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(
            landmark: Landmark(
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
        )
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
