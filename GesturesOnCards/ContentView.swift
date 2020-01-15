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
    @State private var cardDragState = CGSize.zero
    
    var body: some View {
        Card(tapped: tapped)
            .animation(.default)
        .gesture(TapGesture(count: 1)
            .onEnded({ ()  in
                self.tapped.toggle()
            }))
            .offset(x: self.cardDragState.width , y: self.cardDragState.height)
        .gesture(DragGesture()
            .onChanged( { value in
                self.cardDragState =   value.translation
            })
            .onEnded { value in
                self.cardDragState =   CGSize.zero
            }
        
        
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
