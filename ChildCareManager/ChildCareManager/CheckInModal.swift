//
//  CheckInModal.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/18/20.
//

import SwiftUI

struct CheckInModal: View {
    var kid:Child
    @Environment(\.managedObjectContext) var managedObjectContext
    var kidRequest: FetchRequest<Child>
    var child: FetchedResults<Child>{kidRequest.wrappedValue}
    
    var body: some View {
        VStack{
            Text("Checking In \(kid.name)")
            Text("The time is \(NSDate())")
                .padding(.all, 20)
            Button(action: checkIn, label: {
                Text("Check In")
            })
        }
    }
    
    func checkIn() -> Void {
        let newCheck = CheckInOuts(context: self.managedObjectContext)
        newCheck.setValue(child, forKey: "child")
        newCheck.setValue(NSDate(), forKey: "time")
        newCheck.setValue(true, forKey: "checkIn")
        newCheck.setValue(0, forKey: "hours")
        
        do {
            try self.managedObjectContext.save()
        } catch {
            print("THIS ONE RIGHT HERE")
            print(error)
        }
    }
    
    init(kid:Child){
        self.kid = kid
        self.kidRequest = FetchRequest<Child>(entity: Child.entity(), sortDescriptors: [], predicate: NSPredicate(format: "name == %@", self.kid.name))
        
    }
}

struct CheckInModal_Previews: PreviewProvider {
    static var previews: some View {
        CheckInModal(kid: Child())
    }
}



