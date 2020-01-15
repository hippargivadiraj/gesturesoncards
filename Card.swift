//
//  Card.swift
//  GesturesOnCards
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct Card: View {
    
    @State private var scale: CGFloat = 1
    
    let tapped: Bool
    var body: some View {
        VStack{
            Image("Cat")
                .resizable()
            .scaleEffect(self.scale )
                .frame(width: 300, height: 300)
                .gesture(MagnificationGesture()
                    .onChanged{ value in
                        self.scale = value.magnitude
                    }
                .onEnded{ value in
                    self.scale = 1
                    }
            )
    Text("Card")
        .font(.largeTitle)
        .foregroundColor(Color.white)

        }
        .frame(minWidth: 0 , maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//            .frame(width: 400, height: 300, alignment: .center)
            .background(self.tapped ? Color.orange : Color.purple)
        .cornerRadius(30)
        
    
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
