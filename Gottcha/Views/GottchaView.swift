//
//  GottchaView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/22.
//

import SwiftUI

struct GottchaView: View {
    var body: some View {
        Image("Gottcha_Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill)
    }
}

struct GottchaView_Previews: PreviewProvider {
    static var previews: some View {
        GottchaView()
    }
}
