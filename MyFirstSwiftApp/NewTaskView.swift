//
//  NewTaskView.swift
//  MyFirstSwiftApp
//
//  Created by jpo on 07/07/2021.
//

import SwiftUI

struct NewTaskView: View {
    
    @Binding var items: [String]
    @State private var newTaskName = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                TextField("Votre tâche...", text: $newTaskName)
                    .padding()
                Button(action: {
                    items.append(newTaskName)
                    newTaskName = ""
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Ajouter +")
                        .padding()
                })
                Spacer()
            }
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(items: .constant([]))
    }
}
