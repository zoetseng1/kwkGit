//
//  SecondView.swift
//  kwkGitHub
//
//  Created by Zoe Tseng on 6/27/23.
//

import SwiftUI

struct SecondView: View {
    @State private var recipeTitle: String = ""
    @State private var rating: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""

    var body: some View {
        VStack {
            HStack{
                TextField(
                    "Recipe Title",
                    text: $recipeTitle
                )
                    .disableAutocorrection(true)
                    .textFieldStyle(.roundedBorder)
                Button("Save") {
                    
                }
            }
            .padding(30)
            TabView {
                List {
                    Text("Ingredients")
                        .font(.system(size:30))
                    ZStack {
                        TextEditor(text: $ingredients)
                            .disableAutocorrection(true)
                        Text(ingredients).opacity(0).padding(.all, 8)
                    }
                    .shadow(radius: 1)
                }
                    .tabItem {
                        Label("Ingredients", systemImage: "pencil")
                    }
                
                List {
                    Text("Directions")
                        .font(.system(size:30))
                    ZStack {
                        TextEditor(text: $directions)
                            .disableAutocorrection(true)
                        Text(directions).opacity(0).padding(.all, 8)
                    }
                    .shadow(radius: 1)
                }
                    .tabItem {
                        Label("Directions", systemImage: "square.and.pencil")
                    }

            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
