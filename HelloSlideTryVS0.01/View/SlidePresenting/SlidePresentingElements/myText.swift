//
//  myText.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import SwiftUI

// 根据item的内容去画文字框的view
struct myText: View {
   @EnvironmentObject var mymodel : HelloSlideDataModel
    var myitem : item
    var body: some View {
        
        // 文字框的背景图
        
        // 文字框的文字内容
        
       Text(myitem.text)
            .font(.system(size: CGFloat(myitem.font)))
           // .foregroundColor(myitem.color.bgColor)
            .frame(width: myitem.width, height:myitem.height, alignment: .bottom)
        .background(myitem.color.bgColor)
        
        
    }
}

//struct myText_Previews: PreviewProvider {
//    static var previews: some View {
//        myText(myitem: item(text: "这是一个测试", font: 20, color: 1, width: 20, height: 30))
//    }
//}
