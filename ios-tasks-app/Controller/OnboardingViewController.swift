//
//  OnboardingViewController.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 24/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private let navigationManager = NavigationManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLoginScreen", let destination = segue.destination as? LoginViewController {
            destination.delegate = self
        }
    }
    
    
    @IBAction func getStartedButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showLoginScreen", sender: nil)
    }
    
    
}

extension OnboardingViewController: LoginVCDelegate {
    func didLogin() {
        print("we should login and shot the main app now")
        presentedViewController?.dismiss(animated: true, completion: { [unowned self] in
            self.navigationManager.show(scene: .tasks)
        })
    }
    
}
