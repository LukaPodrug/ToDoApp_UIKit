//
//  HomeViewController.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarInitialization()
        
        let homeView = view as! HomeView
    }
    
    func navigationBarInitialization() {
        navigationItem.title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(openAddModal))
    }
    
    @objc func openAddModal() {
        let addModalViewController = AddModalViewController()
        
        let modalNavigationController = UINavigationController(rootViewController: addModalViewController)
        
        navigationController?.present(modalNavigationController, animated: true)
    }
}
