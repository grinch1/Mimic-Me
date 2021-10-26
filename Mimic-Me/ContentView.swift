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
        VStack(spacing: 0){
            Text("Mimic-Me!")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            HStack(spacing: 0){
                Spacer()
                Button(action: {print("RED")}) {
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(100, corners: .topLeft)
                }
                Button(action: {print("GREEN")}) {
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(100, corners: .topRight)
                }
                
                Spacer()
            }
            .frame(height: 180)
            
            HStack(spacing: 0){
                Spacer()
                Button(action: {print("RED")}) {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(100, corners: .bottomLeft)
                }
                Button(action: {print("RED")}) {
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(100, corners: .bottomRight)
                }
                
                
                Spacer()
            }
            .frame(height: 180)
            
            Spacer()
            
            Button(action: {print("PRINT")}){
                Text("Play")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                
            }
            .frame(width: 140, height: 60)
            .padding()
            .background(Color.black)
            .padding(10)
            .border(Color.black, width: 5)
            Spacer()
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
