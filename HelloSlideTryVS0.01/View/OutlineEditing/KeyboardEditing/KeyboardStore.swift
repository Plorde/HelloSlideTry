//
//  KeyboardDataModel.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine
  // 状态机的实现
class KeyboardStore : ObservableObject{
  
    @Published var state : KeyboardState = .startline(linenumber: 0)
    
    func dispatch(inaction : KeyboardAction, inparser : Parser){
        self.state = state.apply(inparser: inparser, thisaction: inaction)
    }
}
