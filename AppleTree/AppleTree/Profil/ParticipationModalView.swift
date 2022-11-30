//
//  ScrapModalView.swift
//  AppleTree
//
//  Created by 진준호 on 2022/11/14.
//

import SwiftUI

struct ParticipationModalView: View {
    var contentName: String
    var text: [String] = [
        "앱스쿨 1기",
        "프리온보딩",
        "웹 · 모바일 스쿨",
        "프론트엔드 스쿨",
        "iOS 챌린지",
        "캠프 스쿨"
    ]
    var imageList: [String] = [
        "LikeLion_App",
        "FastCampus_preonBoarding",
        "NaverBoostCamp_Mobile",
        "LikeLion_App",
        "FastCampus_preonBoarding",
        "NaverBoostCamp_Mobile"
    ]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Text("내가 신청한 \(contentName)")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.leading, 10)
                ExDivider()
                BootCampView()
                    .background(Color.backgroundColor)
                //                List {
                //                    ForEach(0..<text.count, id: \.self) { index in
                //                        NavigationLink(destination: PostView()){
                //                            VStack{
                ////                                RoundedRectangle(cornerRadius: 20)
                //                                Image(imageList[index])
                //                                    .resizable()
                //                                    .frame(width: 320, height: 150)
                //                                    .cornerRadius(15)
                //                                    .shadow(radius: 10)
                //                                    .padding()
                //                                Text("\(text[index])")
                //                                    .font(.title2)
                //                                    .bold()
                //                            } // ZStack
                //                        } // NavigationLink
                //                    } // ForEach
                //                } // List
                //                .listStyle(.plain)
            } // VStack
            .background(Color.backgroundColor)
        } // NavigationStack
    } // body
} // Struct

struct ParticipationModalView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipationModalView(contentName: String())
    }
}
