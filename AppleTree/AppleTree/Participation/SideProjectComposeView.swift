//
//  SideProjectComposeView.swift
//  ApplTree
//
//  Created by Jero on 2022/11/14.
//

import SwiftUI

struct SideProjectComposeView: View {
    @State private var title: String = ""
    @State private var content: String = "내용을 입력해주세요"
    @State private var imagePickerVisible: Bool = false
    @State private var selectedImage: Image? = Image(systemName: "")
    
    init() {
        UINavigationBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextField("제목을 입력하세요", text: $title)
                    .font(.body)
                    .bold()
                    .frame(height: 35)
                    .multilineTextAlignment(.leading)
                
                Divider()
                
                
                TextEditor(text: $content)
                    .font(.subheadline)
                    .scrollContentBackground(.hidden)
                    .frame(height: 270)
                    .onTapGesture {
                        if self.content == "내용을 입력해주세요" {
                            self.content = ""
                        }
                        hideKeyboard()
                    }
                
                Spacer()
            }
            .navigationBarTitle("글쓰기", displayMode: .inline)
            .navigationBarItems(
                trailing: Button(action: {
                    
                }, label: {
                    Text("등록")
                        .font(.body)
                        .bold()
                        .foregroundColor(.black)
                })
            )
            .padding()
        }
    }
    // 사용자가 키보드외에 영역을 터치했을 때 키보드가 숨김 처리해주는 함수
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct SideProjectComposeView_Previews: PreviewProvider {
    static var previews: some View {
        SideProjectComposeView()
    }
}
