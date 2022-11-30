//
//  LevelView.swift
//  AppleTree
//
//  Created by 진준호 on 2022/11/16.
//

import SwiftUI

struct LevelView: View {
    
    var body: some View {
        VStack {
            Image("Level")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}
