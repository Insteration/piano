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
func playPiano(_ sound: String)
}

class PianoSounds: Piano {
    let sounds: [String] = [Bundle.main.path(forResource: "c1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "c1s", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "d1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "d1s", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "e1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "f1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "f1s", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "g1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "g1s", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "a1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "a1s", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "b1", ofType: "wav", inDirectory: "data/sounds")!, Bundle.main.path(forResource: "c2", ofType: "wav", inDirectory: "data/sounds")!]
    
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
