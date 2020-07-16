//
//  FooterBar.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/15/20.
//

import SwiftUI

struct FooterBar: View {
    @Binding var page:Int
    var body: some View {
        Text("I need text to not fail")
    }
}

struct FooterBar_Previews: PreviewProvider {
    static var previews: some View {
        FooterBar(page: Binding.constant(1))
    }
}
