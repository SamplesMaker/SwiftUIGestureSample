//
//  ContentView.swift
//  GestureSample
//
//  Created by MakeItSimple on 2020/02/20.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var didTap = false
    
    var body: some View {
        Text("Please Tap Me")
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .gesture(TapGesture().onEnded { self.didTap.toggle() })
        .background(didTap ? Color.yellow : Color.pink)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
