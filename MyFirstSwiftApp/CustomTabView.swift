//
//  CustomTabView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView {
            Text("Page 1")
                .tabItem { Label("Sélection", systemImage: "heart.fill") }
            Text("Page 2")
                .tabItem { Label("Compte", systemImage: "person.fill") }
            Text("Hello !")
                .tabItem { Label("Hello", systemImage: "paperplane") }
        }
    
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
