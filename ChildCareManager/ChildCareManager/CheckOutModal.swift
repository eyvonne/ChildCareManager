//
//  CheckOutModal.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct CheckOutModal: View {
    @Binding var kid:Child
    @Environment(\.managedObjectContext) var managedObjectContext
    var checkRequest: FetchRequest<CheckInOuts>?
    var checks:FetchedResults<CheckInOuts>{checkRequest!.wrappedValue}
    
    
    var body: some View {
        VStack{
            Text("Checking out \(kid)")
            Text("Previous checks:")
            List(){ ForEach(checks, id:\.self) {check in Text("\(check.time)")} }
                
            }
        }
    
    init(kid:Binding<Child>){
        self._kid = kid
        let checkRequest = FetchRequest<CheckInOuts>(entity: CheckInOuts.entity(), sortDescriptors: [NSSortDescriptor(key: "time", ascending: true)], predicate: NSPredicate(format: "name==%@", self.kid))
        var checks:FetchedResults<CheckInOuts>{checkRequest.wrappedValue}
        
    }
}

struct CheckOutModal_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutModal(kid: Binding.constant(Child()))
    }
}
