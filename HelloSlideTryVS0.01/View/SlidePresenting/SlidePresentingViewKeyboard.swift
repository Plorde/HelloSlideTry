//
//  SlidePresentingView.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import SwiftUI

struct SlidePresentingViewKeyboard: View {
    @EnvironmentObject var mymodel : HelloSlideDataModel
    
    var body: some View {
        //Image(mymodel.myparser.myslide.bgimage.bgString)
        SlidePresentingContainer()
        .background(
            Image(mymodel.myparser.myslide.bgimage.bgString)
            .resizable()
            .frame(width: 540, height: 405)
            ).frame(width: 540, height: 690)
            .background(Color.gray)
       
    
        
    }
}

struct SlidePresentingView_Previews: PreviewProvider {
    static var previews: some View {
        SlidePresentingViewKeyboard().environmentObject(HelloSlideDataModel())
    }
}
//
