//
//  PlaygroundView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct PlaygroundView: View {
    
    @State var name = ""
    @State var cheese = false
    
    var body: some View {
        VStack {
            Text("Hello \(name) !")
            TextField("Votre nom", text: $name)
            Toggle(isOn: $cheese, label: {
                Text("Supplément fromage ?")
            })
        }
        
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
