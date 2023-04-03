//
//  StudentViewModel.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import Foundation

class StudentViewModel: ObservableObject{
    @Published var studentsArray: [Student] = []
    
    init() {
        loadData()
        
    }
    func saveData() {
        let path = URL.documentsDirectory.appending(component: "studentsArray")
        let data = try? JSONEncoder().encode(studentsArray) // try? means if error is thrown, data = nil
        do {
            try data?.write(to: path)
        } catch {
            print("😡 ERROR: Could not save data \(error.localizedDescription)")
        }

    }
    
    func loadData() {
        let path = URL.documentsDirectory.appending(component: "studentsArray")
        guard let data = try? Data(contentsOf: path) else {return}
        do {
            studentsArray = try JSONDecoder().decode(Array<Student>.self, from: data)
        } catch {
            print("😡 ERROR: Could not load data \(error.localizedDescription)")
        }
    }
    
    func saveStudents(student: Student){
        if student.id == nil{
            var newStudent = student
            newStudent.id = UUID().uuidString
            studentsArray.append(newStudent)
        }else{
            if let index = studentsArray.firstIndex(where: {$0.id == student.id}){
                studentsArray[index] = student
            }
        }
        saveData()

    }
    
    func deleteStudents(indexSet: IndexSet){
        studentsArray.remove(atOffsets: indexSet)
        saveData()

    }
    
    func moveStudents(indexSet: IndexSet, int: Int){
        studentsArray.move(fromOffsets: indexSet, toOffset: int)
        saveData()

    }
}

