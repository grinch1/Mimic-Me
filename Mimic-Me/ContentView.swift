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
                Button(action: {soundManager.instance.playSound1()}) {
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(100, corners: .topLeft)
                        .tag(1)
                }
                Button(action: {soundManager.instance.playSound2()}) {
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(100, corners: .topRight)
                        .tag(2)
                }
                
                Spacer()
            }
            .frame(height: 180)
            
            HStack(spacing: 0){
                Spacer()
                Button(action: {soundManager.instance.playSound3()}) {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(100, corners: .bottomLeft)
                        .tag(3)
                }
                Button(action: {soundManager.instance.playSound4()}) {
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(100, corners: .bottomRight)
                        .tag(4)
                }
                
                
                Spacer()
            }
            .frame(height: 180)
            
            Spacer()
            
            Button(action: {soundManager.instance.playSound()}){
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
