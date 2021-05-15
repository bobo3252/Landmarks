//
//  CircleImage.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("100nen")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
