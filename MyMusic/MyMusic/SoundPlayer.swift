//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 飯塚 秀幸 on 2023/12/22.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データの取り込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    //シンバル用プレーヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    //シンバルの音源を再生する関数
    func cymbalPlay(){
        do{
            //シンバル用のプレーヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            //シンバルの音源再生
            cymbalPlayer.play()
        }catch{
            print("シンバルで、エラーが発生しました！")
        }
    }//cymbalPlayerここまで
    
    //ギターの音源データの取り込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    //ギター用プレーヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    //ギターの音源を再生する関数
    func guitarPlay(){
        do{
            //ギター用のプレーヤーに、音源データの指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            //ギターの音源再生
            guitarPlayer.play()
        }catch{
            print("ギターで、エラーが発生しました！")
        }
    }
}

