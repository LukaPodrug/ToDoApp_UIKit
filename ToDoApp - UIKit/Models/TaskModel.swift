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

let mockJobUUID = UUID()
let mockHouseUUID = UUID()
let mockSocialUUID = UUID()

let mockTaskCategories = [
    TaskCategory(id: mockJobUUID, name: "Job", color: .blue),
    TaskCategory(id: mockHouseUUID, name: "House", color: .red),
    TaskCategory(id: mockSocialUUID, name: "Social", color: .green)
]

let mockTasks = [
    Task(id: UUID(), name: "Write unit tests", categoryId: mockJobUUID, deadline: Date(timeIntervalSinceNow: 8*60*60), completion: true),
    Task(id: UUID(), name: "Clean dishes", categoryId: mockHouseUUID, deadline: Date(timeIntervalSinceNow: 1*60*60), completion: false),
    Task(id: UUID(), name: "Cinema with Marin", categoryId: mockSocialUUID, deadline: Date(timeIntervalSinceNow: 4*60*60), completion: false),
    Task(id: UUID(), name: "Date with Lucija", categoryId: mockSocialUUID, deadline: Date(timeIntervalSinceNow: 3*60*60), completion: true),
    Task(id: UUID(), name: "Refactor component", categoryId: mockJobUUID, deadline: Date(timeIntervalSinceNow: -2*60*60), completion: true),
    Task(id: UUID(), name: "Buy mirror", categoryId: mockHouseUUID, deadline: Date(timeIntervalSinceNow: -5*60*60), completion: false),
    Task(id: UUID(), name: "Read documentation", categoryId: mockJobUUID, deadline: Date(timeIntervalSinceNow: 12*60*60), completion: false)
]
