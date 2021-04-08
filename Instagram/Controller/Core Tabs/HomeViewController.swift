//
//  ViewController.swift
//  Instagram
//
//  Created by Nandrian on 08/04/2021.
//  Copyright © 2021 Nandrian. All rights reserved.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()

    }
    private func handleNotAuthenticated() {
        //        Check auth status
                if Auth.auth().currentUser == nil {
        //            Show Log in
                    let loginVC = LoginViewController()
                    loginVC.modalPresentationStyle = .fullScreen
                    present(loginVC, animated: false)
                }
    }

}

