//
//  ViewController.swift
//  piano
//
//  Created by Artem Karmaz on 12/10/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let piano: Piano = PianoSounds()
    
    @IBAction func pianoPlayButton(_ sender: UIButton) {
        piano.playPiano(sender.tag)
    }
}
