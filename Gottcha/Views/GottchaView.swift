//
//  GottchaView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/22.
//

import SwiftUI

struct GottchaView: View {
    var body: some View {
        ZStack {
            Image("Gottcha_Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment: .center, spacing: -610) {
                GottchaButton()
            }

        }
        
    }
}
//
//struct GottchaButton: View {
//    @State private var ResultView = false
//
//    var body: some View {
//
//        GeometryReader { metrics in
//
//            VStack(spacing: 0) {
//                Spacer().frame(height: metrics.size.height * 0.85 - 100 / 2)
//
//                Button(action: { ResultView = true
//                }) {
//                    Image("Talk_Button_1")
//                        .resizable()
//                        .frame(width: 203, height: 147)
//                }
//
//                NavigationLink("", destination: GottchaButton.ResultView
//                               , isActive: $ResultView)
//            }
//        }
//    }
//}

struct GottchaButton: View {
    @State private var ResultView = false
    
    var body: some View {
        Button(action: { ResultView = true
        }) {
            ZStack {
                Image("Talk_Button_1")
                    .resizable()
                    .frame(width: 203, height: 147)
                Text("뽑으러" + "\n" + "가기")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.custom("NanumBarunGothicOTF", size: 28))
                
            }
        }
        NavigationLink("", destination: Gottcha.ResultView()
                       , isActive: $ResultView)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
    
}



struct GottchaView_Previews: PreviewProvider {
    static var previews: some View {
        GottchaView()
    }
}
