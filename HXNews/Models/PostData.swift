//
//  PostData.swift
//  HXNews
//
//  Created by Ayush Singh on 29/06/25.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
 

