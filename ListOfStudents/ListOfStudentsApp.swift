//
//  ListOfStudentsApp.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

@main
struct ListOfStudentsApp: App {
    @StateObject var studentsVM = StudentViewModel()
    var body: some Scene {
        WindowGroup {
            StudentListView()
                .environmentObject(studentsVM)
        }
    }
}
