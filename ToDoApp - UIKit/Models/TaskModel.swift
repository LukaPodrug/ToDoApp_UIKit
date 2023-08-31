//
//  TaskModel.swift
//  ToDoApp - UIKit
//
//  Created by Luka Podrug on 31.08.2023..
//

import Foundation

struct TaskCategory {
    let id: UUID
    let name: String
}

struct Task {
    let id: UUID
    let name: String
    let categoryId: Int
    let deadline: Date
    let completion: Bool
}
