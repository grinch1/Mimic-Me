//
//  Utils.swift
//  Mimic-Me
//
//  Created by Brenno Natal on 23/10/21.
//

import SwiftUI
import UIKit
import AVFoundation

class soundManager {
    static let instance = soundManager()
    
    var player: AVAudioPlayer?
    
    func playSound1() {
        guard let url = Bundle.main.url(forResource:  "1", withExtension: "wav") else { return }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error {
            print("player error.\(error.localizedDescription)")
        }
    }
    func playSound2() {
        guard let url = Bundle.main.url(forResource:  "2", withExtension: "wav") else { return }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error {
            print("player error.\(error.localizedDescription)")
        }
    }
    func playSound3() {
        guard let url = Bundle.main.url(forResource:  "3", withExtension: "wav") else { return }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error {
            print("player error.\(error.localizedDescription)")
        }
    }
    func playSound4() {
        guard let url = Bundle.main.url(forResource:  "4", withExtension: "wav") else { return }
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error {
            print("player error.\(error.localizedDescription)")
        }
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
