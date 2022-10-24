//
//  FirebaseBasicApp.swift
//  FirebaseBasicApp
//
//  Created by Alpay Calalli on 22.10.22.
//

import SwiftUI
import Firebase

@main
struct FirebaseBasicApp: App {
    @StateObject var dataManager = DataManager()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup{
            ContentView()
                .environmentObject(dataManager)
        }
    }
}
