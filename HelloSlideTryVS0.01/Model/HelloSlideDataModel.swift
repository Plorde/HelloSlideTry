//
//  HelloSlideDataModel.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine
class HelloSlideDataModel:ObservableObject{
    var myparser = Parser()
    @Published var kstore : KeyboardStore = KeyboardStore()
    @Published var nstore : NLPstore = NLPstore()
    @Published var bstore : BrainmapStore = BrainmapStore()
    @Published var pstore : PencilStore = PencilStore()
    @Published var haschanged : Bool = true
}
