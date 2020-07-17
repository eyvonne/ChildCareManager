//
//  addChildModal.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct addChildModal: View {
    @State private var name = ""
    @State private var age = ""
    @Environment(\.managedObjectContext) var managedObjectContext
    @Binding var show_modal:Bool
    
    var body: some View {
        VStack{
            TextField("Name", text: $name)
                .padding(.all, 20)
                .border(Color.black, width: 1)
            TextField("Age (years)", text: $age)
                .padding(.all, 20)
                .border(Color.black, width: 1)
            Button(action: addKid, label: {
                Text("Add")
                    .padding(.all, 10)
            })
            
        }
    }
    
    func addKid()->Void{
        if name != "" && age != "" {
            let newKid = Child(context: self.managedObjectContext)
            newKid.setValue(name, forKey: "name")
            newKid.setValue(Float(age) ?? 0.0, forKey: "age")
            
            do {
                try self.managedObjectContext.save()
            } catch {
                print("THIS ONE RIGHT HERE")
                print(error)
            }
            self.show_modal.toggle()
        }
    }
}

struct addChildModal_Previews: PreviewProvider {
    static var previews: some View {
        addChildModal(show_modal: Binding.constant(false))
    }
}
