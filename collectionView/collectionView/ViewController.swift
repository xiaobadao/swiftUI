//
//  ViewController.swift
//  collectionView
//
//  Created by ww on 17/2/23.
//  Copyright © 2017年 zww. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var items: NSArray = [UIImage.init(named: "image1.jpg")!,
                          UIImage.init(named: "image2.jpg")!,
                          UIImage.init(named: "image3.jpg")!,
                          UIImage.init(named: "image4.jpg")!,
                          UIImage.init(named: "image5.jpg")!,
                          UIImage.init(named: "image6.jpg")!,
                          UIImage.init(named: "image7.jpg")!,
                          UIImage.init(named: "image8.jpg")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSizeMake(UIScreen.mainScreen().bounds.width/3, 100)
        layout.minimumLineSpacing = 15
        layout.minimumLineSpacing = 30
        
        let collectionView = UICollectionView.init(frame: UIScreen.mainScreen().bounds, collectionViewLayout:layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.registerNib(UINib.init(nibName: "CollectionViewCell", bundle: NSBundle.mainBundle()), forCellWithReuseIdentifier: "collectionCell")
        self.view.addSubview(collectionView)
        
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count * 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let identifier = "collectionCell"
        let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath)
        let imageview = cell.viewWithTag(1) as! UIImageView
        imageview.image = items.objectAtIndex(indexPath.row % 8) as? UIImage
        return cell
        
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(15, 30, 5, 30)
    }
}

