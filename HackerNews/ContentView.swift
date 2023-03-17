//
//  ContentView.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack
        {
            List {
                ForEach(posts)
                {
                    post in Text(post.title)
                }
            }
            .navigationTitle("HackerNews")
            .toolbarBackground(Color.indigo, for: .navigationBar) //changes the background of the navigation bar.
        }
    }
    
    let posts = [Post(id: "1", title: "1"), Post(id: "2", title: "2"), Post(id: "3", title: "3")]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
