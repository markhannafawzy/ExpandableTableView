//
//  Section.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/14/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
class Section{
    var genre : String
    var movies : [Movie]
    var expanded : Bool
    init(genre: String , expanded: Bool) {
        self.genre = genre
        self.movies = [Movie]()
        self.expanded = expanded
    }
}

