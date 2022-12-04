//
//  Q&AView.swift
//  sample
//
//  Created by l1004ga on 2022/11/14.
//

import SwiftUI

struct Q_AView: View {
    @State private var viewToggle = true
    @State private var color1: Color = .mainRed
    @State private var color2: Color = .black
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Q&A").foregroundColor(.accentColor).font(.largeTitle).fontWeight(.bold)
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

struct ExDivider: View {
    let color: Color = .gray
    let width: CGFloat = 1.5
    var body: some View {
        Rectangle()
            .fill(Color.accentColor)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct TechCategoryView: View {
    var body: some View {
        List{
            //글쓰기1
            VStack(alignment: .leading){
                VStack{
                    Text("swift언어로 API 사용 시 codable 사용말고 다른...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 API를 연동해서 지도앱을 만들고 있는데 데이터 가져올 때 codabel 사용하는게 번거롭고 불편하더라구요. 다른 방법 있나요?")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:18, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("1분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("15")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기2
            VStack(alignment: .leading){
                VStack{
                    Text("Objetive-C에서 ;없으면 어떻게 되나요?")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 정말 줄마다 ;쓰는게 귀찮아서 그런데 방법이 없을까요? Objective-C는 C랑 비슷하게 만들어 져가지고 정말 귀찮게 하네요.")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("17분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("13")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기3
            VStack(alignment: .leading){
                VStack{
                    Text("Map API 불러와서 핀 찍는데 핀 커스텀을 어떻게...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("앱을 만들고 싶어요. 지도 앱을 만들고 싶어요. 디폴트 핀은 디자인이 어쩜 저렇게 안예쁘죠?")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("32분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("21")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기1
            VStack(alignment: .leading){
                VStack{
                    Text("swift언어로 API 사용 시 codable 사용말고 다른...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 API를 연동해서 지도앱을 만들고 있는데 데이터 가져올 때 codabel 사용하는게 번거롭고 불편하더라구요. 다른 방법 있나요?")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:18, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("1시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("26")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기2
            VStack(alignment: .leading){
                VStack{
                    Text("Objetive-C에서 ;없으면 어떻게 되나요?")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 정말 줄마다 ;쓰는게 귀찮아서 그런데 방법이 없을까요? Objective-C는 C랑 비슷하게 만들어 져가지고 정말 귀찮게 하네요.")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("2시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("15")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기3
            VStack(alignment: .leading){
                VStack{
                    Text("Map API 불러와서 핀 찍는데 핀 커스텀을 어떻게...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("앱을 만들고 싶어요. 지도 앱을 만들고 싶어요. 디폴트 핀은 디자인이 어쩜 저렇게 안예쁘죠?")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("3시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("19")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            
            
        }
        .listStyle(.plain)
        .background(Color.backgroundColor)
    }
}

struct CareerCategoryView: View {
    var body: some View {
        List{
            //글쓰기1
            VStack(alignment: .leading){
                VStack{
                    Text("OO 회사 다니시는 분 계신가요?? 분위기 어때요...?")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 이번에 OO 회사에서 연락이 왔는데 혹시 분위기가 어떤 편인가요?? 회사 직원 분들 계시면 조언 부탁드립니다")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:18, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("1분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("15")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기2
            VStack(alignment: .leading){
                VStack{
                    Text("카카오 이번 코테 많이 어려웠나요??")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("저만 어렵게 느껴진건지... 아니면 다른 분들도 어려웠던건지 궁금해요 ㅠㅠ")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("17분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("13")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기3
            VStack(alignment: .leading){
                VStack{
                    Text("OOO 인사담당자 입니다. 이번에 iOS 네이티브 개발자를 구인중...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("현재 회사 확장을 위해 개발자를 많이 채용중입니다. 관심이 있으신 분들은 아래 링크로 들어가셔서 많은 신청 부탁드립니다.")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("32분전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("21")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기1
            VStack(alignment: .leading){
                VStack{
                    Text("OOO 여기 복지가 어떤 편인가요??")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("제가 이번에 OOO에 합격했는데 모집공고나 들리는 소문으로는 복지가 엄청 좋은 편이던데 실제로 맞나요??")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:18, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("1시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("26")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기2
            VStack(alignment: .leading){
                VStack{
                    Text("OOO 인사담당자 입니다. 이번에 iOS 네이티브 개발자를 구인중...")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("현재 회사 확장을 위해 개발자를 많이 채용중입니다. 관심이 있으신 분들은 아래 링크로 들어가셔서 많은 신청 부탁드립니다.")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("2시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("15")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            //글쓰기3
            VStack(alignment: .leading){
                VStack{
                    Text("네이버 이번 코테 많이 어려웠나요??")
                        .fontWeight(.bold)
                }.padding(EdgeInsets(top: 10, leading:15, bottom: 0, trailing: 0))
                
                VStack{
                    Text("저만 어렵게 느껴진건지... 아니면 다른 분들도 어려웠던건지 궁금해요 ㅠㅠ")
                }.frame(width: 320)
                    .padding(EdgeInsets(top: 1, leading:15, bottom: 0, trailing: 0))
                
                
                VStack{
                    HStack{
                        VStack{
                            Text("3시간전")
                                .font(.callout)
                                .bold()
                            
                        }
                        Spacer()
                        VStack{
                            HStack(alignment: .top){
                                Image(systemName: "bubble.right")
                                Text("19")
                            }.padding(.trailing)
                        }
                    }
                }.padding(EdgeInsets(top: 2, leading:15, bottom: 0, trailing: 0))
                
                Divider()
            }
            
            
            
        }
        .listStyle(.plain)
        .background(Color.backgroundColor)
    }
}

struct Q_AView_Previews: PreviewProvider {
    static var previews: some View {
        Q_AView()
    }
}
