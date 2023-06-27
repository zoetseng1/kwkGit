//
//  ContentView.swift
//  kwkGitHub
//
//  Created by Zoe Tseng on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    struct BackgroundColor {
        static let DarkGreen = Color("DarkGreen")
    }
    var body: some View {
        NavigationStack {
            ZStack{
                Color("DarkGreen")
                    .ignoresSafeArea()
                VStack {
                    HStack{
                        Text("\nFoodable ")
                            .font(.system(size: 50))
                        NavigationLink(destination: SecondView()) {
                            Text("\n✚")
                                .font(.system(size: 50)).foregroundColor(.black)
                        }
                    }
                    Text("All Recipes")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
