//
//  Todo.swift
//  funfirebase
//
//  Created by Wisdom Ekpot on 7/26/21.
//

import SwiftUI
struct Todo: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String?
}
