//
//  DetailView.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var studentVM: StudentViewModel
    @State var student: Student
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Student Name:")
                .bold()
            
            TextField("enter student name", text: $student.name)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding()
        .font(.title)
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel"){
                    dismiss()
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save"){
                    dismiss()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(student: Student(name: "Christopher K."))
        }
    }
}
