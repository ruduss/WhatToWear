//
//  OutfitCollectionsViewController.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionsViewController: UIViewController {
    
    fileprivate var outfitCollectionsViewModel: OutfitCollectionsViewModel!
    fileprivate let itemsPerRow: CGFloat = 3
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    let identifier = "OutfitCollectionViewCell"
    fileprivate let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outfitCollectionsViewModel = OutfitCollectionsViewModel()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let nib = UINib(nibName: self.identifier, bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: self.identifier)
    }
}

extension OutfitCollectionsViewController: UICollectionViewDelegate {
    internal func collectionView(collectionView: UICollectionView, didSelectItemAt: IndexPath) {
        
        
    }
    
    internal func collectionView(collectionView: UICollectionView, shouldHighlightItemAt: IndexPath) {
        
    }
}

extension OutfitCollectionsViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return self.outfitCollectionsViewModel.outfitCollections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.outfitCollectionsViewModel.outfitCollections[section].outfits.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.identifier, for:indexPath) as? OutfitCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        guard let outfit = self.outfitCollectionsViewModel.outfitCollections[indexPath.section].outfits[indexPath.row] as? Outfit else {
            return UICollectionViewCell()
        }
        
        cell.backgroundColor = UIColor.black
        cell.configure(with: outfit)
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

extension OutfitCollectionsViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
