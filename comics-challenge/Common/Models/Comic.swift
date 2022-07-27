//
//  Comic.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import Foundation

struct Comic: Decodable {
    let id: Int
    let title: String
    let thumbnail: String
}
