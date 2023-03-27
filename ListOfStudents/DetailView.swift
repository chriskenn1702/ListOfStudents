//
//  DetailView.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import SwiftUI

struct DetailView: View {
    @State var studentName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Student Name:")
                .bold()
            
            TextField("enter place name", text: $studentName)
                .textFieldStyle(.roundedBorder)
            
            Spacer()
        }
        .padding()
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(studentName: "Christopher Kennedy")
    }
}
