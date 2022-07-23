//
//  ResultView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/23.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            Image("Result_Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            //            VStack() {
            //                GottchaButton()
            //            }
        }
    }
}

//struct ResultButton: View {
//    var body: some View {
//
//    }
//}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
