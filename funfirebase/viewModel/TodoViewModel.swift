//
//  ContentModal.swift
//  funfirebase
//
//  Created by Wisdom Ekpot on 7/26/21.
//

import Foundation
import FirebaseFirestore

class TodoViewModel: ObservableObject {
    
    @Published var todos = [Todo]()
    
    private var db = Firestore.firestore()
    
    func getAllData() {
        db.collection("todos").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.todos = documents.map { (queryDocumentSnapshot) -> Todo in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                return Todo(name: name)
            }
        }
    }
    
    func addNewData(name: String) {
           do {
               _ = try db.collection("todos").addDocument(data: ["name": name])
           }
           catch {
               print(error.localizedDescription)
           }
       }
}
