//
//  Firebase_AuthApp.swift
//  Firebase Auth
//
//  Created by Yuvan Shankar on 28/04/23.
//

import SwiftUI
import Firebase

@main
struct Firebase_AuthApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
