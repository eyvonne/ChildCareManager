//
//  CheckInPage.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct CheckInPage: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Child.getAllKids()) var kids:FetchedResults<Child>
    
    @State private var newKid:String = ""
    
    let ccname = "Earth Village"
    
    var body: some View {
        VStack{
            NavigationView{
                List(kids){
                    kid in Text(kid.name)
                }.navigationTitle(ccname)
                .navigationBarItems(trailing: Button(action: addKid, label: {Text("Add Kid")}))
            }
            
        }
    }
    
    
    
    func addKid()->Void{
        let newKid = Child(context: self.managedObjectContext)
        newKid.setValue("phil", forKey: "name")
        newKid.setValue(2.0, forKey: "age")
        
        do {
            try self.managedObjectContext.save()
        } catch {
            print(error)
        }
    }
}

struct CheckInPage_Previews: PreviewProvider {
    static var previews: some View {
        CheckInPage()
    }
}
