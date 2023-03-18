//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import Foundation

class NetworkManager : ObservableObject
{
    @Published var posts = [Post]()
    
    func fetchData()
    {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil
                {
                    if let safeData = data
                    {
                        do
                        {
                            let results = try JSONDecoder().decode(Results.self, from: safeData)
                            DispatchQueue.main.async
                            {
                                self.posts = results.hits
                            }
                        }
                        catch
                        {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
