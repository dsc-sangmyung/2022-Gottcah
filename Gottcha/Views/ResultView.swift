//
//  ResultView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/23.
//

import SwiftUI
import FirebaseStorage

struct ResultView: View {
    
    let randInt = Int.random(in: 0...11)
    
    var body: some View {
        ZStack {
            Image("Result_Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            ResultButton()
            VStack {
                Image(RandImages(rawValue: randInt)!.toString())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: 360, height: 360, alignment: .center)
            .padding(.bottom, 200)
        }
    }
}


enum RandImages: Int {
    case card1 = 0
    case card2
    case card3
    case card4
    case card5
    case card6
    case card7
    case card8
    case card9
    case card10
    case card11
    case card12
    
    func toString() -> String {
        switch self {
        case .card1:
            return "card1"
        case .card2:
            return "card2"
        case .card3:
            return "card3"
        case .card4:
            return "card4"
        case .card5:
            return "card5"
        case .card6:
            return "card6"
        case .card7:
            return "card7"
        case .card8:
            return "card8"
        case .card9:
            return "card9"
        case .card10:
            return "card10"
        case .card11:
            return "card11"
        case .card12:
            return "card12"
        }
    }
}

struct ResultButton: View {
    @State private var ContentView = false
    
    var body: some View {
        HStack(spacing: 70) {
            Button(action: { }) {
                ZStack {
                    Image("Talk_Button_1")
                        .resizable()
                        .frame(width: 148, height: 107, alignment: .leading)
                    Text("저장" + "\n" + "하기")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.custom("NanumBarunGothicOTF", size: 28))
                }
            }
            Button(action: { ContentView = true }) {
                ZStack {
                    Image("Talk_Button_2")
                        .resizable()
                        .frame(width: 148, height: 107, alignment: .leading)
                    Text("처음" + "\n" + "으로")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.custom("NanumBarunGothicOTF", size: 28))
                }
                
                NavigationLink("", destination: Gottcha.ContentView()
                               , isActive: $ContentView)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            
            
        }
        .padding(.top, 280)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
        }
    }
}
