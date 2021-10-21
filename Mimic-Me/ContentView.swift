//
//  ContentView.swift
//  Mimic-Me
//
//  Created by Vitor Hugo Costa on 10/5/21.
//

import SwiftUI
import UIKit
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack{
        Text("Mimic-Me!")
            .font(.largeTitle)
            .bold()
            HStack{
                Rectangle()
                    .fill(.blue)
                Rectangle()
                    .fill(.orange)
                
            }
            .frame(height: 180)
            HStack{
                Rectangle()
                    .fill(.red)
                
                Rectangle()
                    .fill(.green)
                    
                
            }
            .frame(height: 180)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Play!")
                    .bold()
                    .padding()
                    .foregroundColor(.yellow)
                    .background(Color.black)
                    .cornerRadius(10.0)

            }

        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
