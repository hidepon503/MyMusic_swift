//
//  ContentView.swift
//  MyMusic
//
//  Created by 飯塚 秀幸 on 2023/12/22.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundPlayerクラスのインスタンス作成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
            //背景画像を設定する
            Image(.background)
            //背景のモディファイアを挿入
                .backgroundModifier()

            //水平にレイアウト
            HStack{
                //シンバルボタン
                Button{
                    //ボタンをタップした時のアクション
                    soundPlayer.cymbalPlay()
                } label:{
                    //画像を表示
                    Image(.cymbal)
                }
                //ギターボタン
                Button{
                    //ボタンをタップした時のアクション
                    soundPlayer.guitarPlay()
                }label: {
                    //画像を表示
                    Image(.guitar)
                }
            }
        }//ZStackここまで
    }
}

#Preview {
    ContentView()
}

