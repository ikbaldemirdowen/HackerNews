//
//  PostData.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import Foundation

struct Results : Decodable
{
    let hits : [Post]
}

struct Post : Decodable, Identifiable
{
    var id : String { return objectID }
    let objectID : String
    
    let points : Int
    let title : String
    let url : String?
}
