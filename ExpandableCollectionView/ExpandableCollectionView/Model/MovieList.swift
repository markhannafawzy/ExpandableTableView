//
//  MovieList.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/18/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
struct MovieList : Decodable {
    let genres: [String]
    let movies: [Movie]
}
