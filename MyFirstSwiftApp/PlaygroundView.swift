//
//  PlaygroundView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct PlaygroundView: View {
    
    @State var items = ["Finir le projet", "Envoyer mail"]
    @State private var newTaskScreenIsPresented = false
        
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach(items, id: \.self) { item in
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                Text(item)
                            })
                    }
                    .onDelete(perform: { indexSet in
                        items.remove(atOffsets: indexSet)
                    })
                }
                Button(action: {
                    newTaskScreenIsPresented = true
                }, label: {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Image(systemName: "plus")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.white)
                    }
                })
                .padding()
                .sheet(isPresented: $newTaskScreenIsPresented, content: {
                    NewTaskView(items: $items)
                })
            }
            .navigationTitle("Mes tâches")
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
