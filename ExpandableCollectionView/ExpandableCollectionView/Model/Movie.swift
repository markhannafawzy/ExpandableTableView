//
//  Movie.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/18/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
struct Movie: Decodable {
    let id: Int
    let title: String
    let year: String
    let runtime: String
    let genres: [String]
    let director: String
    let actors: String
    let plot: String
    let posterUrl: String
}
