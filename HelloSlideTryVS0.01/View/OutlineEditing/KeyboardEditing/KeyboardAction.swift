//
//  KeyboardAction.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
enum KeyboardAction{
    // 考虑具体的用户可以输入的情况
    
    // 编辑某行
    case editinline(linenumber : Int, input : String)
    
    // 删除（增加）某行
    case deleteline(linenumber : Int)
}
