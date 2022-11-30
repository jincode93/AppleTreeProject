//
//  Q&AView.swift
//  sample
//
//  Created by danny.ho_2PC on 2022/11/14.
//

import SwiftUI

struct TechView: View {
    @State private var viewToggle = true
    @State private var color1: Color = .mainRed
    @State private var color2: Color = .black
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Text("iOS 기술정보 공유").foregroundColor(.accentColor).font(.largeTitle).fontWeight(.bold)
                        .padding(EdgeInsets(top: 0, leading:15, bottom: 10, trailing: 0))
                    
                    Spacer()
  
                }
                HStack{
                    Spacer()
                    Button(action: {
                        viewToggle.toggle()
                        color1 = .mainRed
                        color2 = .black
                    }) {
                        Text("기술관련")
                            .foregroundColor(color1)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        viewToggle.toggle()
                        color1 = .black
                        color2 = .mainRed
                    }) {
                        Text("취업 및 이직")
                            .foregroundColor(color2)
                    }
                    
                    Spacer()
                    
                }.fontWeight(.bold).font(.title2)
                ExDivider()
                
                if viewToggle {
                    TechCategoryView()
                        .overlay {
                            HStack {
                                Spacer()
                                // To next View
                                Button {
                                    
                                } label: {
                                    Color.clear
                                        .overlay {
                                            Circle()
                                                .fill(Color.mainRed)
                                                .frame(width: 50, height: 50)
                                            Image(systemName: "pencil.line")
                                                .resizable()
                                                .frame(width: 18, height: 18)
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 75, height: 55)
                                        .cornerRadius(10)
                                }
                            }
                            .position(x: 175, y: 550)
                            .padding()
                        }
                } else {
                    CareerCategoryView()
                        .overlay {
                            HStack {
                                Spacer()
                                // To next View
                                Button {
                                    
                                } label: {
                                    Color.clear
                                        .overlay {
                                            Circle()
                                                .fill(Color.mainRed)
                                                .frame(width: 50, height: 50)
                                            Image(systemName: "pencil.line")
                                                .resizable()
                                                .frame(width: 18, height: 18)
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 75, height: 55)
                                        .cornerRadius(10)
                                }
                            }
                            .position(x: 175, y: 550)
                            .padding()
                        }
                }
            }
        }
        .background(Color.backgroundColor)
    }
}

struct TechView_Previews: PreviewProvider {
    static var previews: some View {
        TechView()
    }
}

