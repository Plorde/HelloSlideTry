//
//  BrainmapView.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import SwiftUI
struct BrainmapView: View {
   // @ObservedObject var mystore : KeyboardStore
    @EnvironmentObject var mymodel : HelloSlideDataModel

    var body: some View {
        HStack{
            Text("Hello Brainmap")
                .background(Color.green)
                .font(.system(size: 90))
                .frame(width:540, height:690)
//            }
            Spacer()
            SlidePresentingViewKeyboard()
            .frame(width:540, height:690)
        }
        
    }
}
