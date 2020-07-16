//
//  ContentView.swift
//  ChildCareManager
//
//  Created by Eyvonne Geordan on 7/14/20.
//

import SwiftUI

struct ContentView: View {
    // need a state var to determine which page to show
    @State private var page = 1
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.yellow)
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $page) {
                CheckInPage().tabItem { footerButton(function: "Check In/Out") }.tag(1)
                Text("Tab Content 2").tabItem { footerButton(function: "Notes") }.tag(2)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
