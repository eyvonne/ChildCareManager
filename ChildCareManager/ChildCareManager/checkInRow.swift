//
//  checkInRow.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/16/20.
//

import SwiftUI

struct checkInRow: View {
    var name:String
    var age: Float
    
    
    var body: some View {
        VStack{
            Text(name)
                .font(.headline)
            Text(String(age))
                .font(.caption)
        }
    }
}

struct checkInRow_Previews: PreviewProvider {
    static var previews: some View {
        checkInRow(name: "Phil", age: 2.0)
    }
}
