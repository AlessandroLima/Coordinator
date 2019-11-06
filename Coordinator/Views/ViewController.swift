//
//  ViewController.swift
//  Coordinator
//
//  Created by alessandro on 05/11/19.
//  Copyright © 2019 alessandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension ViewController{
    @IBAction func goToBuy(sender: UIButton) {
        coordinator?.buy()
    }
    
    @IBAction func goToCreateAccount(sender: UIButton) {
        coordinator?.createAccont()
    }
    
}
