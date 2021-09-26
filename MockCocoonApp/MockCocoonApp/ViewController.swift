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
    @IBOutlet weak var cocoonLabel: UILabel!
    
    
    @IBAction func closeButton(_ sender: Any) {
        self.tutorialView.removeFromSuperview()
        if let tutorialView = tutorialView {
            tutorialView.addConstraint(NSLayoutConstraint(
                                        item: tutorialView,
                                        attribute: .topMargin,
                                        relatedBy: .lessThanOrEqual,
                                        toItem: cocoonLabel,
                                        attribute: .bottom,
                                        multiplier: 1.0,
                                        constant: 32))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonTitleMargin()
        templateView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setButtonTitleMargin() {
        for button in templateButtons {
            button.titleEdgeInsets = UIEdgeInsets(top: 8, left: 24, bottom: 8, right: 150)
        }
    }
}

