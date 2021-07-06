//
//  PublicationView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI
import Kingfisher

struct PublicationView: View {
    
    let publication: Publication
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 10, content: {
                Spacer().frame(width: 1)
                KFImage(publication.author.imageUrl)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text(publication.author.name)
                    Text(publication.location).font(.subheadline)
                })
                Spacer()
            })
            KFImage(publication.contentUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 350, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            HStack(alignment: .center, spacing: 5, content: {
                Spacer().frame(width: 1)
                ToggleButtonView(iconName: "heart", activeColor: Color.red, inactiveColor: Color.black, isActive: .constant(true))
                ToggleButtonView(iconName: "flag", activeColor: Color.blue, inactiveColor: Color.black, isActive: .constant(false))
                Spacer()
            })
        }
    }
}

struct PublicationView_Previews: PreviewProvider {
    static var previews: some View {
        PublicationView(publication: PreviewData.publication)
    }
}
