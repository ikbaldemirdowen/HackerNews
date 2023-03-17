//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import Foundation

class NetworkManager
{
    func fetchURL()
    {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
        }
    }
}
