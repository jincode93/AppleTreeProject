//
//  Q&AView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/16.
//

import SwiftUI

struct QAWriteView: View {
    @State var titleList = ["Xcode 설치 무한로딩", "Swift some 키워드 질문"]
    @State var textList = ["아무리 기다려도 Xcode가 설치되지 않아요ㅠㅠ", "some 키워드는 언제 사용하나요?"]
    @State var timeList = ["10분전", "1일전"]
    var body: some View {
        NavigationStack{
            ZStack {
                Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)).ignoresSafeArea(.all)
                ScrollView(.vertical) {
                    VStack {
                        ForEach(0..<titleList.count, id: \.self) { index in
                            NavigationLink(destination: PostView()){
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(titleList[index])
                                        .font(.headline)
                                        .bold()
                                    Text(textList[index])
                                        .font(.subheadline)
                                    Text(timeList[index])
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                }
                                .frame(minWidth: 320, alignment: .leading)
                                .padding()
                                .background(.white)
                                .padding(5)
                            }
                            .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct QAView_Previews: PreviewProvider {
    static var previews: some View {
        QAWriteView()
    }
}
