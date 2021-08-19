//
//  ViewController.swift
//  MockGUCCIApp
//
//  Created by 荒井海斗 on 2021/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var clothCollectionView: UICollectionView!
    
    let imageArr: [UIImage] = [
        UIImage(named: "image1")!,
        UIImage(named: "image2")!,
        UIImage(named: "image3")!,
        UIImage(named: "image4")!
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .horizontal
           layout.minimumInteritemSpacing = 0.0
           layout.minimumLineSpacing = 0.0
           layout.itemSize = clothCollectionView.bounds.size
           clothCollectionView.collectionViewLayout = layout
       }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clothCollectionView.dequeueReusableCell(withReuseIdentifier: "ClothCollectionViewCell", for: indexPath) as! ClothCollectionViewCell
        cell.clothImageView.image = imageArr[indexPath.item]
        return cell
    }
    
    
}

