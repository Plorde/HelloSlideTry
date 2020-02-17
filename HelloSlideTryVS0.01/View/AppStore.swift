//
//  AppStore.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine

class AppStore : ObservableObject{
    @Published var appstate = AppState(keyboardout: true, nlpout: false, brainmapout: false, pencilout: false)

    //这里如果需要可以再补充
    func dispatch(myaction : AppAction,inparser : Parser){
        appstate = appstate.apply(userinput: myaction, inparser: inparser)
    }
    
}
