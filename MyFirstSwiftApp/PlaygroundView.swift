//
//  PlaygroundView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct PlaygroundView: View {
        
    var body: some View {
        List {
            ForEach(PreviewData.publications) { publication in
                PublicationView(publication: publication)
            }
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
