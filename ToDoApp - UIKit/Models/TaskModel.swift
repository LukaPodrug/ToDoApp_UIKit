//
//  TaskModel.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import Foundation
import UIKit

struct TaskCategory {
    let id: UUID
    let name: String
    let color: UIColor
}

struct Task {
    let id: UUID
    let name: String
    let categoryId: UUID
    let deadline: Date
    let completion: Bool
}

let mockTaskCategories = [
    TaskCategory(id: UUID(uuidString: "1")!, name: "Job", color: .blue),
    TaskCategory(id: UUID(uuidString: "2")!, name: "House", color: .red),
    TaskCategory(id: UUID(uuidString: "3")!, name: "Social", color: .green)
]

let mockTasks = [
    Task(id: UUID(), name: "Write unit tests", categoryId: UUID(uuidString: "1")!, deadline: Date(timeIntervalSinceNow: 8*60*60), completion: true),
    Task(id: UUID(), name: "Clean dishes", categoryId: UUID(uuidString: "2")!, deadline: Date(timeIntervalSinceNow: 1*60*60), completion: false),
    Task(id: UUID(), name: "Cinema with Marin", categoryId: UUID(uuidString: "3")!, deadline: Date(timeIntervalSinceNow: 4*60*60), completion: false),
    Task(id: UUID(), name: "Date with Lucija", categoryId: UUID(uuidString: "3")!, deadline: Date(timeIntervalSinceNow: 3*60*60), completion: true),
    Task(id: UUID(), name: "Refactor component", categoryId: UUID(uuidString: "1")!, deadline: Date(timeIntervalSinceNow: -2*60*60), completion: true),
    Task(id: UUID(), name: "Buy mirror", categoryId: UUID(uuidString: "2")!, deadline: Date(timeIntervalSinceNow: -5*60*60), completion: false),
    Task(id: UUID(), name: "Read documentation", categoryId: UUID(uuidString: "1")!, deadline: Date(timeIntervalSinceNow: 12*60*60), completion: false)
]
