//
//  CategoryTabView.swift
//  AppleTree
//
//  Created by Jero on 2022/11/14.
//

import SwiftUI

struct CategoryTabView: View {
    @State var currentTab: Int = 0
    @Namespace var namespace
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: self.$currentTab, content: {
                view1.tag(0)
                view2.tag(1)
                view3.tag(2)
                view4.tag(3)
                view5.tag(4)
            })
            .tabViewStyle(.page(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            navigationBarView
        }
        .background(.white)
    }
    
    var navigationitems: [String] = ["강연/행사", "커피챗", "부트캠프", "사이드 프로젝트", "스터디"]
    
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
        .frame(height: 0)
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
        LectureEventView()
    }
    
    var view2: some View {
        CoffeeChatView()
    }
    
    var view3: some View {
        BootCampView()
    }
    
    var view4: some View {
        SideProjectView()
            .overlay {
                HStack {
                    Spacer()
                    // To next View
                    NavigationLink {
                        SideProjectComposeView()
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
                .position(x: 175, y: 430)
                .padding()
            }
    }
    
    var view5: some View {
        StudyView()
            .overlay {
                HStack {
                    Spacer()
                    // To next View
                    NavigationLink {
                        SideProjectComposeView()
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
                .position(x: 175, y: 430)
                .padding()
            }
    }
}

struct CategoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTabView()
    }
}
