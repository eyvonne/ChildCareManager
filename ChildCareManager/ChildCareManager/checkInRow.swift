//
//  checkInRow.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct checkInRow: View {
    @State var kid:Child

    
    @State var check_in = false
    @State var check_out = false
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Text(kid.name)
                    .font(.headline)
                Text(String(format: "%.1f Years", kid.age))
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
            .sheet(isPresented: $check_in, content:{CheckInModal(kid: kid)})

            Button(action: {self.check_out.toggle()}, label: {
                Text("Check Out")
                    .padding(.all, 5)
            })
            .buttonStyle(BorderlessButtonStyle())
            .sheet(isPresented: $check_out) {
                CheckOutModal(kid: $kid)
            }
            
            Spacer()
                
                
        }
    }
}

struct checkInRow_Previews: PreviewProvider {
    static var previews: some View {
        checkInRow(kid: Child())
    }
}
