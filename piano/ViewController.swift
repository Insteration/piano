//
//  ViewController.swift
//  piano
//
//  Created by Artem Karmaz on 12/10/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    let piano = PianoSounds()
    
    @IBAction func pianoPlayButton(_ sender: UIButton) {
        guard let button = sender as? UIButton else {
            return
        }
        switch button.tag {
        case 0:
            piano.playPiano(piano.c1)
        case 1:
            piano.playPiano(piano.c1s)
        case 2:
            piano.playPiano(piano.d1)
        case 3:
            piano.playPiano(piano.d1s)
        case 4:
            piano.playPiano(piano.e1)
        case 5:
            piano.playPiano(piano.f1)
        case 6:
            piano.playPiano(piano.f1s)
        case 7:
            piano.playPiano(piano.g1)
        case 8:
            piano.playPiano(piano.g1s)
        case 9:
            piano.playPiano(piano.a1)
        case 10:
            piano.playPiano(piano.a1s)
        case 11:
            piano.playPiano(piano.b1)
        case 12:
            piano.playPiano(piano.c2)
        default:
            return
        }
    }
}
