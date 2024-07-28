//
//  Task.swift
//  ToDo
//
//  Created by Esma Koçak on 28.07.2024.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId // This is our primary key, and each Task instance can be uniquely identified by the ID
    @Persisted var title = ""
    @Persisted var completed = false
}
