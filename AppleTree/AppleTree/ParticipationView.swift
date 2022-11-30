//
//  ParticipationView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/15.
//

import SwiftUI

struct ParticipationView: View {
    @State private var search: String = ""
    
    @State private var opacityBanner1: Double = 0
    @State private var opacityBanner2: Double = 1
    
    var body: some View {
        VStack {
            
            ZStack {
                Image("bannerImage1")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.13)
                    .opacity(opacityBanner1)
                
                
                Image("bannerImage2")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.13)
                    .opacity(opacityBanner2)
            }
            .onAppear {
                withAnimation(.easeIn(duration: 1).delay(3).repeatForever()) {
                    self.opacityBanner1 = 1
                    self.opacityBanner2 = 0
                }
                
            }
            
            TextField("행사, 커피챗, 부트캠프, 프로젝트 검색하기", text: $search)
                .font(.callout)
                .padding(12)
                .padding(.leading, 30)
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(.systemGray3))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                )
                .padding()
            
            CategoryTabView()
                .padding(.vertical, 10)
        }
    }
}

struct ParticipationView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipationView()
    }
}
