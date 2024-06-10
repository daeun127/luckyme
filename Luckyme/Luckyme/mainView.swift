//
//  mainView.swift
//  Luckyme
//
//  Created by DaeunLee on 6/2/24.
//

import SwiftUI

struct mainView: View {
    @Binding var mind: String
    @Binding var desc: String
    @State private var selectedTab = 0  // 현재 선택된 탭을 추적하기 위한 상태 변수

    var body: some View {
        TabView(selection: $selectedTab) {
            Home()
                .tabItem {
                    VStack{
                        Image(selectedTab == 0 ? "home_c" : "home")
                        Text("홈")
                            .font(.system(size: 12.5, weight: .regular))
                    }
                }
                .tag(0)

            worryBefore()
                .tabItem {
                    Image(selectedTab == 1 ? "home_c" : "Change User")
                    Text("마인드 체인지")
                        .font(.system(size: 12.5, weight: .regular))
                }
                .tag(1)

            custom_mind(mindName: $mind, mindDesc: $desc)
                .tabItem {
                    Image(selectedTab == 2 ? "home_c" : "Attitude")
                    Text("커스텀 마인드")
                        .font(.system(size: 12.5, weight: .regular))
                }
                .tag(2)

            lucky_card()
                .tabItem {
                    Image(selectedTab == 3 ? "home_c" : "Clover")
                    Text("행운 부적")
                        .font(.system(size: 12.5, weight: .regular))
                }
                .tag(3)
        }
        .tint(.mainPink)
    }
}



struct Header: View {
    var body: some View {
        HStack(){
            Image("Luckyme")
            Spacer()
            myPageIcon()
            
        }
        .padding(.horizontal, 24)
        .frame(width: 393, height: 80, alignment: .center)
        
    }
}

#Preview {
    mainView(mind: .constant(""), desc: .constant(""))
}




