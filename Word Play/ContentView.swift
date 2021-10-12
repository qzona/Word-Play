//
//  ContentView.swift
//  Word Play
//
//  Created by Student on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
    NavigationView {
        VStack{
            Text("Please enter the requested words below")
            HStack {
                CustomTextfield(placeholder: "noun", variable: $words.noun0)
                CustomTextfield(placeholder: "noun", variable: $words.noun1)
                CustomTextfield(placeholder: "noun", variable: $words.noun2)
            }
            HStack {
                CustomTextfield(placeholder: "noun", variable: $words.noun3)
                CustomTextfield(placeholder: "vegetable", variable: $words.vegetable0)
                CustomTextfield(placeholder: "vegetable", variable: $words.vegetable1)
            }
            HStack {
                CustomTextfield(placeholder: "verb", variable: $words.verb)
                CustomTextfield(placeholder: "color", variable: $words.color0)
                CustomTextfield(placeholder: "color", variable: $words.color1)
            }
            HStack {
                CustomTextfield(placeholder: "adjective", variable: $words.adjective0)
                CustomTextfield(placeholder: "adjective", variable: $words.adjective1)
            }
            HStack {
                CustomTextfield(placeholder: "adjective", variable: $words.adjective2)
                CustomTextfield(placeholder: "adjective", variable: $words.adjective3)
            }
            
            NavigationLink("Next", destination: StoryView(words: words) )
            Spacer()
            
        }
        .navigationTitle("Word Play")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomTextfield: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var vegetable0 = ""
    var vegetable1 = ""
    var verb = ""
    var color0 = ""
    var color1 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
}
