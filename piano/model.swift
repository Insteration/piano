//
//  model.swift
//  piano
//
//  Created by Artem Karmaz on 12/11/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer = AVAudioPlayer()

struct PianoSounds {
    let c1 = Bundle.main.path(forResource: "c1", ofType: "wav", inDirectory: "data/sounds")
    let c1s = Bundle.main.path(forResource: "c1s", ofType: "wav", inDirectory: "data/sounds")
    let c2 = Bundle.main.path(forResource: "c2", ofType: "wav", inDirectory: "data/sounds")
    let d1 = Bundle.main.path(forResource: "d1", ofType: "wav", inDirectory: "data/sounds")
    let d1s = Bundle.main.path(forResource: "d1s", ofType: "wav", inDirectory: "data/sounds")
    let e1 = Bundle.main.path(forResource: "e1", ofType: "wav", inDirectory: "data/sounds")
    let f1 = Bundle.main.path(forResource: "f1", ofType: "wav", inDirectory: "data/sounds")
    let f1s = Bundle.main.path(forResource: "f1s", ofType: "wav", inDirectory: "data/sounds")
    let g1 = Bundle.main.path(forResource: "g1", ofType: "wav", inDirectory: "data/sounds")
    let g1s = Bundle.main.path(forResource: "g1s", ofType: "wav", inDirectory: "data/sounds")
    let a1 = Bundle.main.path(forResource: "a1", ofType: "wav", inDirectory: "data/sounds")
    let a1s = Bundle.main.path(forResource: "a1s", ofType: "wav", inDirectory: "data/sounds")
    let b1 = Bundle.main.path(forResource: "b1", ofType: "wav", inDirectory: "data/sounds")
    
    func playPiano(_ sound: String) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}
