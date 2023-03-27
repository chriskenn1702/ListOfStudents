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
        let students = ["Holt B.",
                        "Luke B.",
                        "Michael B.",
                        "Milan C.",
                        "Russell C.",
                        "Gabriela C.",
                        "Kevin C.",
                        "Charles C.",
                        "Matthew C.",
                        "Gleidson D.",
                        "Jack D.",
                        "John G.",
                        "Matthew Gr.",
                        "Matthew Gu.",
                        "William H.",
                        "Shane J.",
                        "Connor J.",
                        "Andy J.",
                        "Christopher K.",
                        "Dylan K.",
                        "Riya K.",
                        "Aakash K.",
                        "Benjamin L.",
                        "Dilan L.",
                        "Anthony M.",
                        "Tyler M.",
                        "Annie M.",
                        "Avery M.",
                        "Emily M.",
                        "Addison M.",
                        "Dylan M.",
                        "Owen O.",
                        "Zachary P.",
                        "Gabriella P.",
                        "William P.",
                        "Caitlin P.",
                        "Syed R.",
                        "William R.",
                        "Lauren S.",
                        "George S.",
                        "Astrid S.",
                        "Thomas S.",
                        "Hailey S.",
                        "Jasmine T.",
                        "Michael V.",
                        "Jonathan W.",
                        "Theodore W.",
                        "Andrew Y."]
        
        for student in students {
            studentsArray.append(Student(id:UUID().uuidString, name:student))
        }
    }
}
