//
//  AddModalViewController.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import UIKit

class AddModalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarInitialization()
    }
    
    func navigationBarInitialization() {
        navigationItem.title = "Add"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "checkmark"), style: .plain, target: self, action: #selector(submit))
    }
    
    @objc func submit() {
        
    }
}
