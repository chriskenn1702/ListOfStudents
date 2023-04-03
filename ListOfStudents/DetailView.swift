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
            
            Text("Major")
                .bold()
            
            TextField("Enter Major", text: $student.major)
                .textFieldStyle(.roundedBorder)
            
            Text("Hometown:")
                .bold()
            
            TextField("Enter Hometown", text: $student.hometown)
                .textFieldStyle(.roundedBorder)
            
            HStack{
                Text("Select Flavor:")
                    .bold()
                
                Spacer()
                
                Picker("Doesn't show up on iOS", selection: $student.year) {
                    ForEach(Year.allCases, id: \.self) {year in
                        Text(year.rawValue.capitalized)
                    }
                }
                .pickerStyle(.automatic)
            }
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
                    studentVM.saveStudents(student: student)
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

