//
//  ContentView.swift
//  Shared
//
//  Created by Field Employee on 10/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hit me was pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
