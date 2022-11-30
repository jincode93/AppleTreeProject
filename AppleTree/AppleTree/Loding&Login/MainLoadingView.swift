//
//  MainLoadingView.swift
//  AppleTree
//
//  Created by 진준호 on 2022/11/14.
//

import SwiftUI

struct MainLoadingView: View {
    
    @State private var isActive = false
    
    @State private var xAxis: CGFloat = 35
    @State private var yAxis: CGFloat = -40
    @State private var degree: Double = 0
    
    var body: some View {
        
        if isActive {
            LoginView()
        } else {
            ZStack {
                Image("loding")
                    .resizable()
                    .ignoresSafeArea()
                
                Image("apple")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: degree))
                    .offset(x: xAxis, y: yAxis)
            }
            .onAppear {
                withAnimation(.easeIn(duration: 0.8)) {
                    self.yAxis = 30
                    self.degree = 30
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    withAnimation(.easeOut(duration: 2)) {
                        self.xAxis = 80
                        self.degree = 380
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct MainLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        MainLoadingView()
    }
}
