//
//  ContentView.swift
//  GesturesOnCards
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapped : Bool = false
    var body: some View {
        Card(tapped: tapped)
        .gesture(TapGesture(count: 1)
            .onEnded({ ()  in
                self.tapped.toggle()
            }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
