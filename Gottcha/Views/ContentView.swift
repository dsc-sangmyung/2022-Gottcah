//
//  ContentView.swift
//  Gottcha
//
//  Created by 최진욱 on 2022/06/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundImageView()
                VStack(alignment: .center) {
                    MainButton()
                }
//                .navigationBarTitle("", displayMode: .automatic)
                .frame(width: 147, height: 520)
                .padding(.top, 180)
            }
        }
        
        
    }
}

struct MainButton: View {
    @State private var GottchaView = false
    @State private var ArchiveView = false
    
    var body: some View {
        Button(action: { GottchaView = true
        }) {
            Image("Main_Button_1")
        }
        NavigationLink("", destination: Gottcha.GottchaView()
                       , isActive: $GottchaView)
        
        Button(action: { ArchiveView = true
        }) {
            Image("Main_Button_2")
        }
        NavigationLink("", destination: Gottcha.ArchiveView()
                       , isActive: $ArchiveView)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
