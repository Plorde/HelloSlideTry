//
//  AppState.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine


struct AppState {
    enum viewstate{
           case keyboard // 处在键盘输入界面
           case nlp // 处在NLP输入界面
           case brainmap // 处在脑图输入界面
           case pencil // 处在Apple Pencil输入界面
           case file // 处于文档打开界面
    }
    // 是否显示键盘编辑
    var keyboardout = true
    // 是否显示nlp编辑
    var nlpout = false
    var brainmapout = false
    var pencilout = false
    
    // apply 是一个改变状态的函数 根据旧状态和action返回新的状态
    func apply(userinput:AppAction,inparser : Parser)->AppState{
        switch userinput{
        case .tokeyboard:
            return AppState(keyboardout: true, nlpout: false, brainmapout: false, pencilout: false)
        case .tonlp:
            return AppState(keyboardout: false, nlpout: true, brainmapout: false, pencilout: false)
        case .tobrainmap:
            return AppState(keyboardout: false, nlpout: false, brainmapout: true, pencilout: false)
        case .tofile:
            return AppState(keyboardout: false, nlpout: false, brainmapout: false, pencilout: false)
        case .topencil:
            return AppState(keyboardout: false, nlpout: false, brainmapout: false, pencilout: true)
        
        case .changecolor(let colorid):
            inparser.changeTemplateid(input: colorid)
            return AppState(keyboardout: self.keyboardout, nlpout: self.nlpout, brainmapout: self.brainmapout, pencilout: self.pencilout)
        case .changetemplate(let templateid):
            inparser.changeTemplateid(input: templateid)
            return AppState(keyboardout: self.keyboardout, nlpout: self.nlpout, brainmapout: self.brainmapout, pencilout: self.pencilout)
        }
    }
}

