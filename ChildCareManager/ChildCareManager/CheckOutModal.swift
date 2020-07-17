//
//  CheckOutModal.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct CheckOutModal: View {
    let kid:String
    @Environment(\.managedObjectContext) var managedObjectContext
    var checkRequest: FetchRequest<CheckInOuts>
    var checks:FetchedResults<CheckInOuts>{checkRequest.wrappedValue}
    
    
    var body: some View {
        VStack{
            Text("Checking out \(kid)")
            Text("Previous checks:")
            List(checks){ _ in
                
            }
        }
    }
    
    init(){
        self.checksRequest = FetchRequest<CheckInOuts>(entity: CheckInOuts.getAllKid(kid), sortDescriptors: [])
    }
}

struct CheckOutModal_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutModal()
    }
}
