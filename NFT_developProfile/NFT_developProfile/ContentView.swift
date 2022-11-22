//
//  ContentView.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("ddd")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "house")
                    Text("ddd")
                }
            Introduce()
                .tabItem {
                    Image(systemName: "person")
                    Text("ddd")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
