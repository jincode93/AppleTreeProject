//
//  JobView.swift
//  sample
//
//  Created by danny.ho_2PC on 2022/11/14.
//

import SwiftUI

struct JobView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Image("job_back")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                
                Text("JOB")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 0)
                    .padding(.leading)
                
                HStack{
                    Text("새모이").fontWeight(.bold).foregroundColor(.accentColor)
                    Text("님을 위한 채용 공고").fontWeight(.bold)
                }
                .font(.title3)
                .multilineTextAlignment(.leading)
                .padding(.top, 10)
                .padding(.leading, 20)
                
                List{
                    
                    //채용공고 첫줄
                    HStack{
                        
                        VStack(alignment: .leading){
                            Image("noty3").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("카카오 Tech부서").padding(.leading, 5)
                            Text("iOS 개발자 공채").padding(.leading, 5)
                            HStack{
                                Text("D-6").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo3").resizable().frame(width:60, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:35, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        
                        Spacer()
                        
                        VStack(alignment: .leading){
                            Image("noty4").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("라인 글로벌 메신저팀").padding(.leading, 5)
                            Text("iOS 경력자 모집").padding(.leading, 5)
                            HStack{
                                Text("D-9").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo4").resizable().frame(width:60, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:35, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        
                    }.padding(EdgeInsets(top: 0, leading:10, bottom: 20, trailing: 10))
                    
                    //채용공고 둘째줄
                    HStack{
                        
                        VStack(alignment: .leading){
                            Image("noty2").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("롯데정보통신 시스템..").padding(.leading, 5)
                            Text("개발자 신입 채용").padding(.leading, 5)
                            HStack{
                                Text("D-11").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo2").resizable().frame(width:80, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:10, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        Spacer()
                        VStack(alignment: .leading){
                            Image("noty1").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("현대자동자 개발본부").padding(.leading, 5)
                            Text("iOS 신입/경력 모집").padding(.leading, 5)
                            HStack{
                                Text("D-15").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo1").resizable().frame(width:70, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:20, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
                    
                    //채용공고 셋째줄
                    HStack{
                       
                        VStack(alignment: .leading){
                            Image("noty3").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("카카오 Tech부서").padding(.leading, 5)
                            Text("iOS 개발자 공채").padding(.leading, 5)
                            HStack{
                                Text("D-6").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo3").resizable().frame(width:60, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:35, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        Spacer()
                        VStack(alignment: .leading){
                            Image("noty4").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("라인 글로벌 메신저팀").padding(.leading, 5)
                            Text("iOS 경력자 모집").padding(.leading, 5)
                            HStack{
                                Text("D-9").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo4").resizable().frame(width:60, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:35, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
                    
                    //채용공고 네째줄
                    HStack{
                        
                        VStack(alignment: .leading){
                            Image("noty2").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("롯데정보통신 시스템..").padding(.leading, 5)
                            Text("개발자 신입 채용").padding(.leading, 5)
                            HStack{
                                Text("D-11").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo2").resizable().frame(width:80, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:10, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                        Spacer()
                        VStack(alignment: .leading){
                            Image("noty1").resizable().frame(width: 150, height: 100).cornerRadius(8)
                            Text("현대자동자 개발본부").padding(.leading, 5)
                            Text("iOS 신입/경력 모집").padding(.leading, 5)
                            HStack{
                                Text("D-15").padding(5).fontWeight(.bold).cornerRadius(5).font(.callout).foregroundColor(.mainRed)
                                Image("notyLogo1").resizable().frame(width:70, height: 30)
                                    .padding(EdgeInsets(top: 0, leading:20, bottom: 5, trailing: 0))
                            }
                        }.background(.white).cornerRadius(10).shadow(radius: 5)
                     
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
                }
                .listStyle(.plain)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(content: {
            ToolbarItem (placement: .navigationBarLeading)  {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Back")
                }
                .foregroundColor(.white)
                .onTapGesture {
                    self.presentation.wrappedValue.dismiss()
                }
            }
        })
    }
}




struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        JobView()
    }
}


