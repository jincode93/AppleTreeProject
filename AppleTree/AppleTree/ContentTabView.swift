//
//  ContentTabView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/14.
//

import SwiftUI

struct ContentTabView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection){
            NavigationStack{
                CommunityView()
            }.tabItem{
                Text("Community")
            }.tag(1)
            
            NavigationStack{
                ParticipationView()
            }.tabItem{
                Text("Participation")
            }.tag(2)
            
            NavigationStack{
                ProfileView()
            }.tabItem{
                Text("Profile")
            }.tag(3)
        }
    }
}

struct ContentTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTabView()
    }
}
