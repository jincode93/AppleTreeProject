//
//  TechWriteView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/16.
//

import SwiftUI

struct TechWriteView: View {
    @State var titleList = ["SwiftUI4.0 업데이트"]
    @State var textList = ["https://developer.apple.com/kr/xcode/swiftui/\n 확인해보세요"]
    @State var timeList = ["5일전"]
    var body: some View {
        NavigationStack{
            ZStack {
                Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)).ignoresSafeArea(.all)
                ScrollView(.vertical) {
                    VStack {
                        NavigationLink(destination: PostView()){
                            ForEach(0..<titleList.count, id: \.self) { index in
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

struct TechWriteView_Previews: PreviewProvider {
    static var previews: some View {
        TechWriteView()
    }
}
