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
        for _ in piano.sounds {
            piano.playPiano(piano.sounds[sender.tag])
        }
    }
}
