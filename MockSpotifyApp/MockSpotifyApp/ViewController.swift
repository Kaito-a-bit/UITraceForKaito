//
//  ViewController.swift
//  MockSpotifyApp
//
//  Created by 荒井海斗 on 2022/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lyricsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lyricsView.layer.cornerRadius = 10
        ;lyricsView.layer.maskedCorners = [
            .layerMinXMinYCorner,
            .layerMaxXMinYCorner
        ]
    }


}

