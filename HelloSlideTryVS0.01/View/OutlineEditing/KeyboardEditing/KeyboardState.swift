//
//  KeyboardBrain.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine

// KeyboardState 定义所有 keyboard 界面的状态数据，

enum KeyboardState {
    
    // 行号和处于行的状态
    case startline(linenumber : Int)
    case inline(linenumber : Int)
    
   
    // apply是一个状态机函数， 它根据旧状态，用户的行动，确定新的状态
    func apply(inparser : Parser, thisaction : KeyboardAction)->KeyboardState{
        switch self {
        case .startline( _):
            switch thisaction {
            case .editinline(let linenumber,let newstring):
                // 这里随便写了parser的调用的函数
                inparser.chageOutline(lineid: linenumber, pageid: 0, newstring: newstring)
                inparser.drawSingleSlide()
                return .inline(linenumber: linenumber)
            default:
                inparser.drawSingleSlide()
                return .startline(linenumber: 0)
            }
        default:
            switch thisaction {
            case .deleteline(linenumber: 0):
                inparser.drawSingleSlide()
                return .startline(linenumber: 0)
            default:
                inparser.drawSingleSlide()
                return .startline(linenumber: 1)
            }
        }
    }
}
