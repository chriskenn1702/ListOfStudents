//
//  StudentListView.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

struct StudentListView: View {
    @EnvironmentObject var studentVM: StudentViewModel
    @State private var sheetIsPresented = false
    
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
                .onDelete(perform: studentVM.deleteStudents)
                .onMove(perform: studentVM.moveStudents)
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
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .tint(.accentColor)
                    }
                }
                
            }
        }
        .sheet(isPresented: $sheetIsPresented) {
            NavigationStack{
                DetailView(student: Student())
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
