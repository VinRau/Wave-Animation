//
//  ContentView.swift
//  Wave2 WatchKit Extension
//
//  Created by Vincenzo Raucci on 22/01/2020.
//  Copyright © 2020 Vincenzo Raucci. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var waveMoving = false
    
    var body: some View {
        
        VStack {
            
            
            
            Image("wave")
                .offset(x: waveMoving ? -155 : 50)
                 .animation(
                     Animation.linear(duration: 3)
                 .repeatForever(autoreverses: false)
                 )
                 .onAppear(){ self.waveMoving = true }
            
            Text("Just relax")
                .font(.body)
                .padding(.bottom, -20.0)
            HStack() {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Pause")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Repeat")
                }
            }
            .padding(.bottom, -20.0)
            .frame(width: CGFloat(150), height: CGFloat(50), alignment: .bottom)
            
        }
        .scaledToFit()
        .navigationBarTitle("Relax time")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
