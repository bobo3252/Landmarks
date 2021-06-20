//
//  ContentView.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/09.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinates: landmark.coordinates)
                .ignoresSafeArea(edges:. top)
                .frame(height: 300)
            
            CircleImage(imageName: landmark.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text("東京工業大学")
                        .font(.subheadline)
                    Spacer()
                    Text("東京都")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About 百年記念館")
                    .font(.title2)
                Text("建設中の高速道路のような建物")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(
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
    }
}
