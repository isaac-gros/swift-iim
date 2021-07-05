//
//  ContentView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 20) {
                KFImage(URL(string: "https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/790/53/790-53-101P/Kitten-II-Paws--Claws-Affiche.jpg"))
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack {
                    Text("75")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Posts")
                        .font(.caption)
                }
                VStack {
                    Text("4797")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Followers")
                        .font(.caption)
                }
                VStack {
                    Text("60")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Following")
                        .font(.caption)
                }
            }
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Chaton")
                    .bold()
                    .padding(.top)
                Text("Influenceur")
                    .foregroundColor(.gray)
                Text("Je suis un placeholder 😺\nDéveloppeur à ses heures perdues 🖥\n Allô ? Il y a quelqu'un ?")
                    .frame(minWidth: 150, idealWidth: nil, maxWidth: 250, minHeight: 50, idealHeight: nil, maxHeight: 70, alignment: .leading)
                Text("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(minWidth: 150, idealWidth: nil, maxWidth: 250, minHeight: 20, idealHeight: nil, maxHeight: 20, alignment: .leading)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
