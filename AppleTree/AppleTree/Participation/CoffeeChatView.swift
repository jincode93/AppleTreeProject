import SwiftUI

struct CoffeeChatView: View {
    var imageList = ["coffeeChatProfileImage0", "coffeeChatProfileImage1", "coffeeChatProfileImage2", "coffeeChatProfileImage3"]
    var nameList = ["네드팍", "전유진", "임흥렬", "김미리"]
    var companyList = ["멋사 앱스쿨", "멋사 앱스쿨", "멋사 앱스쿨", "멋사 앱스쿨"]
    var jobList = ["iOS개발 | 시니어", "프론트엔드 | 주니어", "프론트엔드 | 주니어", "프론트엔드 | 주니어"]
    var textList = ["Missing argument for parameter 'verbatim' in call", "Missing argument for parameter 'verbatim' in call", "Missing argument for parameter 'verbatim' in call", "Missing argument for parameter 'verbatim' in call"]
    var starList = ["star.fill", "star", "star", "star.fill"]
    
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)).ignoresSafeArea(.all)
            ScrollView(.vertical) {
                VStack {
                    ForEach(0..<imageList.count, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 15) {
                            HStack(alignment: .top, spacing: 15) {
                                Image(imageList[index])
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                                VStack(alignment: .leading, spacing: 3) {
                                    Text(nameList[index])
                                        .font(.headline)
                                    Text(companyList[index])
                                        .font(.footnote)
                                    Text(jobList[index])
                                        .font(.caption)
                                        .foregroundColor(Color(UIColor.systemGray))
                                }
                                Image(systemName: starList[index])
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .foregroundColor(.yellow)
                                    
                                
                            }
                            Text(textList[index])
                                .font(.subheadline)
                        }
                    }
                    .padding()
                    .background(.white)
                    .padding(5)
                }
            }
            
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
    }
}

struct CoffeeChatView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeChatView()
    }
}
