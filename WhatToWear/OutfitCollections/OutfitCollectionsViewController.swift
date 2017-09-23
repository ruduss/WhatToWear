//
//  OutfitCollectionsViewController.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionsViewController: UIViewController, UICollectionViewDelegate {
    
    fileprivate var outfitCollectionsViewModel: OutfitCollectionsViewModel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let identifier = "OutfitCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outfitCollectionsViewModel = OutfitCollectionsViewModel()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let nib = UINib(nibName: self.identifier, bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: self.identifier)
    }
}

extension OutfitCollectionsViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return self.outfitCollectionsViewModel.outfitCollections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.outfitCollectionsViewModel.outfitCollections[section].outfits.count
    }
    
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.identifier, for:indexPath) as! OutfitCollectionViewCell
        
        let outfitCollection = self.outfitCollectionsViewModel.outfitCollections[indexPath.row]
        cell.configureCell(outfitCollection: outfitCollection)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderView", for: indexPath) as? OutfitCollectionsHeaderView else {
            return UICollectionReusableView()
        }
    
        headerView.headerLabel.text = self.outfitCollectionsViewModel.outfitCollections[indexPath.item].name
        return headerView
    }
}
