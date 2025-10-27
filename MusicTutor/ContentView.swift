//
//  ContentView.swift
//  MusicTutor
//
//  Created by Dhriti Peshkar on 10/23/25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeTab()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                    Text("Home View")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    
                }
           // CameraInput()
             // .tabItem {
               // Label("Record Audio", systemImage: "mic")
                }
            AiTab()
                .tabItem {
                    Label("Record Audio", systemImage: "gear")

                }
                }
        }
    //}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


#Preview {
    ContentView()
}
