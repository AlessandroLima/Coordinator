//
//  MainCoordinator.swift
//  CordinatorTest
//
//  Created by Alessandro Teixeira Lima on 04/11/19.
//  Copyright © 2019 Alessandro Teixeira Lima. All rights reserved.
//
import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buy() {
        let vc = BuyViewController.instantiate()
           vc.coordinator = self
           navigationController.pushViewController(vc, animated: true)
       }
    
    func createAccont() {
           let vc = CreateAccountViewController.instantiate()
           vc.coordinator = self
           navigationController.pushViewController(vc, animated: true)
       }
    
    
}
