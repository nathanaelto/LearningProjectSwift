//
//  ContentView.swift
//  LearningProject
//
//  Created by Nathanael TO on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    var data = "Vendredi 6 Mai"
    
    let names : [String] = [
        "Natha",
        "Noé",
        "Paul",
        "Amé",
        "Clément"
    ]
    
    @State var showingAlert = false
    @State var alterText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(data)
                .font(.headline)
                .foregroundColor(.gray)
            HStack {
                Text("Aujourd'hui")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "person.fill")
                    .padding(10)
                    .background(.green)
                    .cornerRadius(20)
            }
            // Spacer()
            List(names, id: \.self) { name in
                Text(name)
                    .foregroundColor(.black)
                    .onTapGesture {
                        if (name == "Paul"){
                            alterText = name + " dit qu'il est con"
                        } else {
                            alterText = name + "a dit que Paul est con"
                        }
                        showingAlert = true
                    }
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(alterText), dismissButton: .default(Text("Evidement")))
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            // ContentView()
               // .preferredColorScheme(.dark)
        }
    
    }
}
