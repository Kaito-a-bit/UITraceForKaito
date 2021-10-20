//
//  MordalViewController.swift
//  MockEtsyApp
//
//  Created by 荒井海斗 on 2021/10/19.
//

import UIKit

class MordalViewController: UIViewController {

    @IBOutlet weak var continueWithFB: UIButton!
    @IBOutlet weak var continueWithGoogle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFonts()
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpFonts() {
        continueWithFB.setImage(#imageLiteral(resourceName: "Fb"), for: .normal)
        continueWithGoogle.setImage(#imageLiteral(resourceName: "chromeIcon"), for: .normal)
        
        continueWithFB.imageView?.contentMode = .scaleAspectFit
        continueWithGoogle.imageView?.contentMode = .scaleAspectFit
        
        
        continueWithFB.imageEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 200)
        continueWithGoogle.imageEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 150)
//
        continueWithFB.titleEdgeInsets = UIEdgeInsets(top: 0, left: -100, bottom: 0, right: 0)
        continueWithGoogle.titleEdgeInsets = UIEdgeInsets(top: 0, left: -100, bottom: 0, right: 0)
    }
    

}
