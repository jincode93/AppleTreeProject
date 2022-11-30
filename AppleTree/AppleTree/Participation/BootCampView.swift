//
//  BootCampView.swift
//  AppleTree
//
//  Created by Jero on 2022/11/14.
//

import SwiftUI

struct BootCampView: View {
    let imageName: [String] = ["LikeLion_App", "FastCampus_preonBoarding", "NaverBoostCamp_Mobile"]
    let schoolName: [String] = ["APP SCHOOL", "PreOnBoarding", "Naver"]
    let schoolTitle: [String] = ["탄탄한 기본기와 실무에 기반한 iOS 앱 개발", "최종 합격까지 도달하는 기술 과제는 무엇이 다를까요?", "지속 가능한 성장을 위한 부스트캠프입니다."]
    
    let detailIcon: [String] = ["🚀", "🚩", "🔱", "🛸"]
    let detailCaption: [String] = [
        "개발기초와 실무능력을 갖춘 iOS 개발자 양성 교육",
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack(alignment: .leading) {
                        ForEach(0 ..< imageName.count, id: \.self) { index in
                            NavigationLink {
                                VStack(alignment: .leading, spacing: 15) {
                                    Text(detailIcon[index])
                                        .font(.largeTitle)
                                    Text(schoolName[index])
                                        .font(.largeTitle)
                                        .bold()
                                    Image(imageName[index])
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(20)
                                    Text(schoolTitle[index])
                                        .font(.title2)
                                        .bold()
                                    Text(schoolTitle[0])
                                    Text("WHY 앱 SCHOOL?")
                                        .frame(width: 200, height: 30)
                                        .background(Color("MainColor"))
                                        .font(.title3)
                                        .bold()
                                        .foregroundColor(.white)
                                    
                                    Text("1. 현직 CTO와 함께 iOS 개발의 기본기와 실무 기술을 모두 잡는 교육\n2. 커뮤니티 기반으로 함께 성장하는 부트캠프\n3. 좋은 주니어 개발자로 잘 자라나는 다양한 활동(스프린트 회고 / 실무 특강 / 이력서 워크샵)")
                                    Spacer()
                                }
                                .padding()
                            } label: {
                                VStack(alignment: .leading, spacing: 5) {
                                    Image(imageName[index])
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(20)
                                    HStack {
                                        Text(schoolName[index])
                                            .font(.title2)
                                            .bold()
                                        Spacer()
                                        Image(systemName: "star")
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .foregroundColor(.yellow)
                                    }
                                    
                                    Text(schoolTitle[index])
                                        .font(.subheadline)
                                }
                                .padding(20)
                                .foregroundColor(.black)
                            }
                        }
                    }
                }
                .background(Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)))
            }
        }
    }
}

struct BootCampView_Previews: PreviewProvider {
    static var previews: some View {
        BootCampView()
    }
}
