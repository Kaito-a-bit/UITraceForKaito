//
//  ViewController.swift
//  MockCashCardApp
//
//  Created by 荒井海斗 on 2021/10/26.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionViewFlowLayout.itemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height * 0.9)
        collectionView.showsHorizontalScrollIndicator = false
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = 4
        pageControl.numberOfPages = count
        pageControl.isHidden = !(count > 1)
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       let witdh = scrollView.frame.width - (scrollView.contentInset.left*2)
       let index = scrollView.contentOffset.x / witdh
       let roundedIndex = round(index)
       self.pageControl?.currentPage = Int(roundedIndex)
   }
   func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
       pageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
   }
   
   func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
       
       pageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
   }
}

