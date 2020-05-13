//
//  LoadingViewController.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 16.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    @IBOutlet weak var DotsAnimate: UIView!
    @IBOutlet weak var PointOne: Avatar!
    @IBOutlet weak var PointTwo: Avatar!
    @IBOutlet weak var PointThree: Avatar!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, delay: 0, options: .repeat, animations: { self.PointOne.alpha = 0 })
        UIView.animate(withDuration: 1, delay: 0.3, options: .repeat, animations: { self.PointTwo.alpha = 0 })
        UIView.animate(withDuration: 1, delay: 0.6, options: .repeat, animations: {self.PointThree.alpha = 0 })
        UIView.animate(withDuration: 0, delay: 2, options: [], animations: {self.DotsAnimate.alpha = 0 })
        { (success) in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateInitialViewController()
            UIApplication.shared.keyWindow?.rootViewController = vc
            
        }
            
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
  

}
}
