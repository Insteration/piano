//
//  model.swift
//  piano
//
//  Created by Artem Karmaz on 12/11/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation
import AVFoundation

protocol Piano {
    var c1: String {get}
    var c1s: String {get}
    var c2: String {get}
    var d1: String {get}
    var d1s: String {get}
    var e1: String {get}
    var f1: String {get}
    var f1s: String {get}
    var g1: String {get}
    var g1s: String {get}
    var a1: String {get}
    var a1s: String {get}
    var b1: String {get}
}

class PianoSounds: Piano {
    var c1: String = Bundle.main.path(forResource: "c1", ofType: "wav", inDirectory: "data/sounds")!
    var c1s: String = Bundle.main.path(forResource: "c1s", ofType: "wav", inDirectory: "data/sounds")!
    var c2: String = Bundle.main.path(forResource: "c2", ofType: "wav", inDirectory: "data/sounds")!
    var d1: String = Bundle.main.path(forResource: "d1", ofType: "wav", inDirectory: "data/sounds")!
    var d1s: String = Bundle.main.path(forResource: "d1s", ofType: "wav", inDirectory: "data/sounds")!
    var e1: String = Bundle.main.path(forResource: "e1", ofType: "wav", inDirectory: "data/sounds")!
    var f1: String = Bundle.main.path(forResource: "f1", ofType: "wav", inDirectory: "data/sounds")!
    var f1s: String = Bundle.main.path(forResource: "f1s", ofType: "wav", inDirectory: "data/sounds")!
    var g1: String = Bundle.main.path(forResource: "g1", ofType: "wav", inDirectory: "data/sounds")!
    var g1s: String = Bundle.main.path(forResource: "g1s", ofType: "wav", inDirectory: "data/sounds")!
    var a1: String = Bundle.main.path(forResource: "a1", ofType: "wav", inDirectory: "data/sounds")!
    var a1s: String = Bundle.main.path(forResource: "b1", ofType: "wav", inDirectory: "data/sounds")!
    let b1 = Bundle.main.path(forResource: "b1", ofType: "wav", inDirectory: "data/sounds")!
    
    private var audioPlayer = AVAudioPlayer()
    
    func playPiano(_ sound: String) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}
