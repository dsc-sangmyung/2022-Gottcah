//
//  BackgroundImageView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/19.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
//        ZStack {
            Image("Main_Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
//        }
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
