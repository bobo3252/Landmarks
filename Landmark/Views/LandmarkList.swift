//
//  LandmarkList.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/15.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
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
