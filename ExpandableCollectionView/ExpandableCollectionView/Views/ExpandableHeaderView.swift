//
//  SectionCollectionReusableView.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/14/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import UIKit
protocol ExpandableHeaderViewDelegate {
    func toggleSection(header: ExpandableHeaderView , section: Int)
}
class ExpandableHeaderView: UITableViewHeaderFooterView {
    
    var delegate: ExpandableHeaderViewDelegate?
    var section: Int?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func selectHeaderAction(gestureRecognizer: UITapGestureRecognizer)
    {
        let cell = gestureRecognizer.view as! ExpandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section!)
    }
    
    func customInit(title: String, section: Int , delegate: ExpandableHeaderViewDelegate)
    {
        self.textLabel?.text = title
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let font = UIFont(name: "Gill Sans-Bold", size: 22.0)
        self.textLabel?.font = font
        self.textLabel?.textAlignment = NSTextAlignment.left
        self.textLabel?.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.darkGray
    }
}
