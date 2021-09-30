//
//  ViewController.swift
//  MockGitHubApp
//
//  Created by 荒井海斗 on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myWorksButtons: [UIButton]!
    
    @IBOutlet weak var issuesButton: UIButton!
    let imageArr = [
        #imageLiteral(resourceName: "Issues"),
        #imageLiteral(resourceName: "PullRequets"),
        #imageLiteral(resourceName: "Repositories"),
        #imageLiteral(resourceName: "Organizations")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
    }
    
    func setUpButton() {
        for i in 0...3 {
            myWorksButtons[i].setImage(imageArr[i], for: .normal)
            myWorksButtons[i].imageEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
        }
    }
}


