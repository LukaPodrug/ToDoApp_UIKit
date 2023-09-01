//
//  HomeViewController.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import UIKit

class HomeViewController: UIViewController {
    var taskCategories: [TaskCategory] = []
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskCategories = mockTaskCategories
        tasks = mockTasks
        
        navigationBarInitialization()
        
        let homeView = view as! HomeView
        
        homeView.tasksTableView.dataSource = self
        homeView.tasksTableView.delegate = self
        homeView.tasksTableView.register(UINib(nibName: "TaskCell", bundle: nil), forCellReuseIdentifier: "TaskCell")
    }
    
    func navigationBarInitialization() {
        navigationItem.title = "Home"
        let addButton = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(openAddModal))
        let categoriesButton = UIBarButtonItem(image: UIImage(systemName: "tray.2"), style: .plain, target: self, action: #selector(openAddModal))
        navigationItem.rightBarButtonItems = [addButton, categoriesButton]
    }
    
    @objc func openAddModal() {
        let addModalViewController = AddModalViewController()
        addModalViewController.addModalViewDelegate = self
        
        let modalNavigationController = UINavigationController(rootViewController: addModalViewController)
        
        navigationController?.present(modalNavigationController, animated: true)
    }
    
    func deleteTask() {
        
    }
    
    func editTask() {
        
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeView = view as! HomeView
        
        let task = tasks[indexPath.row]
        
        let cell = homeView.tasksTableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        
        cell.taskName.text = task.name
        if task.completion == true {
            cell.completionImage.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else {
            cell.completionImage.image = UIImage(systemName: "circle")
        }
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let homeView = view as! HomeView
        
        let selectedCell = homeView.tasksTableView.cellForRow(at: indexPath) as! TaskCell
        
        if tasks[indexPath.row].completion == true {
            tasks[indexPath.row].completion = false
            selectedCell.completionImage.image = UIImage(systemName: "circle")
        }
        else {
            tasks[indexPath.row].completion = true
            selectedCell.completionImage.image = UIImage(systemName: "checkmark.circle.fill")
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Edit") { contextualAction, view, boolValue in
            self.editTask()
        }
        
        editAction.image = UIImage(systemName: "pencil")
        editAction.backgroundColor = .blue
        
        let swipeActions = UISwipeActionsConfiguration(actions: [editAction])

        return swipeActions
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .normal, title: "Delete") { contextualAction, view, boolValue in
            self.deleteTask()
        }
        
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .red
        
        let swipeActions = UISwipeActionsConfiguration(actions: [deleteAction])

        return swipeActions
    }
}

extension HomeViewController: AddModalViewDelegate {
    func addModalSubmit() {
        
    }
}
