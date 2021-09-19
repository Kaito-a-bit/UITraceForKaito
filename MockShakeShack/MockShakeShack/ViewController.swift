//
//  ViewController.swift
//  MockShakeShack
//
//  Created by 荒井海斗 on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var shakeBurgerTableView: UITableView!
    let imagesArr = [
        UIImage(named: "001-fast-food"),
        UIImage(named: "002-pizza"),
        UIImage(named: "003-fast-food-1"),
        UIImage(named: "004-fast-food-2"),
        UIImage(named: "005-fork"),
        UIImage(named: "006-fast-food-3"),
        UIImage(named: "007-cutlery")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shakeBurgerTableView.register(UINib(nibName: "CustomBurgerTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomBurgerCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = shakeBurgerTableView.dequeueReusableCell(withIdentifier: "CustomBurgerCell", for: indexPath) as! CustomBurgerTableViewCell
        cell.borderUIView.layer.borderWidth = 1.0
        cell.borderUIView.layer.borderColor = UIColor.gray.cgColor
        cell.burgerImageView.image = UIImage(named: "burger.png")
        return cell
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = menuCollectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath)
        let imageView = UIImageView()
        imageView.frame = cell.frame
        cell.addSubview(imageView)
        imageView.image = imagesArr[indexPath.item]
        return cell
    }
}

