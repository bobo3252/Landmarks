//
//  LandmarkRow.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/15.
//

import SwiftUI

struct LandmarkRow: View {
    var body: some View {
        HStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 50, height:50)
            Text("Turtle Rock")

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
