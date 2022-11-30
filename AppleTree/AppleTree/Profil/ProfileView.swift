//
//  ProfileView.swift
//  AppleTree
//
//  Created by 진태영 on 2022/11/14.
//

import SwiftUI

struct ProfileView: View {
    @State private var showModal0 = false // 내가 쓴 게시글 보여주는 변수
    @State private var showModal1 = false // 스크랩 모달뷰 보여주는 변수
    @State private var showModal2 = false // 참여 컨텐츠 모달뷰 보여주는 변수
    @State private var showModal3 = false // 내가 쓴 게시글 모달뷰 보여주는 변수
    
    var myScrapString: [String] = [
        "SwiftUI",
        "Obj-c",
        "Algorithm",
        "XCode",
        "PlayGround",
        "Design",
        "더보기",
        "가 보여주는",
        "리스트"
    ]
    var participationString: [String] = [
        "강연/행사",
        "커피챗",
        "부트캠프",
        "사이드 프로젝트",
        "스터디모임"
    ]
    var myDoc: [String] = [
        "사람을 화나게 하는",
        "방법 중 하나는",
        "하던 말을 끊는",
        "것이고",
        "다른 하나는",
        "궁금하지?",
    ]
    
    var body: some View {
            VStack{
                NavigationStack {
                    
                    // 프로필 상단
                    HStack(alignment: .center){
                        
                        Image("NedPark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .clipShape(Circle())
                            .padding(.leading, 20)
                            .padding(.trailing, 30)
                        
                        VStack(alignment: .leading){
                            Text("네드 퐉")
                                .font(.largeTitle)
                                .padding(.bottom, 1)
                            HStack{
                                Image("GB")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("기가바이트")
                                    .font(.title3)
                                    .bold()
                                NavigationLink(destination: {
                                    LevelView()
                                }){
                                    Image(systemName: "questionmark.circle")
                                        .font(.title3)
                                        .foregroundColor(.mainRed)
                                }
                                
                            } // HStack
                            HStack {
                                ProgressView("", value: 70, total: 100)
                                    .frame(width: 140)
                                    .padding(.bottom, 14.0)
                                Text("70%")
                                    .font(.system(size: 15))
                            } // HStack
                        } // VStack
                        .padding(.trailing)
                        .padding(.top, 10)
                    } // HStack
                    .padding(.top, 15)
                    Spacer()
                    
                    
                    // 키워드 Stack
                    VStack(alignment: .leading) {
                        Text("나의 키워드")
                            .padding(.leading)
                            .padding(.bottom, 5)
                            .font(.title3)
                            .bold()
                        Image("keyword")
                            .padding(.leading)
                    }
                    .padding(.bottom)
                    .padding(.top)
                    
                    // 게시글 Stack
                    VStack {
                        Divider()
                        VStack(alignment: .leading, spacing: 40) {
                            NavigationLink(destination: MyWriteView()) {
                                HStack {
                                    Text("내가 쓴 글")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.gray)
                                    
                                }
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            }
                        }
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 20) {
                            NavigationLink(destination: ScrapListView()) {
                                HStack {
                                    Text("마이 스크랩")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.gray)
                                    
                                }
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            }
                        }
                        Divider()
                        
                        
                        VStack(alignment: .leading, spacing: 20) {
                            NavigationLink(destination: ParticipationModalView(contentName: "프로그램")) {
                                HStack {
                                    Text("참여현황")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.gray)
                                    
                                }
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            }
                        }
                        Divider()

                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    VStack(alignment: .center) {
                        Text("참여 예정 프로그램")
                            .padding(.leading)
                            .font(.title3)
                            .bold()
                            .padding(.bottom, 10)
                            .padding(.top, 10)
                        
                        ScrollView(.horizontal){
                            
                            HStack{
                                ZStack(alignment: .top) {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 200)
                                        .foregroundColor(.backgroundColor)
                                        .cornerRadius(10)
                                    Image("participation1")
                                        .frame(width: 360, height: 180)
                                }
                                ZStack(alignment: .top) {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 200)
                                        .foregroundColor(.backgroundColor)
                                        .cornerRadius(10)
                                    Image("participation2")
                                        .frame(width: 360, height: 180)
                                }
                                ZStack(alignment: .top) {
                                    Rectangle()
                                        .frame(width: UIScreen.main.bounds.width * 0.8, height: 200)
                                        .foregroundColor(.backgroundColor)
                                        .cornerRadius(10)
                                    Image("participation3")
                                        .frame(width: 360, height: 180)
                                }
                                }
                            
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    
                    
//                    VStack {
//                        Image( )
//                    }
                                
                                //                VStack(alignment: .leading){
                                //                    // 내가 쓴 글
                                //                    Text("내가 쓴 글")
                                //                        .padding()
                                //                        .padding(.leading)
                                //                        .font(.title3)
                                //                        .bold()
                                //                    ScrollView(.horizontal, showsIndicators: false){
                                //                        HStack{
                                //                            ForEach(0..<5) {number in
                                //                                ZStack{
                                //                                    RoundedRectangle(cornerRadius: 20)
                                //                                        .fill(Color.mainRed)
                                //                                        .frame(width: 200, height: 100)
                                //                                        .shadow(radius: 5)
                                //                                        .padding(.horizontal)
                                //                                    Text("\(myDoc[number])")
                                //                                        .font(.title2)
                                //                                        .bold()
                                //                                        .foregroundColor(.white)
                                //                                } // ZStack
                                //                                .onTapGesture{
                                //                                    showModal0 = true
                                //                                }
                                //                                .sheet(isPresented: $showModal0){
                                //                                    PostView()
                                //                                }
                                //                            } // ForEach
                                //                            ZStack{
                                //                                RoundedRectangle(cornerRadius: 20)
                                //                                    .fill(.gray)
                                //                                    .frame(width: 200, height: 100)
                                //                                    .shadow(radius: 5)
                                //                                    .padding(.horizontal)
                                //                                Text("더보기")
                                //                                    .font(.title2)
                                //                                    .bold()
                                //                                    .foregroundColor(.white)
                                //                            } // ZStack
                                //                            .onTapGesture{
                                //                                showModal0 = true
                                //                            }
                                //                            .sheet(isPresented: $showModal0){
                                //                                myDocModalView()
                                //                            }
                                //                        } // HStack
                                //                    } // ScrollView
                                //
                                //
                                //                    Divider()
                                //
                                //                    Text("My Scrap 폴더")
                                //                    // MyScrap
                                //                        .padding()
                                //                        .font(.title3)
                                //                        .bold()
                                //                    ScrollView(.horizontal, showsIndicators: false){
                                //                        HStack{
                                //                            ForEach(0..<5) {number in
                                //                                ZStack{
                                //                                    Image(systemName: "folder.fill")
                                //                                        .resizable()
                                //                                        .frame(width: 150, height: 100)
                                //                                        .foregroundColor(Color.mainRed)
                                //                                        .shadow(radius: 5)
                                //                                        .padding(.horizontal)
                                //                                    //                                RoundedRectangle(cornerRadius: 20)
                                //                                    //                                    .fill(Color.mainRed)
                                //                                    //                                    .frame(width: 200, height: 100)
                                //                                    //                                    .shadow(radius: 5)
                                //                                    //                                    .padding(.horizontal)
                                //                                    Text("\(myScrapString[number])")
                                //                                        .font(.title2)
                                //                                        .bold()
                                //                                        .foregroundColor(.white)
                                //                                } // ZStack
                                //                                .onTapGesture{
                                //                                    showModal1 = true
                                //                                }
                                //                                .sheet(isPresented: self.$showModal1){
                                //                                    ScrapModalView(contentName: myScrapString[number])
                                //                                }
                                //                            } // ForEach
                                //                            ZStack{
                                //                                Image(systemName: "folder.fill")
                                //                                    .resizable()
                                //                                    .frame(width: 150, height: 100)
                                //                                    .foregroundColor(Color.mainRed)
                                //                                    .shadow(radius: 5)
                                //                                    .padding(.horizontal)
                                //                                Text("더보기")
                                //                                    .font(.title2)
                                //                                    .bold()
                                //                                    .foregroundColor(.white)
                                //                            } // ZStack
                                //                            .onTapGesture{
                                //                                showModal1 = true
                                //                            }
                                //                            .sheet(isPresented: self.$showModal1){
                                //                                // ScrapModalView()
                                //                            }
                                //                        } // HStack
                                //                    } // ScrollView
                                //                    .padding(.horizontal, 10.0)
                                //
                                //                    Text("내가 신청한 참여")
                                //                        .padding(.horizontal, 10.0)
                                //                        .font(.title3)
                                //                        .bold()
                                //                    ScrollView(.horizontal, showsIndicators: false){
                                //                        HStack{
                                //                            ForEach(0..<5) { number in
                                //                                ZStack{
                                //                                    RoundedRectangle(cornerRadius: 20)
                                //                                        .fill(Color.mainRed)
                                //                                        .frame(width: 200, height: 150)
                                //                                        .shadow(radius: 10)
                                //                                        .padding(.horizontal)
                                //                                    Text("\(participationString[number])")
                                //                                        .font(.title2)
                                //                                        .bold()
                                //                                        .foregroundColor(.white)
                                //                                } // ZStack
                                //                                .onTapGesture {
                                //                                    showModal2 = true
                                //                                }
                                //                                .sheet(isPresented: $showModal2){
                                //                                    ParticipationModalView(contentName: participationString[number])
                                //                                }
                                //                            } // ForEach
                                //                        } // HStack
                                //                    } // ScrollView
                                //                    .padding(.horizontal, 10.0)
                                //                } // VStack

                        }
                Spacer()
            } //VStack
    } // body
} // PrfileView




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
