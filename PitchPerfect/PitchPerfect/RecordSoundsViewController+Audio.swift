//
//  RecordSoundsViewController+Audio.swift
//  PitchPerfect
//
//  Created by Lucas Stern on 18/02/2018.
//  Copyright © 2018 Suadao. All rights reserved.
//

import UIKit
import AVFoundation

extension RecordSoundsViewController: AVAudioRecorderDelegate {
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        } else {
            let alert = UIAlertController(title: "Atention", message: "Recording was not successful!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(self, animated: true, completion: nil)
        }
    }
}
