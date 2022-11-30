//
//  ContentView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/14.
//

import SwiftUI

extension Color{
    static let mainRed = Color("mainRed")
    static let backgroundColor = Color("backgroundColor")
}

struct ContentView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection){
            NavigationStack{
                CommunityView()
            }.tabItem{
                Image(systemName: "person.3")
                Text("커뮤니티")
            }.tag(1)
            
            NavigationStack{
                ParticipationView()
            }.tabItem{
                Image(systemName: "figure.stand.line.dotted.figure.stand")
                Text("참여")
            }.tag(2)
            
            NavigationStack{
                ProfileView()
            }.tabItem{
                Image(systemName: "person.fill")
                Text("프로필")
            }.tag(3)
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

