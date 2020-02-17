//
//  N.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import SwiftUI
struct NLPEditingView: View {
   // @ObservedObject var mystore : KeyboardStore
    @EnvironmentObject var mymodel : HelloSlideDataModel
   
    var body: some View {
        HStack{
            Text("Hello NLP")
                .background(Color("nlpbackground"))
                .font(.system(size: 90))
                .frame(width:540, height:690)
            //Spacer()
            Spacer()
            SlidePresentingViewKeyboard()
            .frame(width:540, height:690)
        }
    }
}
