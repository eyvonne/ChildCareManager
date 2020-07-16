//
//  footerButton.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/15/20.
//

import SwiftUI

struct footerButton: View {
    
    var function:String
    
    var body: some View {
        
            VStack{
                switch function{
                case "Check In/Out":
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                case "Notes":
                    Image(systemName: "pencil.and.ellipsis.rectangle")
                default:
                    Text("No SF declared")
                }
                Text(function)
            }
            .font(Font.body.bold())
        }
    
}

struct footerButton_Previews: PreviewProvider {
    static var previews: some View {
        footerButton(function: "Check In/Out")
    }
}
