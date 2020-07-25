//
//  LoadingViewController.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 24/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    private let authManager = AuthManager()
    private let navigationManager = NavigationManager.shared
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showInitialScreen()
    }
    
    func showInitialScreen() {
        if authManager.isUserLoggedIn() {
            navigationManager.show(scene: .tasks)
        } else {
            navigationManager.show(scene: .onboarding)
        }
    }
    
}
