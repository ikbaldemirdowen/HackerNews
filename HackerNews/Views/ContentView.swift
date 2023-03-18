//
//  ContentView.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var networkManager = NetworkManager()
    var body: some View {
        NavigationStack
        {
            List(networkManager.posts) {
                post in
                NavigationLink
                {
                    DetailedView(url: post.url)
                } label:
                {
                    HStack
                    {
                        Text("\(post.points)\nreads")
                            .padding()
                        Text(post.title)
//                            .padding()
                    }
                }
            }
            .navigationTitle("News by Ikbal")
//            .toolbarBackground(Color.white, for: .navigationBar) //changes the background of the navigation bar.
        }
        .onAppear(perform: networkManager.fetchData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
