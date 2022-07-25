//
//  ArchiveView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/07/22.
//

import SwiftUI

struct ArchiveView: View {
    var body: some View {
        Image("Archive_Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill)
    }
}

struct ArchiveView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveView()
    }
}
