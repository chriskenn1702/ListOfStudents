//
//  StudentListView.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

struct StudentListView: View {
    @EnvironmentObject var studentVM: StudentViewModel
    var body: some View {
        NavigationStack {
            List {
                ForEach(studentVM.studentsArray) { student in
                    NavigationLink{
                        DetailView(student: student)
                    } label: {
                        Image(systemName: "swift")
                            .foregroundColor(.yellow)
                        Text(student.name)
                    }
                }
            }
            .font(.title2)
            .listStyle(.plain)
            .navigationTitle("Swifters!")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading ){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .tint(.accentColor)
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentListView()
            .environmentObject(StudentViewModel())
    }
}
