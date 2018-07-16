//
//  Section.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/14/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
struct Section{
    var genre : String
    var movieImageNames : [String]
    var expanded : Bool
    init(genre: String , movieImageNames: [String] , expanded: Bool) {
        self.genre = genre
        self.movieImageNames = movieImageNames
        self.expanded = expanded
    }
}
struct Movie {
    var title: String?
}
