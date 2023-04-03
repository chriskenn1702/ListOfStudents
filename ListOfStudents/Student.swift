//
//  Student.swift
//  ListOfStudents
//
//  Created by Christopher Kennedy on 3/27/23.
//

import Foundation

enum Year: String, CaseIterable, Codable{
    case freshman
    case sophomore
    case junior
    case senior
}

struct Student: Codable, Identifiable{
    var id: String?
    var name = ""
    var major = ""
    var hometown = ""
    var year = Year.freshman
}
