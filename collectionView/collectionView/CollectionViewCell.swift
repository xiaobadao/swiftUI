//
//  CollectionViewCell.swift
//  collectionView
//
//  Created by ww on 17/2/23.
//  Copyright © 2017年 zww. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.contentView.backgroundColor = UIColor .redColor()
        // Initialization code
    }

}
