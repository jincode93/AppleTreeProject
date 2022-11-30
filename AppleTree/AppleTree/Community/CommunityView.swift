//
//  CommunityView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/14.
//

import SwiftUI

struct CommunityView: View {
    
    @State private var qaActive = false
    @State private var jobActive = false
    @State private var shareActive = false
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack{
                ZStack {
                    Image("community_back")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack(alignment: .leading){
                        Spacer()
                        VStack{
                            Text("APPLE TREE")
                                .font(.largeTitle).fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                        Spacer()
                        VStack{
                            Text("커뮤니티")
                                .font(.largeTitle).fontWeight(.bold).padding(EdgeInsets(top: 30, leading: 5, bottom: 0, trailing: 0))
                        }
                        
                        HStack{
                            //Q&A view
                            NavigationLink(destination: Q_AView()){
                                Image("QA")
                                    .resizable()
                                    .frame(width : 160, height : 210)
                                    .font(.largeTitle)
                            }
                            .padding(.leading, -1)
   
                            //job view
                            NavigationLink(destination: JobView()){
                                Image("job")
                                    .resizable()
                                    .frame(width : 160, height : 210)
                                    .font(.largeTitle)
                            }
                            .padding(.leading, 16)
                            

                        }.padding(.bottom, 20)
                        
                        NavigationLink(destination: TechView()){
                            Image("share")
                                .resizable()
                                .frame(width : 340, height : 140)
                                .font(.largeTitle)
                        }
                        .padding(.leading, 4)
                                                
                        Spacer()
                        Spacer()
                        
                    }
                }
            }
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
