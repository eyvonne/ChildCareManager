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
    
    @State private var add_kid = false
    
    let ccname = "Earth Village"
    
    var body: some View {
        VStack{
            HStack{
                Text(ccname)
                    .font(.title)
                    .padding(.all, 10)
                Spacer()
                Button(action: {self.add_kid.toggle()}, label: {Text("Add Kid")})
                    .padding(.all, 10)
            }
            List(){
                ForEach(kids, id:\.self) {kid in checkInRow(kid: kid)}
            }
        }
        .sheet(isPresented: $add_kid, content: {addChildModal(show_modal: $add_kid)
                .environment(\.managedObjectContext, managedObjectContext) })
        
         
    }
    
    
}

struct CheckInPage_Previews: PreviewProvider {
    static var previews: some View {
        CheckInPage()
    }
}
