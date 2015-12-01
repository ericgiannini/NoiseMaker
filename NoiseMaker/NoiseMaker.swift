/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import AVFoundation

class NoiseMaker {
    
    private let guitarPlayer: AVAudioPlayer
    private let applausePlayer: AVAudioPlayer
    private let monsterPlayer: AVAudioPlayer
    private let bubblesPlayer: AVAudioPlayer
    
    init() {
        let url = NSBundle.mainBundle().URLForResource("guitar", withExtension: "wav")
        guitarPlayer = try! AVAudioPlayer(contentsOfURL: url!)
        let url2 = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav")
        applausePlayer = try! AVAudioPlayer(contentsOfURL: url2!)
        let url3 = NSBundle.mainBundle().URLForResource("monster", withExtension: "wav")
        monsterPlayer = try! AVAudioPlayer(contentsOfURL: url3!)
        let url4 = NSBundle.mainBundle().URLForResource("bubbles", withExtension: "wav")
        bubblesPlayer = try! AVAudioPlayer(contentsOfURL: url4!)
    }
    
    func playGuitarSound() {
        guitarPlayer.play()
    }
    
    func playApplauseSound() {
        applausePlayer.play()
    }
    
    func playMonsterSound() {
        monsterPlayer.play()
    }
    
    func playBubblesSound() {
        bubblesPlayer.play()
    }
    
}