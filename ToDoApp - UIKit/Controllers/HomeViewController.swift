//
//  HomeViewController.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import UIKit

class HomeViewController: UIViewController {
    var taskCategories = mockTaskCategories
    var tasks = mockTasks
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBarInitialization()
        
        let homeView = view as! HomeView
        
        homeView.tasksTableView.dataSource = self
        homeView.tasksTableView.register(UINib(nibName: "TaskCell", bundle: nil), forCellReuseIdentifier: "TaskCell")
    }
    
    func navigationBarInitialization() {
        navigationItem.title = "Home"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(openAddModal))
    }
    
    @objc func openAddModal() {
        let addModalViewController = AddModalViewController()
        addModalViewController.addModalViewDelegate = self
        
        let modalNavigationController = UINavigationController(rootViewController: addModalViewController)
        
        navigationController?.present(modalNavigationController, animated: true)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeView = view as! HomeView
        
        let task = tasks[indexPath.row]
        
        let cell = homeView.tasksTableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        
        cell.taskLabel.text = task.name
        
        return cell
    }
    
    
}

extension HomeViewController: AddModalViewDelegate {
    func addModalSubmit() {
        
    }
}
