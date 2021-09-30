//
//  ViewController.swift
//  MockGitHubApp
//
//  Created by 荒井海斗 on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myWorksButtons: [UIButton]!
    let imageArr = [
        UIImage(named: "Issues"),
        UIImage(named: "PullRequests"),
        UIImage(named: "Repositories"),
        UIImage(named: "Organizations")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImagesForButtons()
    }
    
    func setImagesForButtons() {
        for button in myWorksButtons {
            var i = 0
            button.setImage(imageArr[i], for: .normal)
            i += 1
        }
    }
}
