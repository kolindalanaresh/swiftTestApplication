//
//  CollectionViewController.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var topCollectionView: UICollectionView!
    var cellIdentifier = "SampleCollectionViewCell"
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCollectionView.register(UINib(nibName: "SampleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
       return CGSize(width: 100.0, height: 100.0)
    }
    
}
