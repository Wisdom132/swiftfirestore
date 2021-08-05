//
//  funfirebaseApp.swift
//  funfirebase
//
//  Created by Wisdom Ekpot on 7/19/21.
//
import Firebase
import SwiftUI

extension funfirebaseApp {
  private func initFirebase() {
    FirebaseApp.configure()
  }
}



@main
struct funfirebaseApp: App {
    
    init() {
        initFirebase()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}



struct funfirebaseApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
