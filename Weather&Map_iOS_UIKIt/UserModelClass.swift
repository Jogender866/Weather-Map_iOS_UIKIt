//
//  UserModelClass.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/05/24.
//

import Foundation
struct Post: Codable {
    let id: Int
    let title: String
    let body: String
    let tags: [String]
    let reactions: Reactions
    let views: Int
    let userId: Int
}

struct Reactions: Codable {
    let likes: Int
    let dislikes: Int
}
