//
//  AddDogView.swift
//  FirebaseBasicApp
//
//  Created by Alpay Calalli on 22.10.22.
//

import SwiftUI

struct AddDogView: View {
    @EnvironmentObject var dataManager: DataManager
    
    @Environment(\.dismiss) var dismiss
    @State private var newDog = ""
    var body: some View {
        VStack{
            TextField("Dog", text: $newDog)
            
            Button{
                dataManager.addDog(dogBreed: newDog)
                dismiss()
            }label: {
                Text("Save")
            }
        }
    }
}

struct AddDogView_Previews: PreviewProvider {
    static var previews: some View {
        AddDogView()
    }
}
