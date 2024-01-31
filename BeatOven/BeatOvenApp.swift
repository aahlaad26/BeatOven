//
//  BeatOvenApp.swift
//  BeatOven
//
//  Created by user2 on 30/01/24.
//

import SwiftUI
import Firebase
@main
struct BeatOvenApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
