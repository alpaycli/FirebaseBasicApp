//
//  ListView.swift
//  FirebaseBasicApp
//
//  Created by Alpay Calalli on 22.10.22.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    
    @State private var showAddDogView = false
    
    var body: some View {
        NavigationView{
            List(dataManager.dogs, id: \.id){ dog in
                Text(dog.breed)
            }
            .navigationTitle("🐶Dogs")
            .navigationBarItems(trailing:
            Button{
                showAddDogView = true
            }label: {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showAddDogView){
                AddDogView()
            }
        }
    }
}
