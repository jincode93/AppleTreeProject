//
//  LectureEventView.swift
//  AppleTree
//
//  Created by hyemi on 2022/11/14.
//

import SwiftUI

struct LectureEventView: View {
    var stateList = ["모집중", "모집중", "모집마감", "모집마감"]
    var titleList = ["워니님과 함께하는 이력서 워크샵", "네드팍의 기초스터디", "let us: Go!", "멋쟁이 사자처럼 앱스쿨 1기 사전 설명회"]
    var dateList = ["일정: 11.24(목) 19:00 ~ 21:30", "일정: 11.16(수) 19:00 ~ 22:00", "일정: 11.05(토) 13:00 ~ 17:00", "일정: 09.09(금) 15:00 ~ 16:00"]
    var placeList = ["장소: 광화문", "장소: 멋사", "장소: 테헤란로 518","장소: Zoom 회의실"]
    var starList = ["star", "star.fill", "star.fill", "star"]
    
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    ForEach(0..<stateList.count, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.mainRed)
                                        .frame(width: 50, height: 30)
                                    Text(stateList[index])
                                        .foregroundColor(.white)
                                        .font(.caption)
                                        .bold()
                                }
                                Text(titleList[index])
                                    .font(.headline)
                                    .bold()
                            }
                            
                            
                            Text(dateList[index])
                                .font(.subheadline)
                            Text(placeList[index])
                                .font(.subheadline)
                            Image(systemName: starList[index])
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .foregroundColor(.yellow)
                        }
                        
                    }
                    .padding()
                    .background(.white)
                    .padding(5)
                }
                
            }
            .background(Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)))
//            Button(action: {}) {
//                ZStack {
//                    Circle()
//                        .fill(.red)
//                        .frame(width: 50, height: 50)
//                    Image(systemName: "pencil.line")
//                        .resizable()
//                        .frame(width: 18, height: 18)
//                        .foregroundColor(.white)
//
//                }
//                .offset(x: 140, y: 160)
//            }
            
        }
        .padding()
        .background(Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)))
    }
}

struct LectureEventView_Previews: PreviewProvider {
    static var previews: some View {
        LectureEventView()
    }
}
