//
//  AddModalViewController.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import UIKit

protocol AddModalViewDelegate {
    func addModalSubmit()
}

class AddModalViewController: UIViewController {
    var addModalViewDelegate: AddModalViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarInitialization()
        
        let addModalView = view as! AddModalView
    }
    
    func navigationBarInitialization() {
        navigationItem.title = "Add"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "checkmark"), style: .plain, target: self, action: #selector(submit))
    }
    
    @objc func submit() {
        addModalViewDelegate?.addModalSubmit()
        dismiss(animated: true)
    }
}
