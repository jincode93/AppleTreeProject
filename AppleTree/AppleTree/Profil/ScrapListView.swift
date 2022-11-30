//
//  ScrapListView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/16.
//

import SwiftUI

struct ScrapListView: View {
    var text: [String] = [
        "SwiftUI",
        "Obj-C",
        "Algorithm",
        "XCode",
        "PlayGround",
        "Design"
    ]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                HStack {
                    Text("스크랩 게시글 폴더")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.leading, 10)
                    Spacer()
                    Image(systemName: "folder.badge.plus")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }
                
                ExDivider()
                
                List {
                    ForEach(0..<text.count, id: \.self) { index in
                        HStack {
                            NavigationLink(destination: ScrapModalView(contentName: text[index])){
                                ZStack{
                                    Image(systemName: "folder")
                                        .resizable()
                                        .foregroundColor(Color.mainRed)
                                        .frame(width: 150, height: 120)
                                        .shadow(radius: 5)
                                        .padding()
                                    Text("\(text[index])")
                                        .font(.title2)
                                        .bold()
                                        .foregroundColor(.mainRed)
                                        .padding(.top, 30)
                                } // ZStack
                            }
                        }
                    } // ForEach
                } // List
                .listStyle(.plain)
                
            } // VStack
        } // NavigationStack
    }
}

struct ScrapListView_Previews: PreviewProvider {
    static var previews: some View {
        ScrapListView()
    }
}
