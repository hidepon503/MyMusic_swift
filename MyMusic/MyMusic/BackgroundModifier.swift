//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by 飯塚 秀幸 on 2023/12/22.
//

import SwiftUI


extension Image {
    func backgroundModifier() -> some View{
        //画像を表示するImageのインスタンス
        self
        //リサイズする
            .resizable()
        //画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        //アスペクト比を維持して、短編基準に収まるように調整中
            .scaledToFill()
    }//backgroundModifir　ここまで
}//Imageここまで
