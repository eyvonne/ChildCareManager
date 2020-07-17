//
//  checkInRow.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct checkInRow: View {
    let name:String
    let age: Float
    
    @State var check_in = false
    @State var check_out = false
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Text(name)
                    .font(.headline)
                Text(String(format: "%.1f Years", age))
                    .font(.caption)
            }.padding(.horizontal, 20)
            .font(.title)
            Spacer()
            Spacer()
            Button(action: {self.check_in.toggle()}, label: {
                Text("Check In")
                    .padding(.all, 5)
            })
            .buttonStyle(BorderlessButtonStyle())
            .sheet(isPresented: $check_in, content:{Text("Checking in \(name)")})

            Button(action: {self.check_out.toggle()}, label: {
                Text("Check Out")
                    .padding(.all, 5)
            })
            .buttonStyle(BorderlessButtonStyle())
            .sheet(isPresented: $check_out) {
                Text("Checking out \(name)")
            }
            
            Spacer()
                
                
        }
    }
}

struct checkInRow_Previews: PreviewProvider {
    static var previews: some View {
        checkInRow(name: "Phil", age: 2.0)
    }
}
