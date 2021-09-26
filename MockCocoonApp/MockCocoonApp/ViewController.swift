//
//  ViewController.swift
//  MockCocoonApp
//
//  Created by 荒井海斗 on 2021/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tutorialView: UIView!
    @IBOutlet weak var templateView: UIView!
    @IBOutlet var templateButtons: [UIButton]!
   
    
    @IBAction func closeButton(_ sender: Any) {
        self.tutorialView.removeFromSuperview()
        templateView.bounds = CGRect(x: 16, y: 32, width: self.view.frame.width - 48, height: self.view.frame.height - 56)
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonTitleMargin()
    }
    
    func setButtonTitleMargin() {
        for button in templateButtons {
            button.titleEdgeInsets = UIEdgeInsets(top: 8, left: 24, bottom: 8, right: 150)
        }
    }
}

