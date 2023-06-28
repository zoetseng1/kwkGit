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
            Text("Rating")
            HStack (spacing: -400){
                TextField(
                    "_",
                    text: $rating
                )
                .padding(182.5)
                Text(" /5")
                    .padding(182.5)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
