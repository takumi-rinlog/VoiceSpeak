//
//  ViewController.swift
//  VoiceSpeak
//
//  Created by takumi on 2019/11/13.
//  Copyright © 2019 takumi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var tfSerif: UITextField!
    
    @IBAction func btSpeak(_ sender: Any) {
        let msg = tfSerif.text!
            
            // 喋らせるための準備処理
            let su = AVSpeechUtterance(string: msg)
            
            // ロケール(言語)設定：言語コード＋国コード
            // let loc = "en-US" // 英語の場合
            let loc = "ja-JP" // 日本語の場合
            // let loc = "fr-FR"   // フランス語
            // let loc = "ru-RU"   // ロシア語
            // let loc = "de-DE"   // ドイツ語
            // let loc = "it-IT"   // イタリア語
            
            // voiceプロパティに値を入れる
            su.voice = AVSpeechSynthesisVoice(language: loc)//メソッドの呼び出し(トリガー)
            
            // rateプロパティ　読むスピード(0.0-1.0)標準0.5
            su.rate = 0.4
            
            // pitchMultiplierプロパティ　高さ設定(0.5-2.0)標準1.0
            su.pitchMultiplier = 1
            
            // 読み上げるための処理
            AVSpeechSynthesizer().speak(su)
    }
    @IBAction func voiceSpeed(_ sender: UISlider) {
    }
    
    @IBAction func voiceHeight(_ sender: UISlider) {
    }
    
    func log() {
        print("test")
    }
    
}

