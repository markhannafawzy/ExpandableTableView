//
//  GenreCell.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/20/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
import UIKit
class GenreCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    func setCollectionViewTag(section: Int){
        self.collectionView.tag = section
    }
    
    var collectionViewOffset: CGFloat {
        get {
            return collectionView.contentOffset.x
        }
        
        set {
            collectionView.contentOffset.x = newValue
        }
    }
}
