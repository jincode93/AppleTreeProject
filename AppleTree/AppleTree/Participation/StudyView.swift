//
//  StudyView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/16.
//

import SwiftUI

struct StudyView: View {
    let status: [String] = ["모집중", "모집중", "모집중", "모집중"]
    let studyProjectTitle: [String] = ["알고리즘 스터디 모집합니다", "주말 모각코 모집", "SwiftUI 스터디원 구합니다", "CS 스터디 모집합니다"]
    let studyProjectContent: [String] = [
        "매일 저녁 ~ 새벽 시간에 모각코 하실분 모집합니다. 모르는건 함께 재밌게 공부해 나가고 싶어서 만들려합니다🔥",
        "모각코 구합니다! 혼자 공부하시는 분들 서로 자극 받으려고 모집하게 되었습니다. 아침에 일어나자마자 코딩하는 습관 갖고 싶으신 분들 언제든지 환영해요!",
        "앱출시를 목표로 함께 공부할 분들을 모집합니다. 규칙, 주제 등은 모집되는대로 같이 고민해봐요.",
        "면버 대비 / 꼬리 질문들을 대비하여 CS를 매우 깊게 파면서 공부하실 분 구합니다!"]
    
    var body: some View {
        ScrollView {
            ZStack {
                Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)).ignoresSafeArea(.all)
                VStack(alignment: .leading, spacing: 10) {
                    Text("")
                        .frame(height: 20)
                    ForEach(0 ..< studyProjectTitle.count, id: \.self) { index in
                        NavigationLink {
                            VStack (alignment: .leading, spacing: 20) {
                                Image("SideProject_01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text(studyProjectTitle[index])
                                    .font(.title3)
                                    .bold()
                                Text(studyProjectContent[index])
                                    .font(.body)
                                Spacer()
                            }
                            .padding()
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(status[index])
                                        .font(.caption)
                                        .frame(width: 50, height: 30)
                                        .foregroundColor(.white)
                                        .background(Color.mainRed)
                                        .bold()
                                        .cornerRadius(13)
                                    
                                    Text(studyProjectTitle[index])
                                        .bold()
                                }
                                Text(studyProjectContent[index])
                                    .multilineTextAlignment(.leading)
                                HStack {
                                    Image(systemName: "message")
                                    Text("댓글")
                                }
                                Text("")
                                Divider()
                            }
                            .foregroundColor(.black)
                        }
                        .padding()
                        
                    }
                    
                }
                
            }
        }
    }
}

struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
    }
}
