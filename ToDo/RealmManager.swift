//
//  RealmManager.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var localRealm: Realm?
    @Published var tasks: [Task] = []
    
    init() {
        openRealm()
        getTasks()
    }
    
    // Function to open a Realm - needed for saving data inside of the Realm
    func openRealm() {
        do {
            let config = Realm.Configuration(schemaVersion: 1)
            
            Realm.Configuration.defaultConfiguration = config
            
            localRealm = try Realm()
            
        } catch {
            print("Error opening Realm: ")
        }
    }
    
    // MARK: Add Task Function
    func addTask(taskTitle: String) {
        if let localRealm = localRealm { // Need to unwrap optional, since localRealm is optional
            do {
                // Trying to write to the localRealm
                try localRealm.write {
                    // Creating a new Task
                    let newTask = Task(value: ["title": taskTitle, "completed": false])
                   
                    // Adding newTask to localRealm
                    localRealm.add(newTask)
                    
                    // Re-setting the tasks array
                    getTasks()
                    print("Added new task to Realm!", newTask)
                }
            } catch {
                print("Error adding task to Realm: \(error)")
            }
        }
    }
    
    // MARK: Get Task Function
    // to get all tasks from Realm and setting them in the tasks array
    func getTasks() {
        if let localRealm = localRealm {
            
            // Getting all objects from localRealm and sorting them by completed state
            let allTasks = localRealm.objects(Task.self).sorted(byKeyPath: "completed")
            
            // Resetting the tasks array
            tasks = []
            
            // Append each task to the tasks array
            allTasks.forEach { task in
                tasks.append(task)
            }
        }
    }
    
}
