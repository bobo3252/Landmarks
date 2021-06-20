//
//  LandmarkApp.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/09.
//

import SwiftUI

@main
struct LandmarkApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .onAppear {
                    let l = load()
                    print(l)
                }
        }
    }
}
