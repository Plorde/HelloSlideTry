//
//  SlideElement.swift
//  HelloSlideV0.01Tests
//
//  Created by 龙锐 on 2020/1/29.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
class Slide {
    // Slide 现在也只有一句话
    var slideelment : item = item()
    var bgimage : Int = 0
}

class item  : ObservableObject {
    var text:String = ""
    var font:Int = 0
    var color:Int = 0
    var width : CGFloat = 200
    var height : CGFloat = 200
}
