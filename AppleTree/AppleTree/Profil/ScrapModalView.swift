//
//  ScrapModalView.swift
//  AppleTree
//
//  Created by 진준호 on 2022/11/14.
//

import SwiftUI

struct ScrapModalView: View {
    var contentName: String
    var text: [String] = [
        "SwiftUI",
        "Obj...c",
        "Alg..m",
        "XCode",
        "PlayGround",
        "Design",
        "더보기",
        "가 보여주는",
        "리스트"
    ]
    
    var body: some View {
        //NavigationStack{
        
        
        VStack(alignment: .leading) {
            Text("\(contentName) 스크랩 게시글")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .padding(.leading, 10)
            ExDivider()
            
            TechCategoryView()
            //                List {
            //                    ForEach(0..<text.count, id: \.self) { index in
            //                        NavigationLink(destination: PostView()){
            //                            ZStack{
            //                                RoundedRectangle(cornerRadius: 20)
            //                                    .fill(Color.mainRed)
            //                                    .frame(width: 320, height: 150)
            //                                    .shadow(radius: 10)
            //                                    .padding()
            //                                Text("\(text[index])")
            //                                    .font(.title2)
            //                                    .bold()
            //                                    .foregroundColor(.white)
            //                            } // ZStack
            //                        }
            //                    } // ForEach
            //                } // List
            //                .listStyle(.plain)
        } // VStack

    }
    //} // NavigationStack
    
}

struct ScrapModalView_Previews: PreviewProvider {
    static var previews: some View {
        ScrapModalView(contentName: String())
    }
}
