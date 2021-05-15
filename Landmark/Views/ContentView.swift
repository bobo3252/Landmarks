//
//  ContentView.swift
//  Landmark
//
//  Created by 久保田聡 on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges:. top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("百年記念館")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
            
    }
}
