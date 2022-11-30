//
//  JobWriteView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/16.
//

import SwiftUI

struct JobWriteView: View {
    @State var titleList = ["카카오 신입채용 질문"]
    @State var textList = ["iOS 직군 지원하려는 코테 C++로 봐도 상관없나요?"]
    @State var timeList = ["7일전"]
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

struct JobWriteView_Previews: PreviewProvider {
    static var previews: some View {
        JobWriteView()
    }
}
