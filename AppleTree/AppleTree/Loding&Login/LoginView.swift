//
//  LoginView.swift
//  AppleTree
//
//  Created by 진준호 on 2022/11/14.
//

import SwiftUI

struct LoginView: View {
    
    @State private var idString: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("loginView")
                    .resizable()
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        Capsule()
                            .frame(width: 250, height: 50)
                            .foregroundColor(.white)
                        
                        HStack {
                            Image(systemName: "person.2.fill")
                                .padding(.leading)
                                .foregroundColor(.gray)
                            
                            TextField("아이디", text: $idString)
                                .font(.title2)
                                .foregroundColor(.gray)
                                .background(Color.white)
                                .frame(width: 180, height: 50)
                        }
                        .opacity(0.5)
                    }
                    .padding(.bottom, 5)
                    
                    ZStack {
                        Capsule()
                            .frame(width: 250, height: 50)
                            .foregroundColor(.white)
                        
                        HStack {
                            Image(systemName: "lock.fill")
                                .padding(.leading)
                                .foregroundColor(.gray)
                            
                            TextField("비밀번호", text: $password)
                                .font(.title2)
                                .foregroundColor(.gray)
                                .background(Color.white)
                                .frame(width: 180, height: 50)
                        }
                        .opacity(0.5)
                    }
                    .padding(.bottom, 5)
                    
                    
                    ZStack {
                        Capsule()
                            .frame(width: 250, height: 50)
                            .foregroundColor(.blue)
                        
                        NavigationLink(destination: ContentView()
                            .navigationBarHidden(true)) {
                                Text("로그인")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200, height: 50)
                            }
                    }
                    
                    
                    Button(action: {
                        
                    }){
                        Text("Apple Tree 회원가입")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.top, 5)
                    }
                    
                    Button(action: {
                        
                    }){
                        Text("아이디 / 비밀번호 찾기")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.top, 1)
                    }
                    
                    HStack {
                        ZStack {
                            Image("kakao")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Image("naver")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            Image("google")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                        }
                    }
                    .frame(width: 230)
                    .padding(.top, 80)
                    .padding(.bottom, 100)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
