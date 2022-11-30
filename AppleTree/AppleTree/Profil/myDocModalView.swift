//
//  myDocModalView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/16.
//

import SwiftUI

struct myDocModalView: View {
    var text: [String] = [
        "사람을 화나게 하는",
        "방법 중 하나는",
        "하던 말을 끊는",
        "것이고",
        "다른 하나는",
        "궁금하지?",
    ]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Text("내가 쓴 글")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.leading, 10)
                
                List {
                    ForEach(0..<text.count, id: \.self) { index in
                        NavigationLink(destination: PostView()){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.mainRed)
                                    .frame(width: 320, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                Text("\(text[index])")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                            } // ZStack
                        } // NavigationLink
                    } // ForEach
                } // List
                .listStyle(.plain)
            } // VStack
        } // NavigationStack
    }
}

struct myDocModalView_Previews: PreviewProvider {
    static var previews: some View {
        myDocModalView()
    }
}
