//
//  SlidePresentingContainer.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/5.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import SwiftUI

struct SlidePresentingContainer : View{
    
    @EnvironmentObject var mymodel : HelloSlideDataModel
  
    
    var body: some View {
        //Image(mymodel.myparser.myslide.bgimage.bgString)
        myText(myitem: mymodel.myparser.myslide.slideelment)
            .padding()
    }
}
