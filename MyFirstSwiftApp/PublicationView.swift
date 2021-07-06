//
//  PublicationView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI
import Kingfisher

struct PublicationView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 10, content: {
                Spacer().frame(width: 1)
                KFImage(URL(string: "https://personagenerator.com/user-sean.png"))
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("fan_de_moto75")
                    Text("Paris").font(.subheadline)
                })
                Spacer()
            })
            KFImage(URL(string: "https://images.pexels.com/photos/4916018/pexels-photo-4916018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .padding(.vertical, 5.0)
            HStack(alignment: .center, spacing: 5, content: {
                Spacer().frame(width: 1)
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundColor(Color.black)
                Image(systemName: "flag")
                    .imageScale(.large)
                    .foregroundColor(Color.black)
                Spacer()
            })
        }
    }
}

struct PublicationView_Previews: PreviewProvider {
    static var previews: some View {
        PublicationView()
    }
}
