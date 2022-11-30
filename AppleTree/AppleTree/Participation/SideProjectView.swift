//
//  SideProjectView.swift
//  AppleTree
//
//  Created by Jero on 2022/11/14.
//

import SwiftUI

struct SideProjectView: View {
    let status: [String] = ["모집중", "모집마감", "모집중", "모집마감"]
    let sideProjectTitle: [String] = ["모바일 러닝 커뮤니티 앱", "주식모의투자 플랫폼", "시간관리앱", "카풀 앱"]
    let sideProjectContent: [String] = [
        "전국에는 400개 대학, 15만 개 동아리, 273만 명의 대학생과 에xx타임, 네이버 밴x, 포스터 등 동아리를 찾고 모집하는 여러 채널이 있습니다.",
        "프로젝트 주제는 주식 모의투자 플랫폼입니다.\n서비스는 웹 서비스(반응형 포함)입니다.",
        "저희 팀은 시간 관리 및 회고를 제공하는 사이드 플젝을 진행(기획 단계)하고 있습니다.",
        "우리는 실제 사용자가 있고 정말 시장이 원하는 서비스를 찾고 검증하고 만들고 고도화 합니다."]
    
    var body: some View {
        ScrollView {
            ZStack {
                Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0))
                VStack(alignment: .leading, spacing: 10) {
                    Text("")
                        .frame(height: 20)
                    ForEach(0 ..< sideProjectTitle.count, id: \.self) { index in
                        NavigationLink {
                            VStack (alignment: .leading, spacing: 20) {
                                Image("SideProject_01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text(sideProjectTitle[index])
                                    .font(.title3)
                                    .bold()
                                Text(sideProjectContent[index])
                                    .font(.body)
                                Spacer()
                            }
                            .padding()
                        } label: {
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text(status[index])
                                        .font(.caption)
                                        .frame(width: 50, height: 30)
                                        .foregroundColor(.white)
                                        .background(Color.mainRed)
                                        .bold()
                                        .cornerRadius(13)
                                    
                                    Text(sideProjectTitle[index])
                                        .bold()
                                }
                                Text(sideProjectContent[index])
                                    .multilineTextAlignment(.leading)
                                HStack {
                                    Image(systemName: "message")
                                    Text("댓글")
                                }
                                Text("")
                                Divider()
                            }
                            .foregroundColor(.black)
                        }
                        .padding()
                        
                    }
                    
                }
                
            }
        }
    }
}

struct SideProjectView_Previews: PreviewProvider {
    static var previews: some View {
        SideProjectView()
    }
}
