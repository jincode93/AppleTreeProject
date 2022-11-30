//
//  MyWriteCategroyTabView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/16.
//

import SwiftUI

struct MyWriteCategroyTabView: View {
    @State var currentTab: Int = 0
    @Namespace var namespace
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: self.$currentTab, content: {
                view1.tag(0)
                view2.tag(1)
                view3.tag(2)
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            .padding(.top, 10)
            
            navigationBarView
        }
        .background(.white)
        .padding(.top, 20)
    }
    
    var navigationitems: [String] = ["Q&A", "취업&이직", "기술관련"]
    
    var navigationBarView: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(Array(zip(self.navigationitems.indices, self.navigationitems)), id: \.0, content: {
                    index, name in
                    navBarItem(string: name, tab: index)
                })
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .frame(height: 10)
        //.edgesIgnoringSafeArea(.top)
    }
    
    func navBarItem(string: String, tab: Int) -> some View {
        Button {
            self.currentTab = tab
        } label: {
            VStack {
                Spacer()
                if self.currentTab == tab {
                    Text(string)
                        .foregroundColor(.red)
                        .font(.subheadline)
                        .bold()
                    Color(.red)
                        .frame(height: 4)
                        .matchedGeometryEffect(id: "underline", in: namespace, properties: .frame)
                } else {
                    Text(string)
                        .font(.subheadline)
                        .bold()
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.easeInOut(duration: 0.2), value: currentTab)
        }
        .buttonStyle(.plain)
    }
    
    var view1: some View {
        QAWriteView()
            .padding()
    }
    
    
    var view2: some View {
        JobWriteView()
            .padding()
    }
    
    var view3: some View {
        TechWriteView()
            .padding()
    }
    
}

struct MyWriteCategroyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyWriteCategroyTabView()
    }
}
