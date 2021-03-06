//
//  HomeViewController.swift
//  Found in Space
//
//  Created by Theo Mendes on 20/10/18.
//  Copyright © 2018 NASA Space Apps 2018. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, HomeView {
    var presenter: HomePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomePresenter(view: self)
        presenter.setUpHomeView(viewC: self)
        presenter.setupBtnActions()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    func goToNewGame(_ sender: UIButton!) {
        // Do something
        print("New Game touched")
        let navigationController = UINavigationController(rootViewController: HistoryViewController())
//        let rootViewController = HistoryViewController()
        navigationController.modalTransitionStyle = .crossDissolve
        self.present(navigationController, animated: true, completion: nil)
    }
    
    func goToProfile(_ sender: UIButton!) {
        // do something
        print("Profile touched")
        let rootViewController = LoginViewController()
        rootViewController.modalTransitionStyle = .crossDissolve
        self.present(rootViewController, animated: true, completion: nil)
    }

}
